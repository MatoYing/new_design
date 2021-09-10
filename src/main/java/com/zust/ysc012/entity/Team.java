package com.zust.ysc012.entity;

/**
 * @Description
 * @Author Mato
 * @Date 03/09/2021 4:13 PM
 */

public class Team {
    private int number;

    public Team() {
    }

    public Team(int number) {
        this.number = number;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    @Override
    public String toString() {
        return "team{" +
                "number=" + number +
                '}';
    }
}
