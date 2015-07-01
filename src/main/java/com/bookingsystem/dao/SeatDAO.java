package com.bookingsystem.dao;


import com.bookingsystem.valueobjects.OrderVO;

public interface SeatDAO {
    void getSeats(OrderVO order);
}
