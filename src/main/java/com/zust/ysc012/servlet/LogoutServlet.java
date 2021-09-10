package com.zust.ysc012.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.SQLException;

/**
 * @Description
 * @Author Mato
 * @Date 07/09/2021 8:48 AM
 */

@WebServlet(urlPatterns = "/logoutServlet")
public class LogoutServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(true);
        session.invalidate();
        resp.sendRedirect("index.jsp");
    }
}
