package com.zust.ysc012.servlet;

import com.zust.ysc012.dao.IAllDao;
import com.zust.ysc012.dao.impl.CommonDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @Description
 * @Author Mato
 * @Date 10/09/2021 5:59 PM
 */

@WebServlet(urlPatterns = "/delTeammateServlet")
public class DelTeammateServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int useless = Integer.parseInt(req.getParameter("useless"));
        IAllDao commonDao = new CommonDaoImpl();
        commonDao.delete_teammate_sql(useless);
        resp.sendRedirect("/view/student/stu_team.jsp");
    }
}
