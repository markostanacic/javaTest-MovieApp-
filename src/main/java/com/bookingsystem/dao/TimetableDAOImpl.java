package com.bookingsystem.dao;


import com.bookingsystem.valueobjects.OrderVO;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class TimetableDAOImpl implements TimetableDAO {


    @Autowired
    private SessionFactory sessionFactory;


    private Session getCurrentSession() {
        return sessionFactory.getCurrentSession();
    }


    @SuppressWarnings("unchecked")
	@Override
    public List<String> getFilmSchedule(String filmName, String date) {
        List<String> schedule  = new ArrayList<>();
        SQLQuery query = getCurrentSession().createSQLQuery
                ("SELECT time FROM timetable WHERE film = :film and date = :date");
        query.setParameter("film", filmName);
        query.setParameter("date", date);
        List<Object[]> result = query.list();

        for(Object element : result) {
            schedule.add((String) element);
        }
        return schedule;
    }

    @Override
    public void readFilmData(OrderVO order) {
        SQLQuery query = getCurrentSession().createSQLQuery
                ("SELECT film, hall FROM timetable WHERE time = :time and date = :date");
        query.setParameter("time",order.getShowtime());
        query.setParameter("date", order.getDate());
        List<Object[]> result = query.list();

        for(Object[] elements : result ) {
            order.setFilm((String) elements[0]);
            order.setHall((String) elements[1]);
        }

    }
}
