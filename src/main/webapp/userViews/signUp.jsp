<%--
  Created by IntelliJ IDEA.
  User: Jury
  Date: 2020-07-29
  Time: 오전 9:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" href="resources/style/sign_up.css">
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@600&display=swap" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" charset="utf-8"></script>
</head>
<body>

ghghgjgjgjgjghjgjgjgjghgjgjghj
<input type="checkbox" id="popup">
<label for="popup">View</label>
<div>
<form action="#" class="signup-form" for="popup">
    <label for="popup"></label>
    <h1 style="font-weight: 700;">회원가입</h1>
    <div class="txtboxID"> <!-- ID-->
        <input type="text">
        <span data-placeholder="ID"></span>
    </div>
    <input type="submit" class="checkbtn" value="check">

    <div class="txt"> <!-- Pw-->
        <input type="pass">
        <span data-placeholder="Pass"></span>
    </div>

    <div class="txt"> <!-- RePw-->
        <input type="repass">
        <span data-placeholder="RePass"></span>
    </div>

    <div class="txt"> <!-- name-->
        <input type="name">
        <span data-placeholder="Name"></span>
    </div>

    <div class="txt"> <!--e-mail-->
        <input type="email">
        <span data-placeholder="E-Mail"></span>
    </div>

    <div class="txtboxTEL1"> <!--Tel1-->
        <input type="tel" pattern="[0-9]{3}">
        <span data-placeholder="Tel"></span><a>ㅡ</a>
    </div>

    <div class="txtboxTEL2"> <!--Tel2-->
        <input type="tel" pattern="[0-9]{4}"><a>ㅡ</a>
        <span data-placeholder="Tel2"></span>
    </div>

    <div class="txtboxTEL3"> <!--Tel3-->
        <input type="tel" pattern="[0-9]{4}">
        <span data-placeholder="Tel3"></span>
    </div>

    <input type="submit" class="signup" value="Sign UP"> <!-- 회원가입버튼-->
</form>
    <label for="popup"></label>
</div>
<!--필드 클릭했을때-->
<script type="text/javascript">
    $(".txt input, .txtboxID input, .txtboxTEL1 input").on("focus",function(){
        $(this).addClass("focus");
    });

    $(".txt input, .txtboxID input, .txtboxTEL1 input").on("blur",function(){
        if($(this).val() == "")
            $(this).removeClass("focus");
    });

</script>

</body>
</html>
