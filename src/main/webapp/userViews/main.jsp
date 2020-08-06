<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<<<<<<< HEAD
<link rel="stylesheet" type="text/css"
	href="resources/style/mainService.css">
<link rel="stylesheet" type="text/css"
	href="resources/style/content.css">
<link type="text/css" rel="stylesheet"
	href="resources/style/materialize.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

<script src="resources/js/materialize.js"></script>
<style>
.carousel
 
max-width
:
 
1240px
;
</style>
<script type="text/javascript">
	
	
$(document).ready(function(){
	$('.slider').slider();
    $('.box1-1').hover(function () {
               $('#space').html($('.article_tle').html());
               $('.article_tle').html($('.hide1-1').html());
            }
            ,
            function () {
               $('.article_tle').html($('#space').html());
               $('.slider').slider({interval: 2000});
            });
    
    $('.box1-2').hover(function () {
               $('#space').html($('.article_tle').html());
               $('.article_tle').html($('.hide1-2').html());
            }
            ,
            function () {
               $('.article_tle').html($('#space').html());
               $('.slider').slider({interval: 2000});
            });
    
    $('.box1-3').hover(
            function () {
               $('#space').html($('.article_tle').html());
               $('.article_tle').html($('.hide1-3').html());
            }
            ,
            function () {
               $('.article_tle').html($('#space').html());
               $('.slider').slider({interval: 2000});
            });
    
    $('.box2-1').hover(function () {
               $('#space').html($('.article_tle').html());
               $('.article_tle').html($('.hide2-1').html());
            }
            ,
            function () {
               $('.article_tle').html($('#space').html());
               $('.slider').slider({interval: 2000});
               });
    
    $('.box2-2').hover(function () {
               $('#space').html($('.article_tle').html());
               $('.article_tle').html($('.hide2-2').html());
            }
            ,
            function () {
               $('.article_tle').html($('#space').html());
               $('.slider').slider({interval: 2000 });
               });
    
    $('.box2-3').hover(function () {
               $('#space').html($('.article_tle').html());
               $('.article_tle').html($('.hide2-3').html());
            }
            ,
            function () {
               $('.article_tle').html($('#space').html());
               $('.slider').slider({interval: 2000});
               });
  });
  
document.addEventListener('DOMContentLoaded', function() {
    var options = {
        indicators: false  };
    var elem = document.querySelector('.carousel');
    var instance = M.Carousel.init(elem, options);
     });




