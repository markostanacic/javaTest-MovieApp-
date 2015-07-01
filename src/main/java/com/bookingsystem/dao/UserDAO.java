package com.bookingsystem.dao;

import com.bookingsystem.entity.User;


public interface UserDAO {
    String getUserRole(String email);
    boolean checkUser(String login, String pass);
    User getUser(String firstName, String lastName);
    void saveUser(User user);

}
