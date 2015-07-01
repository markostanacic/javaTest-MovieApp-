package com.bookingsystem.entity;


import javax.persistence.*;

@Entity
@Table(name="timetable")
public class Timetable {

    @Id
    @Column
    @GeneratedValue
    private Integer id;

    @Column
    private String time;

    @Column
    private String date;

    @Column
    private String film;

    @Column
    private String hall;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getFilm() {
        return film;
    }

    public void setFilm(String film) {
        this.film = film;
    }

    public String getHall() {
        return hall;
    }

    public void setHall(String hall) {
        this.hall = hall;
    }
}
