package com.zust.ysc012.service;

import com.zust.ysc012.entity.AccessToken;
import com.zust.ysc012.entity.GithubUser;
import com.zust.ysc012.entity.Person;

import javax.mail.*;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.sql.Date;
import java.util.ArrayList;
import java.util.Properties;

/**
 * @Description
 * @Author Mato
 * @Date 03/09/2021 1:06 AM
 */

public interface IAllService {
    public int email(String email);
    public int only_date(Date deadline);
//    public int number(ArrayList<Person> people);
    public String getAccessToken(AccessToken accessToken);
    public GithubUser getUser(String accessToken);
}
