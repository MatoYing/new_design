package com.zust.ysc012.dao;

import com.zust.ysc012.entity.Person;
import com.zust.ysc012.entity.Subject;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import static com.zust.ysc012.utility.DBUtil.*;
import static com.zust.ysc012.utility.DBUtil.con;

/**
 * @Description
 * @Author Mato
 * @Date 03/09/2021 12:01 AM
 */

//接口的方法默认就是public abstract
//变量默认就是public static final
public interface IAllDao {
    public Person select_person_sql(int number);
    public void update_password_sql(int number, String password);
    public void update_person_sql(int number, String password, String email);
    public ArrayList<Subject> select_subject_sql(String academy);
    public void insert_solo_request_sql(int ID, int number, Date date);
    public ArrayList<ArrayList<Object>> select_person_subject_sql(int number);
//    public ArrayList<ArrayList<Object>> select_person_subject_sql(int number, int limit);
    public int select_team_sql(int ID);
    public void update_team_sql(int ID, String team);
    public void insert_subject_sql(int ID, String name, String introduction, int number, Date start_date, Date deadline, float price, int limit);
    public void insert_team_not_request_sql(int number, String team, Date date);
    public int select_team_ID_sql(String team);
    public void update_reply_noTeam_sql(int useless, int status);
    public void update_reply_team_sql(int team, int status);
    public String select_isTeam_sql(int number);
    public ArrayList<ArrayList<Object>> select_teammate_sql(String team);
    public void delete_teammate_sql(int useless);
    public String select_teacher_name_sql(int number);
    public ArrayList<String> select_team_ID_exist_sql();
    public ArrayList<ArrayList<Object>> select_person_subject_sql2(int number);
    public ArrayList<ArrayList<Object>> select_person_subject_sql3(int number);
    public int select_max_ID_sql();
    public ArrayList<Subject> select_one_subject_sql(int number);
    public ArrayList<Person> select_get_number_sql(int ID);
    public Subject select_onlyOne_subject_sql(int ID);
    public ArrayList<Subject> select_subject_sql4();
    public String select_academy_sql(int number);
}
