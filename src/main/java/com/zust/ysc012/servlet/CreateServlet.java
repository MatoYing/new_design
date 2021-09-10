package com.zust.ysc012.servlet;

import com.zust.ysc012.dao.IAllDao;
import com.zust.ysc012.dao.impl.CommonDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;

/**
 * @Description
 * @Author Mato
 * @Date 08/09/2021 7:42 AM
 */

@WebServlet(urlPatterns = "/createServlet")
public class CreateServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String a1 = String.valueOf((int) (Math.random() * 100000));
        String a2 = String.valueOf((int) (Math.random() * 100000));
        String a = a1 + a2;
        HttpSession session = req.getSession(true);
        int number = (int) session.getAttribute("number");
        long time = System.currentTimeMillis();
        Date date = new Date(time);
        IAllDao commonDao = new CommonDaoImpl();
        commonDao.insert_team_not_request_sql(number, a, date);
        resp.sendRedirect("/view/student/stu_team.jsp");
    }
}
