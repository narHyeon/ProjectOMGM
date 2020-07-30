<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My PAGE</title>
</head>
<style>
#title {
	min-width: 60%;
	margin-right: 15%;
	margin-top: 5%;
	margin-left: 23%;
	margin-bottom: 2%;
	font-size: 20px;
	padding-bottom: 1%;
	border-bottom: 2px solid #FFABB9;
}
#wrap {
	margin-left: 5%;
	display: flex;
	height: 700px;
	width: 60%;
	flex-direction: row;
}
.bar {
	display: flex;
	height: 60px;
	width: 100%;
	margin-bottom: 1%;
}
#tle {
	display: flex;
	flex-direction: column;
	margin-left: 13%;
}
#banner {
	display: flex;
	border: 2px solid #FFABB9;
	height: 50%;
	min-width: 200px;
	flex-direction: column;
	margin-left: 8%;
}
#banner-ul {
	margin-left: 20px;
	padding: 0px;
}
#banner-li {
	list-style-type: none;
	margin-bottom: 7%;
	font-size: 15px;
	margin-top: 12%;
}
.bar-content {
	background-color: white;
	margin-left: 5%;
	width: 70%;
	height: 50%;
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
	margin-left: 1%;
	width: 15%;
}
#inputstylemail {
	border: 1px solid #FFABB9;
	border-radius: 3%;
	padding: 0.5%;
	margin-right: 1%;
	margin-left: 1%;
	width: 60%;
}
#textareastyle {
	border: 1px solid #FFABB9;
	padding: 0.5%;
	margin-right: 1%;
	margin-left: 1%;
	width: 100%;
	height: 100%;
}
.bar-title {
	width: 17%;
	font-size: 100%;
}

@media ( max-width : 768px) {
	* {
		margin: 0;
		padding: 0;
	}
	#title {
		text-align: center;
	}
	#banner {
		display: none;
	}
	#tle {
		font-size: 13px;
		margin-left: 25%;
		margin-top: 7%;
	}
	.bar-content {
		margin-left: 5%;
		width: 300px;
		height: 50%;
	}
	#inputstylephone {
		border: 1px solid #FFABB9;
		border-radius: 3%;
		padding: 0.5%;
		margin-right: 1%;
		margin-left: 1%;
		width: 25%;
	}
	#inputstylemail {
		border: 1px solid #FFABB9;
		border-radius: 3%;
		padding: 0.5%;
		margin-right: 1%;
		margin-left: 1%;
		width: 40%;
	}
	@media ( max-width : 480px) {
		* {
			margin: 0;
			padding: 0;
		}
		#title {
			text-align: center;
			margin-right: 20%;
		}
		#banner {
			display: none;
		}
		#tle {
			font-size: 11px;
			margin-left: 20%;
			margin-top: 8%;
		}
		#inputstylephone {
			border: 1px solid #FFABB9;
			border-radius: 3%;
			padding: 0.5%;
			margin-right: 1%;
			margin-left: 1%;
			width: 25%;
		}
		#inputstylemail {
			border: 1px solid #FFABB9;
			border-radius: 3%;
			padding: 0.5%;
			margin-right: 1%;
			margin-left: 1%;
			width: 40%;
		}
		.bar-content {
			margin-left: 5%;
			width: 250px;
			height: 50%;
		}
		.bar {
			display: flex;
			height: 60px;
			width: 350px;
			margin-bottom: 1%;
		}
	}
}
</style>
<script type="text/javascript">
	function goList() {
		window.location.href('myPage.do');
	}
</script>
<body>
	<h1 id="title">MY PAGE</h1>
	<div id="wrap">
				<div id="banner">
			<ul id="banner-ul">
				<li id="banner-li"><a href="myPage.do">내 정보</a></li>
				<li id="banner-li"><a href="#">내 고양이 정보</a></li>
				<li id="banner-li"><a href="myServiceList.do">서비스</a></li>
				<li id="banner-li"><a href="myBuyListLog.do">구매내역</a></li>
				<li id="banner-li"><a href="myCatCareLog.do">반려묘 일지</a></li>
				<li id="banner-li"><a href="#">내가 작성한 후기</a></li>
			</ul>
		</div>
		<form action="myPageUpdate.do" method="post">
			<div id="tle">
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
						<input id="inputstyle" type="text">
					</div>
				</div>
				<div class="bar">
					<div class="bar-title">상세주소</div>
					<div class="bar-content">
						<input id="inputstyle" type="text">
					</div>
				</div>
			</div>
		</form>
	</div>
</body>
</html>