package com.bookingsystem.dao;


import com.bookingsystem.valueobjects.OrderVO;

import java.util.List;

public interface TimetableDAO {
    List<String> getFilmSchedule(String filmName, String date);
    void readFilmData(OrderVO order);
}
