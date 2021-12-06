package com.zust.ysc012.servlet;

import com.zust.ysc012.dao.IAllDao;
import com.zust.ysc012.dao.impl.CommonDaoImpl;
import com.zust.ysc012.entity.AccessToken;
import com.zust.ysc012.entity.GithubUser;
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

/**
 * @Description
 * @Author Mato
 * @Date 12/09/2021 5:44 AM
 */

@WebServlet(urlPatterns = "/callback")
public class AuthorizeServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String code = req.getParameter("code");
        String state = req.getParameter("state");
        //用java模拟post请求--OkHttp
        IAllService commonService = new CommonServiceImpl();
        AccessToken accessToken = new AccessToken();
        accessToken.setCode(code);
        accessToken.setRedirect_uri("http://localhost:8080/callback");
        accessToken.setClient_id("4051ade1df89380efd17");
        accessToken.setClient_secret("d53b0d4a3e84146dd52dea79239f6da57163a18d");
        accessToken.setState(state);
        String accessToken2 = commonService.getAccessToken(accessToken);
        GithubUser user = commonService.getUser(accessToken2);
        //该用户Github信息
        int number = 11901100;
        int type = 1;
        IAllDao commonDao = new CommonDaoImpl();
        Person person = commonDao.select_person_sql(number);
        HttpSession session = req.getSession(true);
        session.setAttribute("type", type);
        session.setAttribute("number", number);
        session.setAttribute("person", person);
        resp.sendRedirect("/view/common/home.jsp");
    }
}
