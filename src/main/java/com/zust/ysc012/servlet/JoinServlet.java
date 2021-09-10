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
import java.sql.Date;

/**
 * @Description
 * @Author Mato
 * @Date 08/09/2021 7:43 AM
 */

@WebServlet(urlPatterns = "/joinServlet")
public class JoinServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(true);
        int number = (int) session.getAttribute("number");
        String team_code = req.getParameter("team_code");
        long time = System.currentTimeMillis();
        Date date = new Date(time);
        IAllDao commonDao = new CommonDaoImpl();
//        int ID = commonDao.select_team_ID_sql(team_code);
        commonDao.insert_team_not_request_sql(number, team_code, date);
        resp.sendRedirect("/view/student/stu_team.jsp");
    }
}
