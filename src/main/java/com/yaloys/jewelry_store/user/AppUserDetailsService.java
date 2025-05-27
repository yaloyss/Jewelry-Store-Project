package com.yaloys.jewelry_store.user;

import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class AppUserDetailsService implements UserDetailsService
{
    final private AppUserRepository appUserRepository;

    public AppUserDetailsService (AppUserRepository appUserRepository)
    {
        this.appUserRepository = appUserRepository;
    }

    @Override
    public UserDetails loadUserByUsername (String userName) throws UsernameNotFoundException
    {
        var appUser = appUserRepository.findByUserName(userName);
        if (appUser.isPresent())
        {
            var appUserObj = appUser.get();
            return User.builder()
                    .username(appUserObj.getUserName())
                    .password(appUserObj.getPassword())
                    .roles(appUserObj.getRole())
                    .build();
        } else {
            throw new UsernameNotFoundException("Username not found: " + userName);
        }
    }
}
