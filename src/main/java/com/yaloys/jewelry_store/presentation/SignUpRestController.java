package com.yaloys.jewelry_store.presentation;

import com.yaloys.jewelry_store.user.AppUser;
import com.yaloys.jewelry_store.user.AppUserService;
import com.yaloys.jewelry_store.user.AppUserRequest;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api")
public class SignUpRestController {

    private final AppUserService appUserService;

    public SignUpRestController(AppUserService appUserService) {
        this.appUserService = appUserService;
    }

    @PostMapping("/signup")
    public AppUser signUpNewUser(@RequestBody AppUserRequest user) {
        System.out.println("Received sign-up for: " + user.userName());
        return appUserService.signUp(user);
    }
}
