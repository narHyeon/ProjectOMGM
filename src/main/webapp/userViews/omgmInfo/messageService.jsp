<%--
  Created by IntelliJ IDEA.
  User: Jury
  Date: 2020-07-29
  Time: 오후 12:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<style>
    .message_service {
        text-align: center;
        margin: 100px 0;
        font-family: 'noto-sans';
        line-height: 30px;
        font-weight: 300;
        color: #777;
        letter-spacing: -1px;
    }
    .message_title {
        margin: 20px;
    }
    .message_title h1{
        font-size: 26px;
        font-weight: 600;
        color: #555;
        letter-spacing: -1px;
    }
    .message_title p {
        margin-top: 20px;
        font-size: 20px;
    }
    .service{
        display: flex;
        flex-direction: row;
        flex-wrap: wrap;
        justify-content: space-around;
        height: 30%;
        padding: 0 2%;
        margin: 0 auto;
    }
    .service li {
        width:400px;
        list-style: none;
        margin: 2%;
        font-size: 16px;
    }
    .service li img {
        width:250px;
    }
    .service h3 {
        font-size: 19px;
        margin: 30px;
        font-weight: 500;
        color: #555;
        letter-spacing: -1px;
    }
</style>
<body>

<div class="message_service">
    <div class="message_title">
        <h1>"문자 알림 서비스"</h1>
        <p></p>
    </div>
    <ul class="service">
        <li>
            <img src="resources/img/mainService/01.jpg" alt="">
            <h3>호텔 서비스 이용시</h3>
            <p>직원들이 우리 아이의 상태를 매시간 일지를 작성하여 <br> 문자로 발송해 드립니다. </p>
        </li>
        <li>
            <img src="resources/img/mainService/01.jpg" alt="">
            <h3>픽업 서비스 이용시</h3>
            <p>우리 아이의 출발상태, 도착상태를 문자로 발송해 드립니다.</p>
        </li>
        <li>
            <img src="resources/img/mainService/01.jpg" alt="">
            <h3>유치원 서비스 이용시</h3>
            <p>우리 아이의 일과를 문자로 발송해 드립니다.</p>
        </li>
    </ul>
</div>
</body>
</html>