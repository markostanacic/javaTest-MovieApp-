package com.bookingsystem.service;

import com.bookingsystem.dao.SeatDAO;
import com.bookingsystem.valueobjects.OrderVO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
@Transactional
public class SeatServiceImpl implements SeatService {

    @Autowired
    private SeatDAO seatDAO;


    @Override
    public void takeSeats(OrderVO order) {
        seatDAO.getSeats(order);
    }
}
