package org.munilvc.myspringwebsecurityapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    @RequestMapping("/")
    public String showLoginForm(Model model) {
        return "home";
    }

    @RequestMapping("/home")
    public String home(Model model) {
        return "home";
    }
}
