<%--
  Created by IntelliJ IDEA.
  User: Jury
  Date: 2020-07-29
  Time: 오전 9:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title></title>

    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="resources/style/login.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" charset="utf-8"></script>


</head>

<body>
<center>
    <script type = "text/javascript" src = "https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>

    <div id = "naver_id_login"></div>

    <script type="text/javascript">

        var naver_id_login = new naver_id_login("epIAIQoP1jJTDyUpzFxX", "http://localhost:8080/loginCallback.lo");    // Client ID, CallBack URL 삽입
        // 단 'localhost'가 포함된 CallBack URL
        var state = naver_id_login.getUniqState();

        naver_id_login.setButton("white", 4, 40);
        naver_id_login.setDomain("http://localhost:8080/login.lo");    //  URL
        naver_id_login.setState(state);
        naver_id_login.setPopup();
        naver_id_login.init_naver_id_login();

    </script>
</center>


</body>
</html>
