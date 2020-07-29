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
    <link rel="stylesheet" href="resources/style/reset.css">
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="resources/style/login.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" charset="utf-8"></script>
</head>

<input type="checkbox" id="popup">
<label for="popup">View</label>
<div>
<form action="#" class="login-form" for="popup">
    <label for="popup"></label>
    <h1 style="font-weight:700;">오묘가묘에 <br>오신것을 환영합니다!</h1>

        <div class="txtbox"> <!-- ID필드-->
            <input type="text">
            <span data-placeholder="ID"></span>
        </div>

        <div class="txtbox"> <!-- PW필드-->
            <input type="pass">
            <span data-placeholder="Password"></span>
        </div>

        <input type="submit" class="logbtn" value="Login"> <!-- 로그인버튼-->

        <div class="bottom-text">
            Don't have account? <a href="#">Sign up</a><br> <!-- 회원가입 페이지로이동-->
            Forgot account? <a href="#">Here</a> <!--아이디/비밀번호 찾는 페이지로 이동-->
        </div>
</form>
<label for="popup"></label>
</div>

<!--id,pw를 클릭하면 id, pw가 올라가게한다.-->
<script type="text/javascript">
    $(".txtbox input").on("focus",function(){
        $(this).addClass("focus");
    });

    $(".txtbox input").on("blur",function(){
        if($(this).val() == "")
            $(this).removeClass("focus");
    });

</script>


</body>
</html>
