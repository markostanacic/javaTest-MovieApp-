package com.bookingsystem.service;

import com.bookingsystem.dao.UserDAO;
import com.bookingsystem.entity.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;




@Service
@Transactional
public class UserServiceImpl implements UserService {


    @Autowired
    private UserDAO userDAO;


    @Override
    public String getRole(String email) {
        return userDAO.getUserRole(email);
    }

    @Override
    public boolean checkUser(String login, String pass) {
        return  userDAO.checkUser(login, pass);
    }

    @Override
    public User getUser(String firstName, String lastName) {
        return userDAO.getUser(firstName, lastName);
    }


    @Override
    public void addUser(User user) {
        userDAO.saveUser(user);
    }


}
