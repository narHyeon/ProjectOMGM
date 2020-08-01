<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@600&display=swap" rel="stylesheet">
    <style>
        input[id*="popup"] {display:none;}
        input[id*="popup"] ~ div {position:fixed;top:0;left:0;width:100%;height:100%;z-index:100;}
        input[id*="popup"] ~ div > div {position:absolute;top:50%;left:50%;transform:translate(-50%,-50%);background:#fff;z-index:2;}
        /*input[id*="popup"] ~ div > div > label {position:absolute;top:0%;right:0%;transform:translate(40%,-40%);padding:20px;background:#dd5347;border-radius:100%;z-index:1;}*/
        input[id*="popup"] ~ div > label {position:absolute;top:0;left:0;width:100%;height:100%;background:rgba(0,0,0,.9);z-index:1;}

        input[id*="popup"] ~ div {opacity:0;visibility:hidden;transition:all 1s;}
        input[id*="popup"]:checked ~ div {opacity:1;visibility:visible;}

        *{
            margin: 0;
            padding: 0;
            text-decoration: none;
            font-family: 'Source Sans Pro';
            box-sizing: border-box;
        }

        /*body에 해당하는 부분*/
        body{
            min-height: 100vh;
            background:white;
        }

        /*form태그에 해당하는 부분*/
        .signup-form{
            width: 360px;
            background: #F28888;
            height: 580px;
            padding: 30px 40px;
            border-radius: 10px;
            position: absolute;
            left: 50%;
            top: 50%;
            transform: translate(-50%,-50%);
        }

        /*회원가입<h1> 크기*/
        .signup-form h1{
            text-align: center;
            font-size: 23px;
            color:aliceblue;
            font-family: 'Source Sans Pro';
            margin-bottom: 10px;
        }

        /*필드입력칸*/
        .txt{
            border-bottom: 2px solid aliceblue;
            width: 100%;
            position: relative;
            margin: 25px 0;
        }

        .txtboxID{
            border-bottom: 2px solid aliceblue;
            width: 70%;
            position: relative;
            margin: 25px 0;
        }

        .txtboxTEL1{
            border-bottom: 2px solid aliceblue;
            width: 22%;
            text-align: center;
            position: relative;
            margin: 25px 0;
        }

        .txtboxTEL2{
            border-bottom: 2px solid aliceblue;
            width: 22%;
            text-align: center;
            position:absolute;
            left: 35%;
            bottom: 17.3%;
            margin: 25px 0;
        }

        .txtboxTEL3{
            border-bottom: 2px solid aliceblue;
            width: 22%;
            text-align: center;
            position:absolute;
            left: 65%;
            bottom: 17.3%;
            margin: 25px 0;
        }

        .signup-form a{
            position: absolute;
            left: 110%;
            bottom: 20%;
            color: aliceblue;
        }

        /*<input>태그*/
        .txt input, .txtboxID input, .txtboxTEL1 input, .txtboxTEL2 input, .txtboxTEL3 input{
            font-size: 15px;
            color: #333;
            border: none;
            width: 70%;
            outline: none;
            background: none;
            padding: 0 5px;
            height: 40px;
        }

        /*처음 화면 켜지면 나타나는 내용(txtbox)*/
        .txt span::before, .txtboxID span::before, .txtboxTEL1 span::before{
            content: attr(data-placeholder);
            position: absolute;
            top: 50%;
            left: 5px;
            color: aliceblue;
            transform: translateY(-50%);
            z-index: -1;
            transition: 0.5s;
        }

        /*필드를 클릭했을때*/
        .txt span::after, .txtboxID span::after, .txtboxTEL1 span::after{
            content: '';
            position: absolute;
            width: 0%;
            height: 2px;
            transition: .5s;
        }
        /*처음 화면 켜지면 나타나는 내용(focus)*/
        .focus + span::before{
            top: -5px;
        }
        .focus + span::after{
            width: 100%;
        }
        /*중복체크 버튼*/
        .checkbtn{
            display: block;
            width: 21%;
            height: 26px;
            border: none;
            background: aliceblue;
            background-size: 200%;
            color: #F28888;
            outline: none;
            cursor: pointer;
            position:absolute;
            top:12.5%;
            left:69%;
            border-radius: 7px;

        }

        /*회원가입버튼*/
        .signup{
            display: block;
            width: 100%;
            height: 50px;
            border: none;
            background: aliceblue;
            background-size: 200%;
            color: #F28888;
            outline: none;
            cursor: pointer;
            border-radius: 7px;
            transition: .5s;
        }

        /*회원가입버튼에 올렸을 때*/
        .signup:hover, .checkbtn:hover{
            font-size: 16px;
        }
        /*회원가입, 아이디/패스워드 찾기*/
        .bottom-text a{
            margin-top: 20px;
            text-align: center;
            font-size: 16px;
            color:aliceblue;
        }
    </style>
</head>
<body>

<input type="checkbox" id="popup">
<div>
    <div>
        <label for="popup"></label>
        <form action="#" class="signup-form">
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
    </div>
    <label for="popup"></label>
</div>

<script>
    document.querySelector('#popup').checked = true;
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
