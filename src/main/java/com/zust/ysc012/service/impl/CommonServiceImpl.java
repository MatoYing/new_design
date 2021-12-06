package com.zust.ysc012.service.impl;

import com.alibaba.fastjson.JSON;
import com.zust.ysc012.dao.IAllDao;
import com.zust.ysc012.dao.impl.CommonDaoImpl;
import com.zust.ysc012.entity.AccessToken;
import com.zust.ysc012.entity.GithubUser;
import com.zust.ysc012.entity.Person;
import com.zust.ysc012.service.IAllService;
import okhttp3.*;

import javax.imageio.ImageIO;
import javax.mail.*;
import javax.mail.Authenticator;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.awt.*;
import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.Properties;
import java.util.Random;

/**
 * @Description
 * @Author Mato
 * @Date 04/09/2021 4:29 PM
 */

public class CommonServiceImpl implements IAllService {
    public int email(String email) {
        int i = (int) (Math.random() * 1000000);
        // 创建Properties 类用于记录邮箱的一些属性
        Properties props = new Properties();
        // 表示SMTP发送邮件，必须进行身份验证
        props.put("mail.smtp.auth", "true");
        //此处填写SMTP服务器
        props.put("mail.smtp.host", "smtp.qq.com");
        //端口号，QQ邮箱端口587
        props.put("mail.smtp.port", "587");
        // 此处填写，写信人的账号(改邮箱账号)
        props.put("mail.user", "1350478903@qq.com");
        // 此处填写16位STMP口令（改16位）
        props.put("mail.password", "inypavtaxmbzjjba");
        // 构建授权信息，用于进行SMTP进行身份验证
        Authenticator authenticator = new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                // 用户名、密码
                String userName = props.getProperty("mail.user");
                String password = props.getProperty("mail.password");
                return new PasswordAuthentication(userName, password);
            }
        };
        // 使用环境属性和授权信息，创建邮件会话
        Session mailSession = Session.getInstance(props, authenticator);
        // 创建邮件消息
        MimeMessage message = new MimeMessage(mailSession);
        try {
            // 设置发件人
            InternetAddress form = new InternetAddress(props.getProperty("mail.user"));
            message.setFrom(form);
            // 设置收件人的邮箱(改)
            InternetAddress to = new InternetAddress(email);
            message.setRecipient(MimeMessage.RecipientType.TO, to);
            // 设置邮件标题
            message.setSubject("竞赛报名网验证码");
            // 设置邮件的内容体
            message.setContent("欢迎使用竞赛报名网，您的验证码为" + i, "text/html;charset=UTF-8");
            // 最后当然就是发送邮件啦
            Transport.send(message);
        } catch (AddressException e) {
            e.printStackTrace();
        } catch (MessagingException e) {
            e.printStackTrace();
        }
        return i;
    }


    public int only_date(Date deadline) {
        long time = System.currentTimeMillis();
        Date now = new Date(time);
        int compareTo = now.compareTo(deadline);
        return compareTo;
    }

//    public int number(int ID) {
//        ArrayList<Person> people = new ArrayList<Person>;
//        IAllDao commonDao = new CommonDaoImpl();
//        people = commonDao.select_get_number_sql(ID)
//        int a = people.size();
//        return a;
//    }

    public String getAccessToken(AccessToken accessToken) {
        MediaType mediaType = MediaType.get("application/json; charset=utf-8");
        OkHttpClient client = new OkHttpClient();
        RequestBody body = RequestBody.create(mediaType, JSON.toJSONString(accessToken));
        Request request = new Request.Builder()
                .url("https://github.com/login/oauth/access_token")
                .post(body)
                .build();
        try (Response response = client.newCall(request).execute()) {
            String string = response.body().string();
            String[] split = string.split("&");
            String tokenstr = split[0];
            String token = tokenstr.split("=")[1];
            return token;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public GithubUser getUser(String accessToken) {
        OkHttpClient client = new OkHttpClient();
        Request request = new Request.Builder()
                .url("https://api.github.com/user?access_token=" + accessToken)
                .build();
        try {
            Response response = client.newCall(request).execute();
            String string = response.body().string();
            GithubUser githubUser = JSON.parseObject(string, GithubUser.class);
            return githubUser;
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }


}
