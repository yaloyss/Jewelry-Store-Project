package com.yaloys.jewelry_store.security;

public interface AuthenticationInfoFacade
{
    boolean isAuthenticated();
    boolean isAdmin();
    String getUsername();
}
