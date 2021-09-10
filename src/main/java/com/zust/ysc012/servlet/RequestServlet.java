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
        HttpSession session = req.getSession(true);
        int number = (int) session.getAttribute("number");
        IAllDao commonDao = new CommonDaoImpl();
        ArrayList<ArrayList<Object>> my_subject = new ArrayList<ArrayList<Object>>();
        my_subject = commonDao.select_person_subject_sql(number);
        long time = System.currentTimeMillis();
        Date date = new Date(time);
        int limit = commonDao.select_team_sql(ID);
        int i;
        boolean isPerson = false;
        for(int k = 0; k < my_subject.size(); k++) {
            isPerson = my_subject.get(k).contains(ID);
            if (isPerson == true) {
                break;
            }
        }
        if (isPerson == true) {
            //已经报名
            i = 1;
        } else {
            if (limit == 1) {
                //1是个人题目
                commonDao.insert_solo_request_sql(ID, number, date);
                i = 2;
            } else {
                //2是小组题目
                boolean isTeam = false;
                String team_code = req.getParameter("team_code");
                for(int k = 0; k < my_subject.size(); k++) {
                    isTeam = my_subject.get(k).contains(team_code);
                    if (isTeam == true) {
                        break;
                    }
                }
                if (isTeam == true) {
                    //可以报名
                    commonDao.update_team_sql(ID, team_code);
                    i = 2;
                } else {
                    //没这个组
                    i = 3;
                }

            }
        }
        PrintWriter out = resp.getWriter();
        out.print(i);
        out.flush();
        out.close();
    }
}
