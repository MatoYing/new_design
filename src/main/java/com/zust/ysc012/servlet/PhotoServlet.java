package com.zust.ysc012.servlet;



import okhttp3.Route;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Base64;

/**
 * @Description
 * @Author Mato
 * @Date 14/09/2021 12:32 AM
 */

@WebServlet(urlPatterns = "/photoServlet")
public class PhotoServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println(11111);
        /**
         * 1.获取到后面到数据
         */
        String data = req.getParameter("base644url");
        System.out.println(22222);
        System.out.println(data);
        String base64Data =  data.split(",")[1];
        System.out.println(33333);
        /**
         * 2.解码成字节数组
         */
        Base64.Decoder decoder = Base64.getDecoder();
        System.out.println(444444);
        byte[] bytes = decoder.decode(base64Data);
        /**
         * 3.字节流转文件
         */
        FileOutputStream fos = null;
        try {
            fos = new FileOutputStream("C:\\C\\new_design\\src\\main\\webapp\\WEB-INF\\photo");
            fos.write(bytes);
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (fos != null){
                try {
                    fos.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        System.out.println(22222222);
    }
}
