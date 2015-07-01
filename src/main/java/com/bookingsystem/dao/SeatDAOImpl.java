package com.bookingsystem.dao;


import com.bookingsystem.valueobjects.OrderVO;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class SeatDAOImpl implements SeatDAO {

    @Autowired
    private SessionFactory sessionFactory;


    private Session getCurrentSession() {
        return sessionFactory.getCurrentSession();
    }


    @Override
    public void getSeats(OrderVO order) {
        SQLQuery query = getCurrentSession().createSQLQuery("SELECT seatNumber, line, price FROM seats WHERE id IN (:ids)");
        query.setParameterList("ids", order.getIds());

        List<Object[]> results = query.list();
        for (Object[] listElement : results) {

            order.getSeats().add((Integer) listElement[0]);
            order.getLines().add((Integer) listElement[1]);
            order.getPriceList().add((Integer) listElement[2]);
        }

    }




}
