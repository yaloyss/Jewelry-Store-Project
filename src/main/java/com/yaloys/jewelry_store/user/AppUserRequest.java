package com.yaloys.jewelry_store.user;

public record AppUserRequest (String userName, String password, String role, String fullName) {
}
