package com.bookingsystem.service;


import com.bookingsystem.dao.TicketDAO;
import com.bookingsystem.valueobjects.OrderVO;

import com.bookingsystem.valueobjects.StatisticsVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Service
@Transactional
public class TicketServiceImpl implements TicketService {

    @Autowired
    private TicketDAO ticketDAO;

    @Override
    public List<Integer> getPurchasedTickets(String nameHall,String date, String time) {
        return ticketDAO.getPurchasedPlace(nameHall, date, time);
    }

    @Override
    public void addTicket(OrderVO order) {
        ticketDAO.addTicket(order);
    }

    @Override
    public void fillDayStatistics(StatisticsVO statistics) {
        ticketDAO.fillDayStatistics(statistics);
    }
}
