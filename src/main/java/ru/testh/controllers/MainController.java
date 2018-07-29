package ru.testh.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import ru.testh.dao.interfaces.PromocodesDAO;
import ru.testh.dao.interfaces.TransactionsDAO;
import ru.testh.dao.interfaces.UsersDAO;
import ru.testh.entities.Promocodes;
import ru.testh.entities.Transactions;
import ru.testh.entities.User;
import ru.testh.services.HtmlService;
import ru.testh.services.RandomStringService;
import ru.testh.services.UserService;

import javax.inject.Inject;
import java.sql.Time;

@Controller
@SessionAttributes(value = "user")
public class MainController {

    @Autowired
    private UserService userService;

    @Autowired
    private PromocodesDAO promocodesDAO;

    @Autowired
    private UsersDAO usersDAO;

    @Autowired
    private TransactionsDAO transactionsDAO;

    @Autowired
    private HtmlService htmlService;

    @ModelAttribute
    public User createUser(){
        return new User();
    }

    @GetMapping(value = "/")
    public ModelAndView mainPage(@RequestParam(value = "error", required = false) String error,
                                 @SessionAttribute(name = "user", required = false) User user){
        ModelAndView modelAndView = new ModelAndView();
        boolean loggedIn = false;
        if (user == null){
            user = new User();
        }
        if(!userService.getAuthenticatedUserName().toLowerCase().equals("anonymoususer")){
            loggedIn = true;
            user = usersDAO.getUser(userService.getAuthenticatedUserName());
        }
        if (error != null) {
            modelAndView.addObject("error", "Invalid username or password!");
        }
        String transactions = htmlService.getTransactionsHtml(transactionsDAO.getTransactions());
        modelAndView.setViewName("main");
        modelAndView.addObject("user", user);
        modelAndView.addObject("transactions", transactions);
        modelAndView.addObject("authenticatedUserName", userService.getAuthenticatedUserName());
        modelAndView.addObject("loggedIn", loggedIn);
        return modelAndView;
    }

    @PostMapping(value = "/")
    public String createUser2(@ModelAttribute("user") User user){
        userService.createUser(user);
            return "redirect:/";
    }

    @GetMapping(value = "/registration")
    public String goToRegistration(@ModelAttribute("user") User user){
        return "registration";
    }

    @PostMapping(value = "/registration")
    public String createUser(@ModelAttribute("user") User user){
        if (userService.createUser(user))

            return "redirect:/";
        else//TODO this is not a rest method
            return "error: Couldn't create user";
    }

    @GetMapping(value = "/login")
    public ModelAndView login(@RequestParam(value = "error", required = false) String error,
                                @SessionAttribute(name = "user", required = false) User user){
        ModelAndView modelAndView = new ModelAndView();
        if (error != null) {
            modelAndView.addObject("error", "Invalid username or password!");
        }
        if (user == null) user = this.createUser();
        modelAndView.setViewName("login");
        modelAndView.addObject("user");
        return modelAndView;
    }

    @GetMapping(value = "/game")
    public ModelAndView lsdfdsn(@RequestParam(value = "error", required = false) String error,
                              @SessionAttribute(name = "user", required = false) User user){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("game");
        return modelAndView;
    }

    @PostMapping(value = "/victory")
    public void victory(@RequestBody String str,
                        @SessionAttribute (value = "user", required = false) User user){
        str += "";
        if (!userService.getAuthenticatedUserName().toLowerCase().equals("anonymoususer")){
            user = usersDAO.getUser(userService.getAuthenticatedUserName());
            if (user != null){
                user.setEmailConfirmed(true);
                user.setCoins(user.getCoins() + 200);
                usersDAO.updateUser(user);
            }
        }
    }

    @GetMapping(value = "/sendpromo")
    public ModelAndView sendPromo(@SessionAttribute(value = "user") User user){
        ModelAndView modelAndView = new ModelAndView();
        if (!userService.getAuthenticatedUserName().toLowerCase().equals("anonymoususer")){
            modelAndView.setViewName("sendPromo");
            modelAndView.addObject("loggedIn", true);
        }else{
            String promocode = RandomStringService.randomAlphaNumeric(16);
            Promocodes promocodes = new Promocodes();
            promocodes.setPromocode(promocode);
            promocodes.setExpired(false);
            promocodesDAO.save(promocodes);

            modelAndView.addObject("promocode", promocode);
            modelAndView.setViewName("sendPromo");
            modelAndView.addObject("loggedIn", false);
        }

        return modelAndView;
    }

    @PostMapping(value = "/transaction")
    @ResponseBody
    public String transaction(@RequestParam (name="priceCount", required = false) Long priceCount,
                              @RequestBody String body){
        User user;
        //Integer price = Integer.valueOf(priceCount);
        Integer price = 100;
        Transactions transactions = new Transactions();
        if(!userService.getAuthenticatedUserName().toLowerCase().equals("anonymoususer")){
            user = usersDAO.getUser(userService.getAuthenticatedUserName());
            user.setCoins(user.getCoins()-price);
            transactions.setAddition(false);
            transactions.setPrice(price);
            Time time = new Time(System.currentTimeMillis());
            transactions.setDate(time);
            transactionsDAO.saveTr(transactions);
            usersDAO.updateUser(user);
            return htmlService.getTransactionHtml(transactions);
        }

        return "fail";
    }
}
