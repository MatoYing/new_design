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
 * @Date 04/09/2021 11:18 PM
 */

@WebServlet(urlPatterns = "/passwordServlet")
public class PasswordServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int number = Integer.parseInt(req.getParameter("number"));
        int code = Integer.parseInt(req.getParameter("code"));
        String password = req.getParameter("password");
        IAllDao commonDao = new CommonDaoImpl();
        Person person = commonDao.select_person_sql(number);
        HttpSession session = req.getSession(true);
        int real_code = 1111111;
        try {
            real_code = (int) session.getAttribute("code");
        } catch (NullPointerException e) {
            e.printStackTrace();
        }
        int i = -1;
        if (person == null) {
            //账号错误
            i = 0;
        } else if (code != real_code) {
            //验证码错误
            i = 1;
        } else {
            //成功，前端直接跳转
            i = 2;
            commonDao.update_password_sql(number, password);
            person = commonDao.select_person_sql(number);
            session.setAttribute("person", person);
            session.setAttribute("number", number);
        }
        PrintWriter out = resp.getWriter();
        out.print(i);
        out.flush();
        out.close();
    }
}
