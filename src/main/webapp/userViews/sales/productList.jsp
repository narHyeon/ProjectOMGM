<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Jury
  Date: 2020-07-31
  Time: 오후 2:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko" class="pro_html">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <title></title>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8/jquery.min.js"></script>
    <link rel="stylesheet" href="../../resources/style/sales/productList.css">
    <script src="https://kit.fontawesome.com/844385d242.js" crossorigin="anonymous"></script>
    <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

</head>
<body class="proList_body">
<div class="slider_img">
    <div class="slider_slide" style="background-image: url(../../resources/img/roomIntroduction/01.jpg);"></div>
    <div class="slider_slide" style="background-image: url(../../resources/img/roomIntroduction/04.jpg);"></div>
    <div class="slider_slide" style="background-image: url(../../resources/img/roomIntroduction/02.jpg);"></div>
    <a class="slider_prev" onclick="button_click(-1)">&#10094</a>
    <a class="slider_next" onclick="button_click(1)">&#10095</a>
</div>
<main class="proList_main">
    <h2>ALL PRODUCT</h2>
    <div class="category">
    <button>사료</button>
    <button>장난감</button>
    </div>
    <div class="event_list">
        <ul>
          <c:forEach var="FeedList" items="${FeedList}">
            <li>
                <a href="">
                    <div><img src="../../resources/img/product/${FeedList.feed_img}" class="img" alt=""></div>
                    <em>NEW</em>
                    <div class="info">
                        <strong>${FeedList.feed_name}</strong>
                        <p>
                            <span>${FeedList.feed_price}</span>
                        </p>
                    </div>
                </a>
            </li>
          </c:forEach>
        </ul>
    </div>
    <div class="pro_paging">
        <ul>
            <li class="first"><a href=""><span class="hide">첫페이지</span></a></li>
            <li class="prev"><a href=""><span class="hide">이전페이지</span></a></li>
            <li><a href="" class="on">1</a></li>
            <li><a href="">2</a></li>
            <li class="next"><a href=""><span class="hide">다음페이지</span></a></li>
            <li class="last"><a href=""><span class="hide">마지막페이지</span></a></li>
        </ul>
    </div>

    <div class="scroll_menu">
        <div class="wishlist_menu2" style="cursor:pointer;"><a href="#"></a><i class="far fa-heart"></i></div>
        <div class="wishlist_menu" style="cursor:pointer;"><a href="#"></a> <i class="fas fa-shopping-cart"></i></div>
        <div id="create-channel-chat-button"></div>
    </div>

<%--    <div class="scroll_menu2">--%>
<%--        <div class="wishlist_menu2"><i class="far fa-heart"></i></div>--%>
<%--    </div>--%>

    <div id="MOVE_TOP_BTN" style=" cursor:pointer;" onclick="window.scrollTo(0,0);">TOP</div>

</main>

<script>
    <%--  이미지 슬라이더  --%>
    let currSlide = 1;
    showSlide(currSlide);

    function button_click(num){
        showSlide((currSlide += num));
    }
    function showSlide(num){
        const slides = document.querySelectorAll(".slider_slide");
        if(num>slides.length){
            currSlide =1;
        }if(num<1){
            currSlide = slides.length;
        }
        for(let i=0; i<slides.length; i++){
            slides[i].style.display="none";
        }slides[currSlide -1].style.display="block";

    }


    //스크롤메뉴
    $(function(){
        var t;
        var timer;

        // $(window).scroll(function(){
        // 	t=$(window).scrollTop();
        // 	$(".ball").animate({top:t+300}, 300);
        // });

        $(window).scroll(function(){
            clearTimeout(timer);
            timer=setTimeout(function(){
                t=$(window).scrollTop();
                $(".wishlist_menu, .wishlist_menu2, #create-channel-chat-button").animate({top:t+400},1);
            }, 150);
        });
    });

    //top버튼
    $(function() {
        $(window).scroll(function() {
            if ($(this).scrollTop() > 200) {
                $('#MOVE_TOP_BTN').fadeIn();
            } else {
                $('#MOVE_TOP_BTN').fadeOut();
            }
        });

        $("#MOVE_TOP_BTN").click(function() {
            $('.pro_html, .proList_body').animate({
                scrollTop : 0
            }, 200);
            return false;
        });
    });

        //카카오 플러스친구 1:1
        Kakao.init('c089c8172def97eb00c07217cae17495');
        Kakao.Channel.createChatButton({
            container: '#create-channel-chat-button',
            channelPublicId: '_VmDAK'
        });
        //]]>

</script>
</body>
</html>
