package com.bookingsystem.service;

import com.bookingsystem.dao.TimetableDAO;
import com.bookingsystem.valueobjects.OrderVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Service
@Transactional
public class TimetableServiceImpl implements TimetableService {

    @Autowired
    private TimetableDAO timetableDAO;


    @Override
    public List<String> getSchedule(String filmName, String date) {
        return timetableDAO.getFilmSchedule(filmName, date);
    }

    @Override
    public void setFilmData(OrderVO order) {
        timetableDAO.readFilmData(order);
    }
}
