package com.omgm.user.common;

import org.springframework.stereotype.Controller;

import javax.mail.*;
import javax.mail.internet.AddressException;

import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import java.util.Date;
import java.util.Properties;

@WebServlet("/send")
public class send extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Properties props = System.getProperties();
        props.put("mail.smtp.user", "yujury076"); // 서버 아이디만 쓰기
        props.put("mail.smtp.host", "smtp.gmail.com"); // 구글 SMTP
        props.put("mail.smtp.port", "465");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.socketFactory.port", "465");
        props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.socketFactory.fallback", "false");

        Authenticator auth = new MyAuthentication();

        //session 생성 및  MimeMessage생성
        Session session = Session.getDefaultInstance(props, auth);
        MimeMessage msg = new MimeMessage(session);

        try{
            //편지보낸시간
            msg.setSentDate(new Date());

            InternetAddress from = new InternetAddress("yujury076@gmail.com") ;

            // 이메일 발신자
            msg.setFrom(from);

            // 이메일 수신자
            String email = request.getParameter("receiver"); //사용자가 입력한 이메일 받아오기
            InternetAddress to = new InternetAddress(email);
            msg.setRecipient(Message.RecipientType.TO, to);

            // 이메일 제목
            msg.setSubject("오묘가묘 회원가입 인증번호", "UTF-8");

            // 이메일 내용

            String code = request.getParameter("code_check"); //인증번호 값 받기
            request.setAttribute("code", code);
            msg.setText("오모가묘 회원가입 인증번호입니다."+"<br>"+code + "를 인증번호창에 입력해주세요.", "UTF-8");

            // 이메일 헤더
            msg.setHeader("content-Type", "text/html");

            //메일보내기
            javax.mail.Transport.send(msg);
            System.out.println("보냄!");

        }catch (AddressException addr_e) {
            addr_e.printStackTrace();
        }catch (MessagingException msg_e) {
            msg_e.printStackTrace();
        }

        RequestDispatcher rd = request.getRequestDispatcher("/userViews/main.do");
        rd.forward(request, response);
    }
}

class MyAuthentication extends Authenticator {

    PasswordAuthentication pa;


    public MyAuthentication(){

        String id = "yujury076@gmail.com";       // 구글 ID
        String pw = "omgm12345678";          // 구글 비밀번호

        // ID와 비밀번호를 입력한다.
        pa = new PasswordAuthentication(id, pw);

    }

    // 시스템에서 사용하는 인증정보
    public javax.mail.PasswordAuthentication getPasswordAuthentication() {
        return pa;
    }

}