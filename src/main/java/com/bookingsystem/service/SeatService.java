package com.bookingsystem.service;


import com.bookingsystem.valueobjects.OrderVO;


public interface SeatService {
    void takeSeats(OrderVO order);
}
