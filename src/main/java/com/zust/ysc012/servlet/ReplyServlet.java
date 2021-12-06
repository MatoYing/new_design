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
 * @Date 08/09/2021 7:40 AM
 */

@WebServlet(urlPatterns = "/replyServlet")
public class ReplyServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String reply = req.getParameter("reply");
        IAllDao commonDao = new CommonDaoImpl();
        int useless = Integer.parseInt(req.getParameter("useless"));
        int team = 0;
        try {
            team = Integer.parseInt(req.getParameter("team"));
        } catch (NullPointerException e) {
            e.printStackTrace();
        } catch (NumberFormatException e) {
            team = 0;
            e.printStackTrace();
        }
        if (reply.equals("1")) {
            //同意
            if (team != 0) {
                commonDao.update_reply_team_sql(team, 2);
            } else {
                commonDao.update_reply_noTeam_sql(useless, 2);
            }
        } else {
            //不同意
            if (team != 0) {
                commonDao.update_reply_team_sql(team, 3);
            } else {
                commonDao.update_reply_noTeam_sql(useless, 3);
            }
        }
        resp.sendRedirect("/view/teacher/tea_person.jsp");
    }
}
