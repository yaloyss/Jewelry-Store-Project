package com.yaloys.jewelry_store.customer;

import com.yaloys.jewelry_store.data.ProductRepository;
import com.yaloys.jewelry_store.security.AuthenticationInfoFacade;
import com.yaloys.jewelry_store.user.AppUserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CustomerController {

    private final AppUserService appUserService;

    private final AuthenticationInfoFacade authenticationInfoFacade;

    private final ProductRepository productRepository;

    public CustomerController(AppUserService appUserService, AuthenticationInfoFacade authenticationInfoFacade, ProductRepository productRepository) {
        this.appUserService = appUserService;
        this.authenticationInfoFacade = authenticationInfoFacade;
        this.productRepository = productRepository;
    }

    @GetMapping("/customer")
    public String customer (Model model)
    {
        model.addAttribute("isAuthenticated", authenticationInfoFacade.isAuthenticated());
        model.addAttribute("isAdmin", authenticationInfoFacade.isAdmin());
        model.addAttribute("products", productRepository.findAll());
        return "customer";
    }

}
