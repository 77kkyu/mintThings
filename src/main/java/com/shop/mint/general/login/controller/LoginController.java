package com.shop.mint.general.login.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {

    @RequestMapping(value="/loginForm", method = {RequestMethod.GET, RequestMethod.POST})
    public String loginFrom() {

        return "login/login";
    }

}
