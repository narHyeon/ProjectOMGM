<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@600&display=swap" rel="stylesheet">
</head>
<body>
	<!-- header 영역 -->
	<input type="checkbox" id="sidebar">

	<nav class="navbar">
		<div class="navbar_logo" onclick="mainLogo()">
			<td><img src="resources/img/자산%201.png" width="160px" /></td>
		</div>

		<header id="side">
			<div>
				<label for="sidebar" class="menu" id="menuBtn"> <span></span>
					<span></span> <span></span>
				</label>
			</div>
		</header>

		<div class="dropmenu">
			<ol class="navbar_menu">
				<li><a href="#"> Reservation </a>
					<ul>
						<li><a href="insertRoomReservation.do"> 방 빌리기 </a></li>
						<li><a href="kinderGardenReservation.do"> 유치원 등록 </a></li>
					</ul></li>

				<li><a href="#"> Service </a>
					<ul>
						<li><a href="roomList.do"> 객실소개 </a></li>
						<li><a href="kinderGarden.do"> 유치원 </a></li>
						<li><a href="pickupService_info.do"> 픽업 </a></li>
					</ul></li>
				<li><a href="#"> Review </a>
					<ul>
						<li><a href="reviewListBoard.do"> 이용후기 </a></li>
					</ul></li>
				<li><a href="#">OMGMall </a>
					<ul>
						<li><a href="getMallFeedList.do"> 사료 </a></li>
						<li><a href="getMallToyList.do"> 장난감 </a></li>
					</ul></li>
				<li><a href="#">Info </a>
					<ul>
<%--						<li><a href="event.do"> 공지&이벤트 </a></li>--%>
						<li><a href="introductionPage.do"> 이용안내 </a></li>
						<li><a href="fAQList.do"> 도움(FAQ) </a></li>
					</ul></li>
			</ol>
		</div>

    <ul class="login_membership">
        <li><a href="" onclick="login(event)">login</a></li>
        <li><p>|</p></li>
        <li><a href="" onclick="signUp(event)">Join</a></li>
    </ul>
</nav>

	<!-- 위는 주리 헤더 -->

	<!-- 사이드바 -->
	<div class="sidebar_content">
		<ul>
			<li><a href="#">Reservation</a>
				<ul class="sub_menu">
					<li><a href="insertRoomReservation.do"> 방 빌리기 </a></li>
					<li><a href="kinderGardenReservation.do"> 유치원 등록 </a></li>
				</ul></li>
			<li><a href="#">Service</a>
				<ul class="sub_menu">
					<li><a href="roomList.do"> 객실소개 </a></li>
					<li><a href="kinderGarden.do"> 유치원 </a></li>
					<li><a href="pickupService_info.do"> 픽업 </a></li>
				</ul></li>
			<li><a href="#">Review</a>
				<ul class="sub_menu">
					<li><a href="reviewListBoard.do"> 이용후기 </a></li>
				</ul></li>
			<li><a href="#">OMGMall</a>
				<ul class="sub_menu">
					<li><a href="getMallFeedList.do"> 사료 </a></li>
					<li><a href="getMallToyList.do"> 장난감 </a></li>
				</ul></li>
			<li><a href="#">Info</a>
				<ul class="sub_menu">
					<li><a href="introductionPage.do"> 이용안내 </a></li>
					<li><a href="fAQList.do"> 도움(FAQ) </a></li>
				</ul></li>
			<div id="menuLogoP">
				<img class="menuLogo" src="resources/img/자산%208.png" alt=""> <img
					class="menuLogo" src="resources/img/자산%201.png" alt="">
			</div>
		</ul>
		<label for="sidebar"></label>
	</div>
	<!-- sidebar 외 영역 -->
	<label for="sidebar" class="background"> </label>


	<%-- signUp --%>
