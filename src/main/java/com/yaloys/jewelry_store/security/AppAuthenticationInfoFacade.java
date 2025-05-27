package com.yaloys.jewelry_store.security;

import org.springframework.stereotype.Component;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;


@Component
public class AppAuthenticationInfoFacade implements AuthenticationInfoFacade
{
    @Override
    public boolean isAuthenticated() {
        var auth =  getAuthentication();
        if(isNotAnonymousAuthentication(auth))
        {
            return auth.isAuthenticated();
        }
        return false;
    }

    @Override
    public boolean isAdmin() {
        var auth = getAuthentication();
        if(isNotAnonymousAuthentication(auth))
        {
            return auth.getAuthorities()
                    .stream()
                    .anyMatch(grantedAuthority -> grantedAuthority.getAuthority().contains(Role.ADMIN.name()));
        }
        return false;
    }

    @Override
    public String getUsername() {
        var auth = getAuthentication();
        if(isNotAnonymousAuthentication(auth))
        {
            return auth.getName();
        }
        return "";
    }

    private Authentication getAuthentication() {
        return SecurityContextHolder.getContext().getAuthentication();
    }

    private boolean isNotAnonymousAuthentication(Authentication authentication) {
        return !(authentication instanceof AnonymousAuthenticationToken);
    }
}
