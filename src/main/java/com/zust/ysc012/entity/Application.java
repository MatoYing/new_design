package com.zust.ysc012.entity;

import java.sql.Date;

/**
 * @Description
 * @Author Mato
 * @Date 03/09/2021 4:14 PM
 */

public class Application {
    private int ID;
    private int number;
    private Date date;
    private int team;
    private int status;

    public Application() {
    }

    public Application(int ID, int number, Date date, int team, int status) {
        this.ID = ID;
        this.number = number;
        this.date = date;
        this.team = team;
        this.status = status;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getTeam() {
        return team;
    }

    public void setTeam(int team) {
        this.team = team;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "application{" +
                "ID=" + ID +
                ", number=" + number +
                ", date=" + date +
                ", team=" + team +
                ", status=" + status +
                '}';
    }
}
