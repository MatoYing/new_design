package com.zust.ysc012.entity;

import java.sql.Date;

/**
 * @Description
 * @Author Mato
 * @Date 03/09/2021 4:10 PM
 */

public class Subject {
    private int ID;
    private String name;
    private String introduction;
    private int number;
    private Date start_date;
    private Date deadline;
    private float price;
    private String location;
    private int limit;

    public Subject() {
    }

    public Subject(int ID, String name, String introduction, int number, Date start_date, Date deadline, float price, String location, int limit) {
        this.ID = ID;
        this.name = name;
        this.introduction = introduction;
        this.number = number;
        this.start_date = start_date;
        this.deadline = deadline;
        this.price = price;
        this.location = location;
        this.limit = limit;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public Date getStart_date() {
        return start_date;
    }

    public void setStart_date(Date start_date) {
        this.start_date = start_date;
    }

    public Date getDeadline() {
        return deadline;
    }

    public void setDeadline(Date deadline) {
        this.deadline = deadline;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public int getLimit() {
        return limit;
    }

    public void setLimit(int limit) {
        this.limit = limit;
    }

    @Override
    public String toString() {
        return "Subject{" +
                "ID=" + ID +
                ", name='" + name + '\'' +
                ", introduction='" + introduction + '\'' +
                ", number=" + number +
                ", start_date=" + start_date +
                ", deadline=" + deadline +
                ", price=" + price +
                ", location='" + location + '\'' +
                ", limit=" + limit +
                '}';
    }
}
