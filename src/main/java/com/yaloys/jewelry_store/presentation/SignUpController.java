package com.yaloys.jewelry_store.presentation;

import ch.qos.logback.core.model.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SignUpController {
    @GetMapping("/signup")
    public String signUp (Model model)
    {
        return "signup";
    }
}
