package com.zust.ysc012.servlet;

import com.zust.ysc012.dao.IAllDao;
import com.zust.ysc012.dao.impl.CommonDaoImpl;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadBase;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Iterator;
import java.util.List;

/**
 * @Description
 * @Author Mato
 * @Date 07/09/2021 7:52 AM
 */

@WebServlet(urlPatterns = "/uploadServlet")
public class UploadServlet  extends HttpServlet {
    static int onlyID = 11;
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        String name = req.getParameter("name");
//        String limit = req.getParameter("limit");
//        String date = req.getParameter("date");
//        String isPrice = req.getParameter("isPrice");
//        if (isPrice.equals(1)) {
//            float price = Float.parseFloat(req.getParameter("price"));
//        }
//        String introduction = req.getParameter("introduction");
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=UTF-8");
        String name = null;
        int onlyID2 = 0;
        int limit = 0;
        String date;
        String isPrice = null;
        float price = 0;
        String introduction = null;
        java.sql.Date date1 = null;
        java.sql.Date date2 = null;
        HttpSession session = req.getSession(true);
        int number = (int) session.getAttribute("number");
        IAllDao commonDao = new CommonDaoImpl();
        boolean multipartContent = ServletFileUpload.isMultipartContent(req);
        if (multipartContent) {
            FileItemFactory factory = new DiskFileItemFactory();
            ServletFileUpload upload = new ServletFileUpload(factory);
            try {
                List<FileItem> items = upload.parseRequest(req);
                Iterator<FileItem> iter = items.iterator();
                while (iter.hasNext()) {
                    FileItem item = iter.next();
                    if (item.isFormField()) {
                        if (item.getFieldName().equals("name")) {
                            name = item.getString("UTF-8");
                        } else if (item.getFieldName().equals("limit")) {
                            limit = Integer.parseInt(item.getString("UTF-8"));
                        } else if (item.getFieldName().equals("date")) {
                            date = item.getString("UTF-8");
                            //String类型转换成java.sql.Date类型不能直接进行转换，首先要将String转换成java.util.Date，在转化成java.sql.Date
                            //所以没必要用sql，直接util就好
                            SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
                            java.util.Date agent1 = null;
                            java.util.Date agent2 = null;
                            try {
                                agent1 = format.parse(date.substring(0, 10));
                                agent2 = format.parse(date.substring(13, 23));
                            } catch (ParseException e) {
                                e.printStackTrace();
                            }
                            date1 = new java.sql.Date(agent1.getTime());
                            date2 = new java.sql.Date(agent2.getTime());
                        } else if (item.getFieldName().equals("isPrice")) {
                            isPrice = item.getString("UTF-8");
                            System.out.println("is" + isPrice);
                        } else if (isPrice.equals("1") && item.getFieldName().equals("price")) {
                            price = Float.parseFloat(item.getString("UTF-8"));
                        }
                        else if (item.getFieldName().equals("introduction")) {
                            introduction = item.getString("UTF-8");
                        }
                    } else {
                        String fileName = item.getName();
                        System.out.println("file" + fileName);
                        String ext = fileName.substring(fileName.indexOf(".") + 1);
                        String path = "C:\\C\\new_design\\src\\main\\webapp\\WEB-INF\\upload";
                        onlyID2 = commonDao.select_max_ID_sql();
                        onlyID2++;
                        fileName = onlyID2 + "." + ext;
                        File file = new File(path, fileName);
                        item.write(file);
                    }
                }
                commonDao.insert_subject_sql(onlyID2 ,name, introduction, number, date1, date2, price, limit);
            } catch (FileUploadBase.SizeLimitExceededException e) {
                e.printStackTrace();
            } catch (FileUploadException e) {
                e.printStackTrace();
            } catch (Exception e){
                    e.printStackTrace();
            }
            onlyID++;
            resp.sendRedirect("/view/teacher/tea_pre_subject.jsp");
        }
    }
}
