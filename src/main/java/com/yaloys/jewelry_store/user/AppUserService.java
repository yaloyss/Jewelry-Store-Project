package com.yaloys.jewelry_store.user;

import com.yaloys.jewelry_store.security.Role;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class AppUserService {

    private final AppUserRepository appUserRepository;
    private final PasswordEncoder passwordEncoder;

    public AppUserService(AppUserRepository userRepository, PasswordEncoder passwordEncoder) {
        this.appUserRepository = userRepository;
        this.passwordEncoder = passwordEncoder;
    }

    public AppUser signUpCustomer(AppUserRequest appUserRequest) {
        return appUserRepository.save(mapAppUserRequestToEntity(appUserRequest, Role.CUSTOMER));
    }

    public AppUser signUpAdmin(AppUserRequest appUserRequest) {
        return appUserRepository.save(mapAppUserRequestToEntity(appUserRequest, Role.ADMIN));
    }

    public AppUser mapAppUserRequestToEntity(AppUserRequest appUserRequest, Role role) {
        AppUser user = new AppUser();
        user.setFullName(appUserRequest.fullName());
        user.setUserName(appUserRequest.userName());
        user.setPassword(passwordEncoder.encode(appUserRequest.password()));
        user.setRole(role.name());
        return user;
    }
}
