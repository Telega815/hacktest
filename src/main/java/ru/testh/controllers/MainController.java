package ru.testh.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import ru.testh.entities.User;
import ru.testh.services.UserService;

import javax.inject.Inject;

@Controller
@SessionAttributes(value = "user")
public class MainController {

    @Autowired
    private UserService userService;


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
        }
        if (error != null) {
            modelAndView.addObject("error", "Invalid username or password!");
        }
        modelAndView.setViewName("main");
        modelAndView.addObject("user", user);
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
        if (user != null && !userService.getAuthenticatedUserName().toLowerCase().equals("anonymoususer")){
            user.setEmailConfirmed(true);
        }
    }
}
