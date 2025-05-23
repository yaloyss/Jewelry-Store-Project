package com.yaloys.jewelry_store.presentation;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SignUpController {

    @GetMapping("/signup")
    public String signupPage() {
        return "signup";
    }
}
