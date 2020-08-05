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
            <li class="pro_Li" style="padding-left:5%;">
                <a href="">
                    <div><img src="../../resources/img/product/${FeedList.feed_img}" class="img" alt=""></div>
                    <div class="menu" style="display: none;">
                        <em>NEW</em>
                    </div>
                    <div class="info">
                        <strong>${FeedList.feed_name}</strong>
                        <p>
                            <span>${FeedList.feed_inStock}</span>
                        </p>
                    </div>
                </a>
            </li>
          </c:forEach>
            <c:forEach var="ToyList" items="${ToyList}">
                <li class="pro_Li" style="padding-left:5%;">
                    <a href="">
                        <div><img src="../../resources/img/product/${ToyList.toy_img}" class="img" alt=""></div>
                        <div class="menu" style="display: none;">
                            <em>NEW</em>
                        </div>
                        <div class="info">
                            <strong class="toyname">${ToyList.toy_name}</strong>
                            <p>
                              <span>${ToyList.toy_price}</span>
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
    //상품상태출력
    if ($('.toyname').text() != '') { $('.menu').show(); }

</script>
</body>
</html>
