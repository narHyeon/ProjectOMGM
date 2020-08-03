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
    <h2 style="display:flex; justify-content:center; padding-top:500px; font-weight:bold; font-size:large;">ALL PRODUCT</h2>
    <div class="event_list">
        <ul>
            <li>
                <a href="">
                    <div><img src="resources/img/sales/JW훌러%20풋볼_5000원.jpg" class="img" alt=""></div>
                    <em>NEW</em>
                    <div class="info">
                        <strong>JW훌러풋볼</strong>
                        <p>
                            <span>5000원</span>

                        </p>
                    </div>
                </a>
            </li>
            <li>
                <a href="">
                    <div><img src="resources/img/sales/풀무원%20아미오%20캣%20그레인프리%205.4kg%20-%20키튼&어덜트%20(전연령)_65000원_52000원(할인가).jpg"  class="img" alt=""></div>
                    <em>품절</em>
                    <div class="info">
                        <strong>아미오 캣 그레인프리 5.4kg-키튼&어덜트</strong>
                        <p>
                            <span>65000원</span>

                        </p>
                    </div>
                </a>
            </li>
            <li>
                <a href="">
                    <div><img src="resources/img/sales/딩동펫%20강아지%20장난감%20파스텔%20터그장난감%20세트%205종_9900원.jpg"  class="img" alt=""></div>
                    <em>BEST</em>
                    <div class="info">
                        <strong>파스텔 터그장난감</strong>
                        <p>
                            <span>9900원</span>

                        </p>
                    </div>
                </a>
            </li>
            <li>
                <a href="">
                    <div><img src="resources/img/sales/딩동펫%20반려동물%20삑삑이%20바베큐%20장난감_1700원.jpg"  class="img" alt=""></div>
                    <div class="info">
                        <strong>삑삑이 바베큐 장난감</strong>
                        <p>
                            <span>1700원</span>

                        </p>
                    </div>
                </a>
            </li>
            <li>
                <a href="">
                    <div><img src="resources/img/sales/프로베스트캑%20밸런스%207kg%20고양이사료_14300원.jpg"  class="img" alt=""></div>
                    <em>BEST</em>
                    <div class="info">
                        <strong>프로베스트캑 밸런스 7kg 고양이사료</strong>
                        <p>
                            <span>14300원</span>

                        </p>
                    </div>
                </a>
            </li>
            <li>
                <a href="">
                    <div><img src="resources/img/sales/딩동펫%20애견%20장난감%20간식총_9500원.jpg"  class="img" alt=""></div>
                    <em>NEW</em>
                    <div class="info">
                        <strong>장난감 간식총</strong>
                        <p>
                            <span>9500원</span>

                        </p>
                    </div>
                </a>
            </li>
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
