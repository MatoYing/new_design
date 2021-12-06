package com.zust.ysc012.servlet;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.zust.ysc012.entity.Msg;


import javax.websocket.*;
import javax.websocket.server.ServerEndpoint;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.*;

/**
 * @Description
 * @Author Mato
 * @Date 15/09/2021 5:15 AM
 */

@ServerEndpoint(value = "/chatroom")
public class WSServerPoint {
    //存储各个用户的session，Set不重复
    //为什么static：每个人登录都会创一个set，加上static大家用的就是一个
    static Set<Session> set = new HashSet<Session>();
    Map<String, String> map;
    private Msg ms;
    @OnOpen
    //注意这个session是websocket的，不是HttpServlet
    public void onOpen(Session session) throws UnsupportedEncodingException {
        System.out.println("连接建立成功");
        //获取到ws_connect里的loginName，也就是直接那？后面的
        String msg = session.getQueryString();
        //转码
        msg = URLDecoder.decode(msg, "utf-8");
        Map<String, String> map = new HashMap<String, String >();
        if (msg.contains("&")) {
            //对于split，&是特殊字符，要加\\转义
            String[] sts = msg.split("\\&");
            for (String str:sts) {
                String[] strs = str.split("=");
                map.put(strs[0], strs[1]);
            }
        } else {
            String[] strs = msg.split("=");
            map.put(strs[0], strs[1]);
        }
        System.out.println(map);
        ms = new Msg();
        ms.setMsgSender(map.get("loginName"));
        ms.setMsgDate(new Date());
        set.add(session);
    }


    @OnClose
    public void onClose() {
        System.out.println("连接已关闭");
    }

    //往前端发送信息
    @OnMessage
    public void onMessage(String message) throws IOException {
        System.out.println("注意接收" + message);
        ms.setMsgInfo(message);
        ObjectMapper mapper = new ObjectMapper();
        String jsonstr = mapper.writeValueAsString(ms);
        broadcast(set, jsonstr);
        System.out.println("set" + set);
        //session用来区分用户
    }

    @OnError
    public void onError(Throwable t) throws Throwable {
        System.out.println("系统异常");
    }

    public void broadcast(Set<Session> set, String message) throws IOException {
        for(Session s:set) {
            s.getBasicRemote().sendText(message);
        }
    }
}