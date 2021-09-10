package com.zust.ysc012.dao.impl;

import com.zust.ysc012.dao.IAllDao;
import com.zust.ysc012.entity.Person;
import com.zust.ysc012.entity.Subject;
import sun.security.krb5.internal.PAData;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import static com.zust.ysc012.utility.DBUtil.*;

/**
 * @Description
 * @Author Mato
 * @Date 03/09/2021 7:30 PM
 */

public class CommonDaoImpl implements IAllDao {
    public Person select_person_sql(int number) {
        //提取一个人完整的person
        String sql = "SELECT number, password, name, sex, birthday, grade, email, academy, class_grade, img_site, type\n" +
                "FROM person\n" +
                "WHERE number = ?";
        Object[] params = new Object[1];
        params[0] = number;
        ResultSet rs;
//        ArrayList<Object> person = new ArrayList<Object>();
        Person person = null;
        rs = executeSelect(sql, params);
        try {
            while (rs.next()) {
                person = new Person(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getInt(4), rs.getDate(5), rs.getInt(6), rs.getString(7),
                        rs.getString(8), rs.getString(9), rs.getString(10), rs.getInt(11));
            }
            pre.close();
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return person;
    }

    public void update_password_sql(int number, String password){
        //改密码
        String sql = "UPDATE person\n" +
                "SET password = ?\n" +
                "WHERE number = ?";
        Object[] params = new Object[2];
        params[0] = password;
        params[1] = number;
        executeUpdate(sql, params);
    }

    public void update_person_sql(int number, String password, String email){
        //注册账号
        String sql = "UPDATE person\n" +
                "SET password = ?, email = ?\n" +
                "WHERE number = ?";
        Object[] params = new Object[3];
        params[0] = password;
        params[1] = email;
        params[2] = number;
        executeUpdate(sql, params);
    }

    public ArrayList<Subject> select_subject_sql(String academy) {
        //提取一个学院所有subject
        //这里limit是关键词，要加上``，否则会报错
        String sql = "SELECT ID, `name`, introduction, number, start_date, deadline, price, location, `limit`\n" +
                "FROM subject\n" +
                "WHERE subject.number IN (SELECT person.number\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t FROM person\n" +
                "\t\t\t\t\t\t\t\t\t\t\t\t\t WHERE academy = ?)";
        Object[] params = new Object[1];
        params[0] = academy;
        ResultSet rs;
        ArrayList<Subject> subjects = new ArrayList<Subject>();
        Subject subject;
        rs = executeSelect(sql, params);
        try {
            while (rs.next()) {
                subject = new Subject(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getInt(4), rs.getDate(5), rs.getDate(6),
                        rs.getFloat(7), rs.getString(8), rs.getInt(9));
                subjects.add(subject);
            }
            pre.close();
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return subjects;
    }

    public void insert_solo_request_sql(int ID, int number, Date date) {
        //个人请求赛题
        String sql = "INSERT INTO application (ID, number, date, status)\n" +
                "VALUES (?, ?, ?, 1)";
        Object[] params = new Object[3];
        params[0] = ID;
        params[1] = number;
        params[2] = date;
        executeUpdate(sql, params);
    }

    public ArrayList<ArrayList<Object>> select_person_subject_sql(int number) {
        //选取一个人所有报的subject
        String sql = "SELECT application.ID, `subject`.`name`, person.`name`, academy, start_date, deadline, price, `status`, team\n" +
                "FROM person, application, `subject`\n" +
                "WHERE application.number = ?\n" +
                "\tAND `subject`.ID = application.ID\n" +
                "\tAND `subject`.number = person.number";
        Object[] params = new Object[1];
        params[0] = number;
        ResultSet rs;
        ArrayList<ArrayList<Object>> my_subject = new ArrayList<ArrayList<Object>>();
        ArrayList<Object> my_mini_subject;
        rs = executeSelect(sql, params);
        try {
            while (rs.next()) {
                my_mini_subject = new ArrayList<Object>();
                my_mini_subject.add(rs.getInt(1));
                my_mini_subject.add(rs.getString(2));
                //老师的姓名
                my_mini_subject.add(rs.getString(3));
                my_mini_subject.add(rs.getString(4));
                my_mini_subject.add(rs.getDate(5));
                my_mini_subject.add(rs.getDate(6));
                my_mini_subject.add(rs.getFloat(7));
                my_mini_subject.add(rs.getInt(8));
                my_mini_subject.add(rs.getInt(9));
                my_subject.add(my_mini_subject);
            }
            pre.close();
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return my_subject;
    }

    public int select_team_sql(int ID) {
        //选取赛题是团队的还是个人的
        String sql = "SELECT `limit`\n" +
                "FROM subject\n" +
                "WHERE ID = ?";
        Object[] params = new Object[1];
        params[0] = ID;
        ResultSet rs;
        int limit = 0;
        rs = executeSelect(sql, params);
        try {
            while (rs.next()) {
                limit = rs.getInt(1);
            }
            pre.close();
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return limit;
    }

    public void update_team_sql(int ID, String team) {
        //团队报名请求
        String sql = "UPDATE application\n" +
                "SET ID = ?, `status` = 1\n" +
                "WHERE team = ?";
        Object[] params = new Object[2];
        params[0] = ID;
        params[1] = team;
        executeUpdate(sql, params);
    }

    public void insert_subject_sql(int ID, String name, String introduction, int number, Date start_date, Date deadline, float price, int limit) {
        //上传赛题
        String sql = "INSERT INTO subject (ID, name, introduction, number, start_date, deadline, price, limit)\n" +
                "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        Object[] params = new Object[7];
        params[0] = ID;
        params[1] = name;
        params[2] = introduction;
        params[3] = number;
        params[4] = start_date;
        params[5] = deadline;
        params[6] = price;
        params[7] = limit;
        executeUpdate(sql, params);
    }


    public void insert_team_not_request_sql(int number, String team, Date date) {
        //加入团队
        String sql = "INSERT INTO application (number, team, date, status)\n" +
                "VALUES (?, ?, ?, 0)";
        Object[] params = new Object[3];
        params[0] = number;
        params[1] = team;
        params[2] = date;
        executeUpdate(sql, params);
    }

    public int select_team_ID_sql(String team) {
        //通过团队码找赛题ID
        String sql = "SELECT DISTINCT ID, date\n" +
                "FROM application\n" +
                "WHERE team = ?";
        Object[] params = new Object[1];
        params[0] = team;
        ResultSet rs;
        int ID = 0;
        rs = executeSelect(sql, params);
        try {
            while (rs.next()) {
                ID = rs.getInt(1);
            }
            pre.close();
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return ID;
    }

    public ArrayList<ArrayList<Object>> select_teammate_sql(String team) {
        //找团队成员
        String sql = "SELECT date, `name`, class_grade, academy, person.number, useless\n" +
                "FROM application, person\n" +
                "WHERE application.number = person.number\n" +
                "  AND team = ?";
        Object[] params = new Object[1];
        params[0] = team;
        ResultSet rs;
        ArrayList<ArrayList<Object>> teammates = new ArrayList<ArrayList<Object>>();
        ArrayList<Object> teammate;
        rs = executeSelect(sql, params);
        try {
            while (rs.next()) {
                teammate = new ArrayList<Object>();
                teammate.add(rs.getDate(1));
                teammate.add(rs.getString(2));
                teammate.add(rs.getString(3));
                teammate.add(rs.getString(4));
                teammate.add(rs.getInt(5));
                teammate.add(rs.getInt(6));
                teammates.add(teammate);
            }
            pre.close();
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return teammates;
    }

    public void update_reply_noTeam_sql(int useless, int status) {
        //团队报名请求
        String sql = "UPDATE application\n" +
                "SET `status` = ?\n" +
                "WHERE useless = ?";
        Object[] params = new Object[2];
        params[0] = status;
        params[1] = useless;
        executeUpdate(sql, params);
    }

    public void update_reply_team_sql(int team, int status) {
        //团队报名请求
        String sql = "UPDATE application\n" +
                "SET `status` = ?\n" +
                "WHERE team = ?";
        Object[] params = new Object[2];
        params[0] = status;
        params[1] = team;
        executeUpdate(sql, params);
    }

    public String select_isTeam_sql(int number) {
        //确定用户是否已经加入团队
        String sql = "SELECT team\n" +
                "FROM application\n" +
                "WHERE number = ?\n" +
                "\tAND ID IS NULL";
        Object[] params = new Object[1];
        params[0] = number;
        ResultSet rs;
        String team = null;
        rs = executeSelect(sql, params);
        try {
            while (rs.next()) {
                team = rs.getString(1);
            }
            pre.close();
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return team;
    }

    public void delete_teammate_sql(int useless) {
        //团队报名请求
        String sql = "DELETE FROM application\n" +
                "WHERE useless = ?";
        Object[] params = new Object[1];
        params[0] = useless;
        executeUpdate(sql, params);
    }
}
