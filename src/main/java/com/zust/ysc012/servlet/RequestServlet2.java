package com.zust.ysc012.servlet;

import com.zust.ysc012.dao.IAllDao;
import com.zust.ysc012.dao.impl.CommonDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

/**
 * @Description
 * @Author Mato
 * @Date 11/09/2021 5:17 AM
 */

@WebServlet(urlPatterns = "/requestServlet2")
public class RequestServlet2 extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ArrayList<String> allTeam = new ArrayList<String>();
        IAllDao commonDao = new CommonDaoImpl();
        allTeam = commonDao.select_team_ID_exist_sql();
        String code = req.getParameter("team_code");
        int ID = Integer.parseInt(req.getParameter("id"));
        boolean isTeam = false;
        int i = 0;
        int isID = 0;
        for(int k = 0; k < allTeam.size(); k++) {
            isTeam = allTeam.get(k).contains(code);
            if (isTeam == true) {
                break;
            }
        }
        if (isTeam == false) {
            //不存在
            i = 3;
        } else {
            isID = commonDao.select_team_ID_sql(code);
            if (isID == 0) {
                commonDao.update_team_sql(ID, code);
                i = 2;
            } else {
                i = 1;
            }
        }
        PrintWriter out = resp.getWriter();
        out.print(i);
        out.flush();
        out.close();
    }
}
