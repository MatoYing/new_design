package com.zust.ysc012.servlet;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

/**
 * @Description
 * @Author Mato
 * @Date 06/09/2021 4:33 AM
 */

@WebServlet(urlPatterns = "/downloadServlet")
public class DownloadServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String ID = req.getParameter("filename");
        File file = new File("C:\\C\\new_design\\src\\main\\webapp\\WEB-INF\\upload");
        String ext;
        File[] fileList = file.listFiles();
        for (int i = 0; i < fileList.length; i++) {
            if (fileList[i].isFile()) {
                ext = fileList[i].getName().substring(0, fileList[i].getName().indexOf("."));
                if (ext.equals(ID)) {
                    ID = ID + fileList[i].getName().substring(fileList[i].getName().indexOf("."));
                    break;
                }
            }
        }
        resp.addHeader("contentType", "application/octet-stream");
        resp.addHeader("content-Disposition", "attachment;filename=" + ID);
        InputStream in = getServletContext().getResourceAsStream("/WEB-INF/upload/" + ID);
        ServletOutputStream out = resp.getOutputStream();
        byte[] bs = new byte[10];
        int len = -1;
        while ((len = in.read(bs)) != -1) {
            out.write(bs, 0, len);
        }
        out.close();
        in.close();
        //download不用写跳转
    }
}