<signUp>
	<input type="checkbox" id="popup">
	<div>
		<div>
			<label for="popup"></label>
			<form id="form2" class="signup-form" onsubmit="return joinCheck(event)">
				<h1 style="font-weight: 700;">회원가입</h1>
				<div class="txtboxID"> <!-- ID-->
					<input id="join_id_input" name="id" type="text" required autocomplete=off>
					<span data-placeholder="ID"></span>
				</div>
				<input type="button" class="checkbtn" value="check" onclick="idCheck(false)">

				<div class="txt"> <!-- Pw-->
					<input name="pwd"  id="pwd" type="password" required autocomplete=off minlength="8">
					<span data-placeholder="PassWord"></span>
				</div>

				<div class="txt"> <!-- RePw-->
					<input id="copwd" type="password" required autocomplete=off minlength="8">
					<span data-placeholder="Confirm PassWord"></span>
				</div>

				<div class="txt"> <!-- name-->
					<input name="name"  type="name" pattern="^[가-힣A-z]+$" required autocomplete=off>
					<span data-placeholder="Name"></span>
				</div>

				<div class="txt"> <!--e-mail-->
					<input name="email" id="original1" type="email" pattern="^\w+@\w+\.[A-z]+$" required autocomplete=off>
					<span  id="original" data-placeholder="E-Mail"></span>
				</div>

				<div class="txtboxTEL1"> <!--Tel1-->
					<input name="tel1"  type="tel" pattern="0[0-9]{2}" required autocomplete=off>
					<span data-placeholder="Tel"></span><a>ㅡ</a>
				</div>

				<div class="txtboxTEL2"> <!--Tel2-->
					<input name="tel2"  type="tel" pattern="[0-9]{4}" required autocomplete=off><a>ㅡ</a>
					<span data-placeholder="Tel2"></span>
				</div>

				<div class="txtboxTEL3"> <!--Tel3-->
					<input name="tel3"  type="tel" pattern="[0-9]{4}" required autocomplete=off>
					<span data-placeholder="Tel3"></span>
				</div>

				<div class="txt_zipCode"> <!--zipCode-->
					<input id="sign_zipCode" name="zipCode"  type="number" required autocomplete=off>
					<span data-placeholder="ZipCode"></span>
				</div>
				<input type="button" class="searchbtn" value="search" onclick="zipCheck()">

				<div class="txt"> <!--Address-->
					<input id="sign_address"  name="address"  type="text" required autocomplete=off>
					<span data-placeholder="Address"></span>
				</div>

				<input type="submit" class="signup" value="Sign UP"> <!-- 회원가입버튼-->
				<input type="button" class="signup2" value="Kakao" onclick="signKakao()"> <!-- 회원가입버튼-->
				<input type="button" class="signup3" value="Naver" onclick="signNaver()"> <!-- 회원가입버튼-->
				<input type="button" class="signup4" value="Google" onclick="signGoogle()"> <!-- 회원가입버튼-->
				<div id="sign_sns_title">
					<h3>SNS를 이용한 회원가입</h3>
				</div>
			</form>
		</div>
		<label for="popup"></label>
	</div>
</signUp>


	<%-- login --%>
<login>
	<input type="checkbox" id="login_popup">
	<div>
		<div>
			<label for="login_popup"></label>
			<form action="login.lo" class="login-form">
				<h1 style="font-weight:700;">오묘가묘에 <br>오신것을 환영합니다!</h1>

				<div class="txtbox"> <!-- ID필드-->
					<input id="login_id_input" name="id" type="text" required autocomplete=off>
					<span data-placeholder="ID" ></span>
				</div>

				<div class="txtbox"> <!-- PW필드-->
					<input name="pwd" type="password" required autocomplete=off>
					<span data-placeholder="Password"></span>
				</div>

				<input type="submit" class="logbtn" value="Login"> <!-- 로그인버튼-->
				<p class="bottom-text">SNS를 이용한 로그인</p>
				<input type="button" class="logbtn2" value="Google" onClick="signGoogle()"> <!-- 로그인버튼-->
				<input type="button" class="logbtn3" value="Naver" onClick="signNaver()"> <!-- 로그인버튼-->
				<input type="button" class="logbtn4" value="Kakao" onClick="signKakao()"> <!-- 로그인버튼-->

				<div class="bottom-text">
					계정이 없으신가요? <a href="#" onClick="signUp(event)">SignUp</a><br> <!-- 회원가입 페이지로이동-->
<%--					계정을 잊으셨나요? <a href="#">Here</a> <!--아이디/비밀번호 찾는 페이지로 이동-->--%>
				</div>
			</form>
		</div>
		<label for="login_popup"></label>
	</div>
</login>


	<%-- 채팅 모달 --%>
	<chatting>
		<input type="checkbox" id="chatting_modal">
		<div>
			<div>
				<label for="chatting_modal"></label>
				<div id="chatting_header">관리자와 대화</div>
				<div id="chatting_field"></div>
				<input type="text" id="chatting_input" onkeyup="enterSend(event)">
				<button class="chatting_button" onclick="send()">전송</button>
			</div>
			<label for="chatting_modal"></label>
		</div>
	</chatting>


	<div style="display: none" id="naverIdLogin"></div>
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
	<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
	<script src="resources/js/header.js" defer></script>
	<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
	<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
	<c:if test="${member != null}">
		<c:if test="${member.id == '무'}">
			<script>
				swal('로그인 할 수 없습니다!');
			</script>
		</c:if>
		<c:if test="${member.name != null}">
			<script>
				document.querySelector('.login_membership').innerHTML =
					`<li><a href="#" id="myInfo_menu">myInfo</a></li>
					<ul id="header_myInfo">
						<li><a href="myInfo.do">내 정보</a></li>
						<li><a href="myRoomReservationList.do">예약 정보</a></li>
						<li><a href="myOrder.do?order_id=${member.id}">구매 정보</a></li>
						<li><a href="myCatCareLogList.do">냥박일지</a></li>
					</ul>
                     	<li><p>|</p></li>
                     <li><a href="#" onclick="logOut()">logout</a></li>`;
				window.addEventListener('DOMContentLoaded',() => {
					loginSocket('${member.id}');
				});
			</script>
		</c:if>
	</c:if>
</body>
</html>
