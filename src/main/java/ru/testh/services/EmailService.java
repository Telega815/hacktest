package ru.testh.services;

import org.apache.commons.mail.*;
import org.springframework.stereotype.Service;



@Service
public class EmailService {

    public void sendRegMsg(String email, String key){

        HtmlEmail htmlEmail = new HtmlEmail();
        try {
            Email MyEmail = new SimpleEmail();
            MyEmail.setHostName("smtp.gmail.com");
            MyEmail.setSmtpPort(465);
            MyEmail.setAuthenticator(new DefaultAuthenticator("my.javax.test", "563453"));
            MyEmail.setSSLOnConnect(true);
            MyEmail.setFrom("my.javax.test@gmail.com");
            MyEmail.setSubject("TestMail");
            MyEmail.setMsg("This is a test mail ... :-)");
            MyEmail.addTo("kdd563453@yandex.ru");
            MyEmail.send();
//            htmlEmail.setHostName("smtp.gmail.com");
//            htmlEmail.addTo(email, "John Doe");
//            htmlEmail.setFrom("my.javax.test@gmail.com", "Me");
//            htmlEmail.setSubject("\"Registration test on website\"");
//            htmlEmail.setSmtpPort(465);
//            // embed the image and get the content id
////        URL url = new URL("http://www.apache.org/images/asf_logo_wide.gif");
////        String cid = htmlEmail.embed(url, "Apache logo");
//
//            // set the html message
//            htmlEmail.setHtmlMsg("<a href=\"localhost:8080/confirmEmail?key="+key+"\">Click here to confirm email address</a>");
//
//            // set the alternative message
//            htmlEmail.setTextMsg("Your email client does not support HTML messages");
//            htmlEmail.setSSLCheckServerIdentity(true);
//            // send the email
//            htmlEmail.send();
        } catch (EmailException e) {
            e.printStackTrace();
        }
    }

}
