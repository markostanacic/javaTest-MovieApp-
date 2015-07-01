package com.bookingsystem.controller;

import com.bookingsystem.entity.User;
import com.bookingsystem.entity.enums.Role;
import com.bookingsystem.service.UserService;


import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.social.connect.ConnectionRepository;
import org.springframework.social.facebook.api.Facebook;
import org.springframework.social.twitter.api.Twitter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;


@Controller
@SessionAttributes("user")
@RequestMapping(value="/user")
public class UserController {

    private static final Logger log = Logger.getLogger(UserController.class);

    @Autowired
    private Twitter twitter;

    @Autowired
    private Facebook facebook;

    @Autowired
    private ConnectionRepository connectionRepository;

    @Autowired
    private UserService userService;


    @ModelAttribute("user")
    public User populateUser() {
        return new User();
    }



    @RequestMapping(value ="/auth", method=RequestMethod.GET)
    public ModelAndView loginPage(HttpSession session) {
        ModelAndView mav = new ModelAndView("login");
        String sid = session.getId();
        mav.addObject("sid", sid);
        mav.addObject("user", new User());
        return mav;
    }


    @RequestMapping(value="/auth", method=RequestMethod.POST)
    public String userAuth(@Valid @ModelAttribute("user") User user, BindingResult result,
                                 Model model) {

        if (result.hasErrors()) {
            log.info("unsuccessful login attempt");
            return "login";
        }

        if(userService.checkUser(user.getEmail(), user.getPassword())) {
            log.info("user is logged: " + user.getEmail());
            user.setIsAuthenticated(true);
            user.setRole(Role.valueOf(userService.getRole(user.getEmail())));
            return "redirect:/index.html";
        } else{
             model.addAttribute("message","Invalid email of password");
             return "login";
        }

    }


    @RequestMapping(value = "/authWithTwitter", method=RequestMethod.GET)
    public ModelAndView helloTwitter() {
        if (connectionRepository.findPrimaryConnection(Twitter.class) == null) {
            return new ModelAndView("redirect:/connect/twitter");
        }

        String fullName =  twitter.userOperations().getUserProfile().getName();
        log.info("new user auth-ed due to twitter: " + fullName);

        String[] names = fullName.split(" ");
        User user =  userService.getUser(names[0], names[1]);

        if(user != null) {
            user.setIsAuthenticated(true);
            return new ModelAndView("redirect:/index").addObject("user", user);
        }
        return new ModelAndView("redirect:/index");
    }

    @RequestMapping(value = "/authWithFacebook", method=RequestMethod.GET)
    public ModelAndView helloFacebook() {
        if (connectionRepository.findPrimaryConnection(Facebook.class) == null) {
            return new ModelAndView("redirect:/connect/facebook");
        }

        String fullName =  facebook.userOperations().getUserProfile().getName();
        log.info("new user auth-ed due to facebook: " + fullName);

        String[] names = fullName.split(" ");
        User user =  userService.getUser(names[0], names[1]);

        if(user != null) {
            user.setIsAuthenticated(true);
            return new ModelAndView("redirect:/index").addObject("user", user);
        }
        return new ModelAndView("redirect:/index");
    }


    @RequestMapping(value = "logout", method = RequestMethod.GET)
    public ModelAndView logOut(@ModelAttribute ("user") User user) {
        user.setIsAuthenticated(false);
        log.info("user is logout: " + user.getEmail());
        return new ModelAndView("redirect:/index");
    }


    @RequestMapping(value="/create", method=RequestMethod.GET)
    public ModelAndView newUserPage() {
        ModelAndView mav = new ModelAndView("register-form");
        mav.addObject("user", new User());
        return mav;
    }

    @RequestMapping(value="/create", method=RequestMethod.POST)
    public ModelAndView createNewUser(@Valid @ModelAttribute("user")  User user,
                                      BindingResult result,
                                      final RedirectAttributes redirectAttributes) {

        if (result.hasErrors())
            return new ModelAndView("register-form");

        user.setRole(Role.ROLE_USER);
        log.info("new user: " + user.getEmail());
        userService.addUser(user);

        ModelAndView mav = new ModelAndView();
        String message = "Welcome! Account was successfully created";
        mav.setViewName("redirect:/user/auth.html");
        redirectAttributes.addFlashAttribute("message", message);
        return mav;
    }


}
