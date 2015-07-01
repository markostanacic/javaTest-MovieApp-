package com.bookingsystem.entity;


import javax.persistence.*;

@Entity
@Table(name="seats")
public class Seat {

    @Id
    @Column
    @GeneratedValue
    private Integer id;

    @Column
    private Integer seatNumber;

    @Column
    private Integer line;

    @Column
    private Integer price;



    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getSeatNumber() {
        return seatNumber;
    }

    public void setSeatNumber(Integer seatNumber) {
        this.seatNumber = seatNumber;
    }

    public Integer getLine() {
        return line;
    }

    public void setLine(Integer line) {
        this.line = line;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

}
