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
    public ModelAndView mainPage(@SessionAttribute(name = "user", required = false) User user){
        ModelAndView modelAndView = new ModelAndView();
        boolean loggedIn = false;
        if (user == null){
            user = new User();
        }
        if(!userService.getAuthenticatedUserName().toLowerCase().equals("anonymoususer")){
            loggedIn = true;
        }
        modelAndView.setViewName("main");
        modelAndView.addObject("user", user);
        modelAndView.addObject("loggedIn", loggedIn);
        return modelAndView;
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

}
