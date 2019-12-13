package com.servlet.orm;

import javax.persistence.Entity;
import javax.persistence.Id;
@Entity
public class AdminTable {
    @Id
    String username;
    String email,password;

    public String getUsername() {
        return username;
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }
}
