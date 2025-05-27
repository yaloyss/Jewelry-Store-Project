package com.yaloys.jewelry_store.admin;

import org.springframework.ui.Model;
import com.yaloys.jewelry_store.security.AuthenticationInfoFacade;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminController
{
    private final AuthenticationInfoFacade authenticationInfoFacade;

    public AdminController(AuthenticationInfoFacade authenticationInfoFacade)
    {
        this.authenticationInfoFacade = authenticationInfoFacade;
    }
    
    @GetMapping("/admin")
    public String admin (Model model, Authentication auth)
    {
        model.addAttribute("isAuthenticated", authenticationInfoFacade.isAuthenticated());
        model.addAttribute("isAdmin", authenticationInfoFacade.isAdmin());
        return "admin";
    }
}
