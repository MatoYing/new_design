package com.zust.ysc012.service;

import javax.mail.*;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

/**
 * @Description
 * @Author Mato
 * @Date 03/09/2021 1:06 AM
 */

public interface IAllService {
    public int email(String email);
}
