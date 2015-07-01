package com.bookingsystem.dao;

import com.bookingsystem.entity.User;
import org.hibernate.Query;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import java.util.List;


@Repository
public class UserDAOImpl implements UserDAO {

    @Autowired
    private SessionFactory sessionFactory;


    private Session getCurrentSession() {
        return sessionFactory.getCurrentSession();
    }


    @Override
    public String getUserRole(String email) {
        String role = "";

        SQLQuery query = getCurrentSession().createSQLQuery("SELECT role FROM users WHERE email = :email");
        query.setParameter("email", email);
        List<Object[]> result = query.list();

        for(Object element : result) {
            role = (String) element;
        }
        return role;
    }

    @Override
    @SuppressWarnings("unchecked")
    public boolean checkUser(String email, String pass) {
        List<User> userList;

        Query query = getCurrentSession().createQuery("from User u where u.email = :email");
        query.setParameter("email", email);
        userList = query.list();
        if (userList.size() > 0) {
            User user = userList.get(0);
            if(user.getPassword().equals(pass)) {
                return true;
            }
        }
          return false;
    }

    @Override
    public User getUser(String firstName, String lastName) {
        List<User> userList;

        Query query = getCurrentSession()
                .createQuery("from User u where u.firstName = :firstName and u.lastName = :lastName");

        query.setParameter("firstName", firstName);
        query.setParameter("lastName", lastName);
        userList = query.list();
        if(userList.size() > 0) {
            return userList.get(0);
        } else
            return null;

    }


    @Override
    public void saveUser(User user) {
        getCurrentSession().save(user);
    }





}
