package com.bookingsystem.service;


import com.bookingsystem.valueobjects.OrderVO;
import com.bookingsystem.valueobjects.StatisticsVO;

import java.util.List;

public interface TicketService {
    List<Integer> getPurchasedTickets(String nameHall, String date, String time);
    void addTicket(OrderVO order);
    void fillDayStatistics(StatisticsVO statistics);
}
