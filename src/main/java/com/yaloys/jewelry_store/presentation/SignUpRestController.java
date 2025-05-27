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
        if ("ADMIN".equalsIgnoreCase(user.role())) {
            return appUserService.signUpAdmin(user);
        } else {
            return appUserService.signUpCustomer(user);
        }
    }

//    @PostMapping("/signup")
//    public AppUser signUpNewUser(@RequestBody AppUserRequest user) {
//        return appUserService.signUpCustomer(user);
//    }
//
//    @PostMapping("/signup/admin")
//    public AppUser signUpNewAdmin(@RequestBody AppUserRequest user) {
//        return appUserService.signUpAdmin(user);
//    }
}
