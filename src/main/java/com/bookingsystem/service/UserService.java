package com.bookingsystem.service;


import com.bookingsystem.entity.User;


public interface UserService {
    String getRole(String email);
    boolean checkUser(String login, String pass);
    User getUser(String firstName, String lastName);
    void addUser(User user);

}
