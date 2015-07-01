package com.bookingsystem.service;


import com.bookingsystem.valueobjects.OrderVO;

import java.util.List;


public interface TimetableService {
    List<String> getSchedule(String filmName, String date);
    void setFilmData(OrderVO order);
}
