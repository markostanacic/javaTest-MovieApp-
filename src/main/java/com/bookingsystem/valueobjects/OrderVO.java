package com.bookingsystem.valueobjects;


import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

public class OrderVO {

    private static AtomicInteger uniqueId = new AtomicInteger();

    private final int id;

    private String showtime;

    private String hall;

    private String film;

    private String date;

    private List<Integer> seats = new ArrayList<>();

    private List<Integer> lines = new ArrayList<>();

    private List<Integer> priceList = new ArrayList<>();

    private List<Integer> ids = new ArrayList<>();

    private boolean paid;


    public OrderVO() { id = uniqueId.getAndIncrement(); }



    public List<Integer> getSeats() {
        return seats;
    }

    public void setSeats(List<Integer> seats) {
        this.seats = seats;
    }

    public String getShowtime() {
        return showtime;
    }

    public void setShowtime(String showtime) {
        this.showtime = showtime;
    }

    public List<Integer> getLines() {
        return lines;
    }

    public void setLines(List<Integer> lines) {
        this.lines = lines;
    }

    public List<Integer> getPriceList() {
        return priceList;
    }

    public void setPriceList(List<Integer> priceList) {
        this.priceList = priceList;
    }

    public List<Integer> getIds() {
        return ids;
    }

    public void setIds(List<Integer> ids) {
        this.ids = ids;
    }


    public boolean isPaid() {
        return paid;
    }

    public void setPaid(boolean paid) {
        this.paid = paid;
    }

    public String getHall() {
        return hall;
    }

    public void setHall(String hall) {
        this.hall = hall;
    }

    public String getFilm() {
        return film;
    }

    public void setFilm(String film) {
        this.film = film;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getId() {
        return id;
    }
}
