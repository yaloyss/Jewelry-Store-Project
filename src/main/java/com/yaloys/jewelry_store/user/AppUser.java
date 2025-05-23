package com.yaloys.jewelry_store.user;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity
@Table(name = "app_user")
@Getter
@Setter
@ToString
public class AppUser {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column (name = "userName")
    private String userName;

    @Column (name = "password")
    private String password;

    @Column (name = "role")
    private String role;

    @Column (name = "fullName")
    private String fullName;

}
