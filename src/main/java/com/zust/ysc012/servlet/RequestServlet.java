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
import java.util.ArrayList;

/**
 * @Description
 * @Author Mato
 * @Date 06/09/2021 4:30 AM
 */

@WebServlet(urlPatterns = "/requestServlet")
public class RequestServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int ID = Integer.parseInt(req.getParameter("id"));
        IAllDao commonDao = new CommonDaoImpl();
        int limit = commonDao.select_team_sql(ID);
        HttpSession session = req.getSession(true);
        int number = (int) session.getAttribute("number");
        ArrayList<ArrayList<Object>> my_subject = new ArrayList<ArrayList<Object>>();
        my_subject = commonDao.select_person_subject_sql(number);
        long time = System.currentTimeMillis();
        Date date = new Date(time);
        int i;
        boolean isPerson = false;
        for(int k = 0; k < my_subject.size(); k++) {
            isPerson = my_subject.get(k).contains(number);
            if (isPerson == true) {
                break;
            }
        }
        if (isPerson == true) {
            //已经报名
            i = 1;
        } else {
            //成功报名
            commonDao.insert_solo_request_sql(ID, number, date);
            i = 2;
        }
        PrintWriter out = resp.getWriter();
        out.print(i);
        out.flush();
        out.close();
    }
}
