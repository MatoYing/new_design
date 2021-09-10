<%@ page import="java.awt.*" %>
<%@ page import="java.util.Random" %>
<%@ page import="java.awt.image.BufferedImage" %>
<%@ page import="static java.awt.image.BufferedImage.TYPE_INT_RGB" %>
<%@ page import="javax.imageio.ImageIO" %>
<%@ page contentType="image/jpeg;charset=UTF-8" language="java" %>

<%!
    public Color getColor() {
        Random ran = new Random(); //0~1
        int r = ran.nextInt(256); //0~255
        int g = ran.nextInt(256);
        int b = ran.nextInt(256);
        return new Color(r, g, b); //0~255
    }

    public String getNum() {
        //随机数另一种方法
        int i = (int) (Math.random() * 10000); //0~9999
        String k = String.valueOf(i);
        return k;
    }
%>

<%
    //禁止缓存，防止验证码过期
    response.setHeader("Pragma", "no-cache");
    response.setHeader("Cache-Control", "no-cache");
    response.setHeader("Expires", "0");
    //绘制验证码
    //(长方形)
    BufferedImage image = new BufferedImage(100, 37, TYPE_INT_RGB);
    //画笔
    Graphics graphics = image.getGraphics();
    //填充背景
    graphics.fillRect(0, 0, 100, 37); //(0,0)-(80,30)
    //绘制干扰线条
    for (int i = 0; i < 60; i++) {
        Random ran = new Random();
        int xBegin = ran.nextInt(100);
        int yBegin = ran.nextInt(37);
        int xEnd = ran.nextInt(xBegin + 10);
        int yEnd = ran.nextInt(yBegin + 10);
        graphics.setColor(getColor());
        //绘制线条
        graphics.drawLine(xBegin, yBegin, xEnd, yEnd);
    }
    //设置字体
    graphics.setFont(new Font("seif", Font.BOLD, 15));
    //绘制验证码
    graphics.setColor(Color.BLACK);
    String checkCode = getNum();
    String new_checkCode = "";
    for(int i = 0; i < checkCode.length(); i++) {
        new_checkCode = new_checkCode + checkCode.charAt(i) + " ";
    }
    graphics.drawString(new_checkCode, 15, 20);
    //将验证码的真实值保存在session中，之后比较
    session.setAttribute("checkCode", checkCode);
    //真实产生图片
    ImageIO.write(image, "jpeg", response.getOutputStream());

    //关闭
    out.clear();
    pageContext.pushBody(); //这句化能将自己做的图片放在input的src里
%>