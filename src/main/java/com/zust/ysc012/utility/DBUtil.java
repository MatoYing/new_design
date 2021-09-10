package com.zust.ysc012.utility;

import java.sql.*;

/**
 * @Description
 * @Author Mato
 * @Date 02/09/2021 7:10 PM
 */

public class DBUtil {
    private static final String url="jdbc:mysql://localhost:3306/new_design?characterEncoding=UTF-8";
    private static final String user="root";
    private static final String password="123456";
    public static Connection con;
    public static PreparedStatement pre;
    private static ResultSet rs;

    static {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void executeUpdate(String sql, Object[] params) {
        try {
            con = DriverManager.getConnection(url, user, password);
            pre = con.prepareStatement(sql);
            for (int i = 0; i < params.length; i++) {
                pre.setObject(i + 1, params[i]);
            }
            pre.executeUpdate();
        }catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (pre != null)
                    pre.close();
                if (con != null)
                    con.close();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }
    }

    public static ResultSet executeSelect(String sql, Object[] params) {

        try {
            con = DriverManager.getConnection(url, user, password);
            pre = con.prepareStatement(sql);
            for (int i = 0; i < params.length; i++) {
                pre.setObject(i + 1, params[i]);
            }
            rs = pre.executeQuery();
            return rs;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
