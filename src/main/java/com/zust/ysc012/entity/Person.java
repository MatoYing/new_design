package com.zust.ysc012.entity;

import java.sql.Date;

/**
 * @Description
 * @Author Mato
 * @Date 03/09/2021 4:00 PM
 */

public class Person {
    private int number;
    private String password;
    private String name;
    private int sex;
    private Date birthday;
    private int grade;
    private String email;
    private String academy;
    private String class_grade;
    private String img_site;
    private int type;

    public Person() {
    }

    public Person(int number, String password, String name, int sex, Date birthday, int grade, String email, String academy, String class_grade, String img_site, int type) {
        this.number = number;
        this.password = password;
        this.name = name;
        this.sex = sex;
        this.birthday = birthday;
        this.grade = grade;
        this.email = email;
        this.academy = academy;
        this.class_grade = class_grade;
        this.img_site = img_site;
        this.type = type;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getSex() {
        return sex;
    }

    public void setSex(int sex) {
        this.sex = sex;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public int getGrade() {
        return grade;
    }

    public void setGrade(int grade) {
        this.grade = grade;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAcademy() {
        return academy;
    }

    public void setAcademy(String academy) {
        this.academy = academy;
    }

    public String getClass_grade() {
        return class_grade;
    }

    public void setClass_grade(String class_grade) {
        this.class_grade = class_grade;
    }

    public String getImg_site() {
        return img_site;
    }

    public void setImg_site(String img_site) {
        this.img_site = img_site;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return "person{" +
                "number=" + number +
                ", password='" + password + '\'' +
                ", name='" + name + '\'' +
                ", sex=" + sex +
                ", birthday='" + birthday + '\'' +
                ", grade=" + grade +
                ", email='" + email + '\'' +
                ", academy='" + academy + '\'' +
                ", class_grade='" + class_grade + '\'' +
                ", img_site='" + img_site + '\'' +
                ", type=" + type +
                '}';
    }
}