</script>
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
	<div id="motherwrap">
		<div id="space" hidden=""></div>
		<!-- 가상공간의 div -->
		<div id="wrap">
			<section id="content1">
				<nav class="nav">
					<div class="boxbundle">
						<div class="boxtle">
							<a href="#">
								<div class="box1-1"></div>
								<div class="hide1-1" hidden="">
									<img id="img_hide1-1">
									<div class="hide_title">
										<h5 align="center">Sliver Room</h5>
									</div>
									<div class="hide_content">
										<h4 align="center">방 내용</h4>
									</div>
								</div> <!-- hide1-1 -->
							</a> <a href="#">
								<div class="box1-2"></div>
								<div class="hide1-2" hidden="">
									<img id="img_hide1-2">
									<div class="hide_title">
										<h5 align="center">Platinum Room</h5>
									</div>
									<div class="hide_content">
										<h4 align="center">방 내용</h4>
									</div>
								</div> <!-- hide1-2 -->
							</a> <a href="#">
								<div class="box1-3"></div>
								<div class="hide1-3" hidden="">
									<img id="img_hide1-3">
									<div class="hide_title">
										<h5 align="center">Share Room</h5>
									</div>
									<div class="hide_content">
										<h4 align="center">방 내용</h4>
									</div>
								</div> <!-- hide1-3 -->
							</a>

						</div>
						<!-- boxbundle -->

						<div class="boxtle1">
							<a href="#">
								<div class="box2-1"></div>
								<div class="hide2-1" hidden="">
									<img id="img_hide2-1">
									<div class="hide_title">
										<h5 align="center">Silver Room</h5>
									</div>
									<div class="hide_content">
										<h4 align="center">방 내용</h4>
									</div>
								</div>
							</a> <a href="#"><div class="box2-2"></div>
								<div class="hide2-2" hidden="">
									<img id="img_hide2-2">
									<div class="hide_title">
										<h5 align="center">힝 속았지?</h5>
									</div>
									<div class="hide_content">
										<h4 align="center">방 내용</h4>
									</div>
								</div> </a> <a href="#"><div class="box2-3"></div>
								<div class="hide2-3" hidden="">
									<img id="img_hide2-3">
									<div class="hide_title">
										<h5 align="center">Share Room</h5>
									</div>
									<div class="hide_content">
										<h4 align="center">방 내용</h4>
									</div>
								</div> </a>

						</div>

					</div>
				</nav>
				<article class="article_tle">

					<article class="article_right1">
						<div class="slider">
							<ul class="slides">
								<li><a href="#"><img id="img_height"
										src="resources/img/images/cat1.jpg"></a>
									<div class="caption right-align">
										<h3>Right</h3>
										<h5 class="light grey-text text-lighten-3">Cat1</h5>
									</div></li>
								<li><a href="#"><img id="img_height"
										src="resources/img/images/"></a>
									<div class="caption left-align">
										<h3>Left</h3>
										<h5 class="light grey-text text-lighten-3">Cat2</h5>
									</div></li>
								<li><a href="#"><img id="img_height"
										src="resources/img/images/cat3.png"></a>
									<div class="caption right-align">
										<h3>Right</h3>
										<h5 class="light grey-text text-lighten-3">Cat3</h5>
									</div></li>
								<li><a href="#"><img id="img_height"
										src="resources/img/images/ "></a>
									<div class="caption left-align">
										<h3>Left</h3>
										<h5 class="light grey-text text-lighten-3">Cat4</h5>
									</div></li>
							</ul>
						</div>
					</article>
					<!-- article_right1 -->

					<article class="article_right2">
						<div class="slider">
							<ul class="slides">
								<li><a href="#"><img id="img_height"
										src="resources/img/images/cat14.png"></a></li>
								<li><a href="#"> <img id="img_height"
										src="resources/img/images/cat12.jpg"></a></li>
								<li><a href="#"> <img id="img_height"
										src="resources/img/images/cat13.jpg"></a></li>
								<li><a href="#"> <img id="img_height"
										src="resources/img/images/cat9.jpg"></a></li>
							</ul>
						</div>

					</article>
					<!-- article_right2 -->
					<article class="article_right3">
						<div class="slider">
							<ul class="slides">
								<li><a href="#"><img id="img_height"
										src="resources/img/images/cat15.jpg"></a></li>
								<li><a href="#"> <img id="img_height"
										src="resources/img/images/cat16.jpg"></a></li>
								<li><a href="#"> <img id="img_height"
										src="resources/img/images/cat10.jpg"></a></li>
								<li><a href="#"> <img id="img_height"
										src="resources/img/images/cat9.jpg"></a></li>
							</ul>
						</div>

					</article>
					<!-- article_right3 -->
					<article class="article_right4">
						<div class="slider">
							<ul class="slides">
								<li><a href="#"><img id="img_height"
										src="resources/img/images/dog2.webp"></a></li>
								<li><a href="#"><img id="img_height"
										src="resources/img/images/dog1.webp"></a></li>
								<li><a href="#"><img id="img_height"
										src="resources/img/images/dog3.webp"></a></li>
								<li><a href="#"><img id="img_height"
										src="resources/img/images/dog.jpg"></a></li>
							</ul>
						</div>
					</article>
					<!-- article_right4 -->

				</article>
			</section>
			<section id="content2">

				<div class="carousel">
					<a class="carousel-item " href="#one!"><img
						src="resources/img/images/cattoy1.png"></a> <a
						class="carousel-item" href="#two!"><img
						src="resources/img/images/catfeed1.jpg"></a> <a
						class="carousel-item" href="#three!"><img
						src="resources/img/images/dogfeed1.jpg"></a> <a
						class="carousel-item" href="#four!"><img
						src="resources/img/images/catfeed2.jpg"></a> <a
						class="carousel-item" href="#six!"><img
						src="resources/img/images/dogtoy1.jpg"></a> <a
						class="carousel-item" href="#seven!"><img
						src="resources/img/images/dogtoy2.jpg"></a>
				</div>
			</section>
		</div>
	</div>
	<%--  메인 서비스 페이지  --%>
	<div id="head-text">
		<H1>BEST SERVICE FOR MY PET</H1>
		<p>따뜻한 쉼터 오묘가묘는</p>
		<p>강아지 친구도 고양이 친구도 편하게 쉬어가는 곳</p>
		<p>어서 안오고 뭐하냥?</p>
	</div>
	<div class="service-content-all">
		<div class="service-content">
=======
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
>>>>>>> 25aebac1dc3a2a8afa703957764cb6234be5afc0

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
    <c:if test="${result != null}">
        <script>
            window.addEventListener('DOMContentLoaded', (event) => {
                const result = { code:'${result.sub}', name: '${result.name}', email: '${result.email}', type: 'google' };
                snsSignDuple(result);
            });
        </script>
    </c:if>
    <c:if test="${naver.id == 'naver'}">
        <script>
            const naverLogin = new naver.LoginWithNaverId({
                clientId: "epIAIQoP1jJTDyUpzFxX",
                callbackUrl: "http://localhost:8080/naverCallback/",
                isPopup: false,
                callbackHandle: true
            });
            naverLogin.init();

            window.addEventListener('load', function () {
                naverLogin.getLoginStatus(function (status) {

                    if (status) {
                        const email = naverLogin.user.getEmail();
                        const name = naverLogin.user.getName();
                        const id = naverLogin.user.getId();
                        const result = { code:id, name: name, email: email, type: 'naver' };
                        snsSignDuple(result);
                    } else {
                        console.log("callback 처리에 실패하였습니다.");
                    }
                });
            });
        </script>
    </c:if>
</body>
</html>
