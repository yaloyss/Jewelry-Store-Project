package com.yaloys.jewelry_store.security;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;
import jakarta.servlet.ServletException;
import java.io.IOException;

public class AuthenticationSuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler
{
    @Override
    public void onAuthenticationSuccess (HttpServletRequest request, HttpServletResponse response, Authentication authentication)
                                        throws ServletException, IOException {
        boolean isAdmin = authentication.getAuthorities().stream()
                .anyMatch(grantedAuthority -> grantedAuthority.getAuthority().contains(Role.ADMIN.name()));
        if (isAdmin) {
            setDefaultTargetUrl("/admin");
        } else {
            setDefaultTargetUrl("/customer");
        }
        super.onAuthenticationSuccess(request, response, authentication);
    }
}
