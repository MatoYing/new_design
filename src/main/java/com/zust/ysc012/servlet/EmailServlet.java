package com.zust.ysc012.servlet;

import com.zust.ysc012.dao.IAllDao;
import com.zust.ysc012.dao.impl.CommonDaoImpl;
import com.zust.ysc012.entity.Person;
import com.zust.ysc012.service.IAllService;
import com.zust.ysc012.service.impl.CommonServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * @Description
 * @Author Mato
 * @Date 05/09/2021 12:20 AM
 */

@WebServlet(urlPatterns = "/emailServlet")
public class EmailServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String b = req.getParameter("b");
        System.out.println(b);
        int number = Integer.parseInt(req.getParameter("number"));
        HttpSession session = req.getSession(true);
        IAllService commonService = new CommonServiceImpl();
        IAllDao commonDao = new CommonDaoImpl();
        Person person = commonDao.select_person_sql(number);
        String email = null;
        try {
            email = person.getEmail();
        } catch (NullPointerException e) {
            e.printStackTrace();
        }
        int i = -1;
        if (person == null || person.getEmail().equals("")) {
            //不发验证码
            i = 0;
            if (b.equals("2") && person != null && person.getEmail().equals("")) {
                i = 1;
                System.out.println("奥里给");
                email = req.getParameter("email");
                System.out.println("21" + email);
                int code = commonService.email(email);
                session.setAttribute("code", code);
            }
        } else {
            //发验证码
            i = 1;
            int code = commonService.email(email);
            session.setAttribute("code", code);
        }
        PrintWriter out = resp.getWriter();
        out.print(i);
        out.flush();
        out.close();
    }
}
