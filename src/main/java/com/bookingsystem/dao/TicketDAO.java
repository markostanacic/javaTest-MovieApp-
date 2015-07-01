package com.bookingsystem.dao;


import com.bookingsystem.valueobjects.OrderVO;
import com.bookingsystem.valueobjects.StatisticsVO;

import java.util.List;

public interface TicketDAO {
    List<Integer> getPurchasedPlace(String nameHall,String date, String time);
    void addTicket(OrderVO order);
     void fillDayStatistics(StatisticsVO statistics);
}
