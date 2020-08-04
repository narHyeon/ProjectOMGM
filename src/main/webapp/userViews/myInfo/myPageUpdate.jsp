<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My PAGE</title>
</head>
<style>
#wrap {
	display: flex;
	flex-direction: column;
}

#head {
	min-width: 60%;
	margin-right: 15%;
	margin-top: 2%;
	margin-left: 28%;
	margin-bottom: 2%;
	font-size: 20px;
	padding-bottom: 1%;
	border-bottom: 2px solid #FFABB9;
}

#body {
	display: flex;
	flex-direction: row;
	height: 100%;
}

#banner {
	display: flex;
	width: 15%;
	height: 30%;
	flex-direction: column;
	margin-left: 7%;
	border-radius: 10px;
}

#content {
	display: flex;
	flex-direction: column;
	margin-left: 6%;
	width: 43%;
	height: 100%;
}

.fieldsetstyle {
	margin-top: 5%;
	display: block;
	border: 1px solid #FFABB9;
	border-radius: 10px;
	background-color: #FFABB9;
	color: white;
	padding: 10px;
}

.fieldsetstyle:hover {
	cursor: pointer;
}

#bottom {
	text-align: right; /*가운데 정렬*/
	margin-top: 2%;
	margin-right: 35%;
	margin-bottom: 2%;
}

.bar {
	display: flex;
	flex-direction: row;
	height: 50px;
	width: 100%;
	padding-top: 1%;
}

.bar-content {
	background-color: white;
	margin-left: 5%;
	width: 70%;
	height: 100%;
}

.bar-title {
	width: 17%;
	height: 100%;
	font-size: 100%;
}

#inputstyle {
	border: 1px solid #FFABB9;
	border-radius: 3%;
	padding: 0.5%;
}

#inputstylephone {
	border: 1px solid #FFABB9;
	border-radius: 3%;
	padding: 0.5%;
	margin-right: 1%;
	width: 15%;
}

#inputstylemail {
	border: 1px solid #FFABB9;
	border-radius: 3%;
	padding: 0.5%;
	margin-right: 1%;
	width: 60%;
}

.buttons {
	background-color: white;
	cursor: pointer;
	border: 2px solid #e2e2e2;
	font-size: 12px;
	padding-left: 1%;
	padding-right: 1%;
	color: purple;
	width: 18%;
}
</style>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#myPageFs").click(function() {
			window.location.href = 'myPage.do';
		});
		$("#myCatPageFs").click(function() {
			window.location.href = 'myCatPage.do';
		});
		$("#myServiceListFs").click(function() {
			window.location.href = 'myServiceList.do';
		});
		$("#myBuyListLogFs").click(function() {
			window.location.href = 'myBuyListLog.do';
		});
		$("#myCatCareLogFs").click(function() {
			window.location.href = 'myCatCareLog.do';
		});
		$("#myReViewFs").click(function() {
			window.location.href = 'myReView.do';
		});
	});
	function goList() {
		window.location.href('myPage.do');
	}
</script>
<body>
	<div id="wrap">
		<div id="head">
			<h1>My Page</h1>
		</div>
		<div id="body">
			<div id="banner">
				<fieldset class="fieldsetstyle" id="myPageFs">내 정보</fieldset>
				<fieldset class="fieldsetstyle" id="myCatPageFs">내 고양이 정보
				</fieldset>
				<fieldset class="fieldsetstyle" id="myServiceListFs">서비스
				</fieldset>
				<fieldset class="fieldsetstyle" id="myBuyListLogFs">구매내역
				</fieldset>
				<fieldset class="fieldsetstyle" id="myCatCareLogFs">반려묘
					일지</fieldset>
				<fieldset class="fieldsetstyle" id="myReViewFs">내가 작성한 후기
				</fieldset>
			</div>
			<div id="content">
				<form action="">
					<div class="bar">
						<div class="bar-title">아이디</div>
						<div class="bar-content">
							<input id="inputstyle" type="text">
						</div>
					</div>
					<div class="bar">
						<div class="bar-title">비밀번호</div>
						<div class="bar-content">
							<input id="inputstyle" type="text">
						</div>
					</div>
					<div class="bar">
						<div class="bar-title">이름</div>
						<div class="bar-content">
							<input id="inputstyle" type="text">
						</div>
					</div>
					<div class="bar">
						<div class="bar-title">닉네임</div>
						<div class="bar-content">
							<input id="inputstyle" type="text">
						</div>
					</div>
					<div class="bar">
						<div class="bar-title">휴대전화</div>
						<div class="bar-content">
							<input id="inputstylephone" type="text">- <input
								id="inputstylephone" type="text">- <input
								id="inputstylephone" type="text">
						</div>
					</div>
					<div class="bar">
						<div class="bar-title">이메일</div>
						<div class="bar-content">
							<input id="inputstylemail" type="text">
						</div>
					</div>
					<div class="bar">
						<div class="bar-title">주소</div>
						<div class="bar-content">
							<input id="inputstylemail" type="text">
						</div>
					</div>
					<div class="bar">
						<div class="bar-title">상세주소</div>
						<div class="bar-content">
							<input id="inputstylemail" type="text">
						</div>
					</div>
					<div id="bottom">
						<input type="submit" value="내 정보 수정" class="buttons"> <input
							type="button" value="회원 탈퇴" onclick="" class="buttons">
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>