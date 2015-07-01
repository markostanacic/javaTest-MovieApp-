package com.bookingsystem.dao;


import com.bookingsystem.entity.Ticket;
import com.bookingsystem.valueobjects.OrderVO;
import com.bookingsystem.valueobjects.StatisticsVO;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;


@Repository
public class TicketDAOImpl implements TicketDAO{


    @Autowired
    private SessionFactory sessionFactory;


    private Session getCurrentSession() {
        return sessionFactory.getCurrentSession();
    }

    @Override
    public List<Integer> getPurchasedPlace(String nameHall,String date, String time) {
        List<Integer> listElements = new ArrayList<>();

        SQLQuery query = getCurrentSession().createSQLQuery
                ("SELECT seatId FROM tickets WHERE hall = :hall and date = :date and time = :time");
        query.setParameter("hall", nameHall);
        query.setParameter("date", date);
        query.setParameter("time", time);
        List<Object[]> result = query.list();

        for(Object element : result) {
            listElements.add((Integer) element);
        }
        return listElements;
    }

    @Override
    public void addTicket(OrderVO order) {

        for(int k = 0; k < order.getSeats().size(); k++) {

            Ticket ticket = new Ticket();
            ticket.setSeatId(order.getIds().get(k));
            ticket.setHall(order.getHall());
            ticket.setFilmName(order.getFilm());
            ticket.setDate(order.getDate());
            ticket.setTime(order.getShowtime());
            ticket.setSeatNumber(order.getSeats().get(k));
            ticket.setLine(order.getLines().get(k));
            ticket.setPrice(order.getPriceList().get(k));
            ticket.setOrderId(order.getId());

            if(getCurrentSession().contains(ticket))
                continue;

            getCurrentSession().save(ticket);

        }

    }

    @Override
    public void fillDayStatistics(StatisticsVO statistics) {
        SQLQuery query = getCurrentSession().createSQLQuery
                ("SELECT price*count(price), time, filmName FROM  tickets " +
                        "WHERE date = :date GROUP BY  filmName, time");

        query.setParameter("date", statistics.getDate());
        List<Object[]> result = query.list();

        for(Object[] elements : result) {
            List<String> row = new ArrayList<>();
            row.add(elements[0].toString());
            row.add(elements[1].toString());
            row.add(elements[2].toString());
            statistics.getRows().add(row);

        }

        statistics.setFilled(true);

    }



}
