package com.zust.ysc012.servlet;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.zust.ysc012.dao.IAllDao;
import com.zust.ysc012.dao.impl.CommonDaoImpl;
import com.zust.ysc012.entity.Person;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

/**
 * @Description
 * @Author Mato
 * @Date 03/09/2021 7:22 PM
 */

@WebServlet(urlPatterns = "/loginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=utf-8");
        int number = Integer.parseInt(req.getParameter("number"));
        String password = req.getParameter("password");
        String verification = req.getParameter("verification");
        int i;
        HttpSession session = req.getSession(true);
        String checkCode = (String) session.getAttribute("checkCode");
        IAllDao commonDao = new CommonDaoImpl();
        Person person = commonDao.select_person_sql(number);
//        ObjectMapper mapper = new ObjectMapper();
        PrintWriter out = resp.getWriter();
//        String json = mapper.writeValueAsString(person);
        System.out.println(person);
        if (person != null && !person.getEmail().equals("")) {
            String real_password = person.getPassword();
            int type = person.getType();
            if (checkCode == null) {
                if (password.equals(real_password)) {
                    session.setAttribute("type", type);
                    //因为使用的是ajax所以无法跳转
//                    req.getRequestDispatcher("/WEB-INF/common/home.jsp").forward(req,resp);
                    i = 3;
                    session.setAttribute("person", person);
                    session.setAttribute("number", number);
                } else {
                    System.out.println(11111);
                    i = 1;
                }
            } else {
                if (!password.equals(real_password)) {
                    System.out.println(22222);
                    i = 1;
                } else if (!verification.equals(checkCode)) {
                    i =2;
                } else {
                    session.setAttribute("type", type);
//                    req.getRequestDispatcher("/WEB-INF/home.jsp").forward(req,resp);
                    i = 3;
                    session.setAttribute("person", person);
                    session.setAttribute("number", number);
                }
            }
        } else {

            i = 0;
        }
        System.out.println(i);
        //别用write
        out.print(i);
        out.flush();
        out.close();
    }
}
