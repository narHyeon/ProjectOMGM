<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
    <link rel="stylesheet" type="text/css"
          href="resources/style/mainService.css">
</head>
<body>
<div class="container">
    <img style="width: 100%" src="resources/img/main_image.jpg" alt="">
    <div class="banner">
        <img style="width: 100%" src="resources/img/intro_image.jpg" alt="">
        <span class="text">환영합니다♥</span>
    </div>
</div>
<%-- 방이랑 고양이 사진 --%>



<%--  메인 서비스 페이지  --%>
<div id="head-text">
    <H1>BEST SERVICE FOR MY PET</H1>
    <p>따뜻한 쉼터 오묘가묘는</p>
    <p>강아지 친구도 고양이 친구도 편하게 쉬어가는 곳</p>
    <p>어서 안오고 뭐하냥?</p>
</div>
<div class="service-content-all">
    <div class="service-content">

        <div class="class-img">
            <img src="resources/img/mainService/01.jpg" class="div-img">
            <p class="img-text">
                <strong>호텔</strong><br>hotel
            </p>
        </div>

        <div class="class-img">
            <img src="resources/img/mainService/02.jpg" class="div-img">
            <p class="img-text">
                <strong>유치원</strong><br>kindergarden
            </p>
        </div>
        <div class="class-img">
            <img src="resources/img/mainService/03.jpg" class="div-img">
            <p class="img-text">
                <strong>샵</strong><br>shop
            </p>
        </div>
        <div class="class-img">
            <img src="resources/img/mainService/04.jpg" class="div-img">
            <p class="img-text">
                <strong>픽업서비스</strong><br>pickup & service
            </p>
        </div>
    </div>
    <div class="service-content">
        <div class="class-img">
            <img src="resources/img/mainService/05.jpg" class="div-img">
            <p class="img-text">
                <strong>문자알림</strong><br>message & service
            </p>
        </div>
        <div class="class-img">
            <img src="resources/img/mainService/06.jpg" class="div-img">
            <p class="img-text">
                <strong>오시는길</strong><br>directions
            </p>
        </div>
        <div class="class-img">
            <img src="resources/img/mainService/07.jpg" class="div-img">
            <p class="img-text">
                <strong>이용후기</strong><br>reviews
            </p>
        </div>
        <div class="class-img">
            <img src="resources/img/mainService/08.jpg" class="div-img">
            <p class="img-text">
                <strong>질문</strong><br>Q & A
            </p>
        </div>
    </div>
</div>

<%--<c:if test="${result != null}">--%>
    <script>
        snsSign();
        function snsSign() {
           document.querySelector('signUp div div').innerHTML =
               `<label for="sns_popup"></label>
                <form action="#" class="sns_signup-form" onsubmit="return joinCheck(event)">
                    <h1 style="font-weight: 700;">Google 회원가입</h1>
                    <div class="txtboxID">
                       <input name="id" type="text" required autocomplete=off>
                       <span data-placeholder="ID"></span>
                   </div>
                   <input type="button" class="checkbtn" value="check" onclick="idCheck(false)">
                    <div class="txtboxTEL1">
                        <input name="tel1"  type="tel" pattern="0[0-9]{2}" required autocomplete=off>
                        <span data-placeholder="Tel"></span><a>ㅡ</a>
                    </div>
                    <div class="txtboxTEL2">
                        <input name="tel2"  type="tel" pattern="[0-9]{4}" required autocomplete=off><a>ㅡ</a>
                        <span data-placeholder="Tel2"></span>
                    </div>
                    <div class="txtboxTEL3">
                        <input name="tel3"  type="tel" pattern="[0-9]{4}" required autocomplete=off>
                        <span data-placeholder="Tel3"></span>
                    </div>
                    <div class="txt_zipCode">
                        <input id="sign_zipCode" name="zipCode"  type="number" required autocomplete=off>
                        <span data-placeholder="ZipCode"></span>
                    </div>
                    <input type="button" class="searchbtn" value="search" onclick="zipCheck()">
                    <div class="txt">
                        <input id="sign_address"  name="address"  type="text" required autocomplete=off>
                        <span data-placeholder="Address"></span>
                    </div>
                    <input type="submit" class="signup" value="Sign UP">
               </form>
                `;
    document.querySelector('#popup').checked = true;
}
    </script>
<%--</c:if>--%>
</body>
</html>
