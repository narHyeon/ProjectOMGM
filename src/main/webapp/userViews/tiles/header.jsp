<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
    <script src="resources/js/header.js" defer></script>
</head>
<body>
<!-- header 영역 -->
<input type="checkbox" id="sidebar">

<nav class="navbar">
    <div class="navbar_logo">
        <td>
            <img src="resources/img/자산%201.png" width="160px" />
        </td>
    </div>

    <header id="side">
        <div>
            <label for="sidebar" class="menu" id="menuBtn">
                <span></span>
                <span></span>
                <span></span>
            </label>
        </div>
    </header>

    <div class="dropmenu">
        <ol class="navbar_menu">
            <li><a href="#"> Reservation </a>
                <ul>
                    <li><a href="#"> 방 빌리기 </a> </li>
                    <li><a href="#"> 유치원 등록 </a> </li>
                </ul>
            </li>

            <li><a href="#"> Service </a>
                <ul>
                    <li> <a href="#"> 객실소개 </a> </li>
                    <li> <a href="#"> 유치원 </a> </li>
                    <li> <a href="#"> 픽업 </a> </li>
                    <li> <a href="#"> 문자알림 </a> </li>
                </ul>
            </li>
            <li><a href="#"> Review </a>
                <ul>
                    <li> <a href="#"> 이용후기 </a> </li>
                </ul>
            </li>
            <li> <a href="#">OMGMall </a>
                <ul>
                    <li> <a href="#"> 사료 </a> </li>
                    <li> <a href="#"> 장난감 </a> </li>
                </ul>
            </li>
            <li> <a href="#">Info </a>
                <ul>
                    <li> <a href="#"> 공지&이벤트 </a> </li>
                    <li> <a href="#"> 이용안내 </a> </li>
                    <li> <a href="#"> 도움(Q&A) </a> </li>
                </ul>
            </li>
        </ol>
    </div>

    <ul class="login_membership">
        <li><a href="">login</a></li>
        <li><p>|</p></li>
        <li><a href="signUp.do">Join</a></li>
    </ul>
</nav>

<!-- 위는 주리 헤더 -->

<!-- 사이드바 -->
<div class="sidebar_content">
    <ul>
        <li>
            <a href="#">Reservation</a>
            <ul class="sub_menu">
                <li><a href="#">
                    방 빌리기</a></li>
                <li><a href="#">유치원 등록</a></li>
            </ul>
        </li>
        <li>
            <a href="#">Service</a>
            <ul class="sub_menu">
                <li><a href="#">객실 소개</a></li>
                <li><a href="#">유치원</a></li>
                <li><a href="#">픽업</a></li>
                <li><a href="#">문자알림</a></li>
            </ul>
        </li>
        <li>
            <a href="#">Review</a>
            <ul class="sub_menu">
                <li><a href="#">이용후기</a></li>
            </ul>
        </li>
        <li>
            <a href="#">OMGMall</a>
            <ul class="sub_menu">
                <li><a href="#">사료</a></li>
                <li><a href="#">장난감</a></li>
            </ul>
        </li>
        <li>
            <a href="#">Info</a>
            <ul class="sub_menu">
                <li><a href="#">공지사항&이벤트</a></li>
                <li><a href="#">이용안내(길안내)</a></li>
                <li><a href="#">도움(Q&A)</a></li>
            </ul>
        </li>
        <div id="menuLogoP">
            <img class="menuLogo" src="resources/img/자산%208.png" alt="">
            <img class="menuLogo" src="resources/img/자산%201.png" alt="">
        </div>
    </ul>
    <label for="sidebar"></label>
</div>
<!-- sidebar 외 영역 -->
<label for="sidebar" class="background">

</label>
</body>
</html>
