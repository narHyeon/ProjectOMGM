<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

			<div class="class-img" onclick="window.location.href = 'roomIntroduction.do';">
				<img src="resources/img/mainService/01.jpg" class="div-img">
				<p class="img-text">
					<strong>호텔</strong><br>hotel
				</p>
			</div>

			<div class="class-img" onclick="window.location.href = 'kinderGarden.do';">
				<img src="resources/img/mainService/02.jpg" class="div-img">
				<p class="img-text">
					<strong>유치원</strong><br>kindergarden
				</p>
			</div>
			<div class="class-img"  onclick="window.location.href = 'getMallFeedList.do';">
				<img src="resources/img/mainService/03.jpg" class="div-img">
				<p class="img-text">
					<strong>샵</strong><br>shop
				</p>
			</div>
			<div class="class-img"  onclick="window.location.href = 'pickupService_info.do';">
				<img src="resources/img/mainService/04.jpg" class="div-img">
				<p class="img-text">
					<strong>픽업서비스</strong><br>pickup & service
				</p>
			</div>
		</div>
		<div class="service-content">
			<div class="class-img"  onclick="window.location.href = 'messageService.do';">
				<img src="resources/img/mainService/05.jpg" class="div-img">
				<p class="img-text">
					<strong>문자알림</strong><br>message & service
				</p>
			</div>
			<div class="class-img"  onclick="window.location.href = 'introductionPage.do';">
				<img src="resources/img/mainService/06.jpg" class="div-img">
				<p class="img-text">
					<strong>오시는길</strong><br>directions
				</p>
			</div>
			<div class="class-img"  onclick="window.location.href = 'reviewListBoard.do';">
				<img src="resources/img/mainService/07.jpg" class="div-img">
				<p class="img-text">
					<strong>이용후기</strong><br>reviews
				</p>
			</div>
			<div class="class-img"  onclick="window.location.href = 'fAQList.do';">
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
			callbackUrl: "http://ec2-54-180-118-65.ap-northeast-2.compute.amazonaws.com/OMGM/naverCallback/",
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
