<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My PAGE</title>
</head>
<style>
#head {
	min-width: 60%;
	margin-right: 15%;
<<<<<<< HEAD
	margin-top: 3%;
	margin-left: 28%;
=======
	margin-top: 5%;
	margin-left: 22%;
>>>>>>> 497d70079fe6bcbf96fcb0969973392e6eef20d5
	margin-bottom: 2%;
	font-size: 20px;
	padding-bottom: 1%;
	border-bottom: 2px solid #FFABB9;
}
#body {
	margin-left: 5%;
	display: flex;
	height: 700px;
	width: 60%;
	flex-direction: row;
}

.bar {
	display: flex;
	height: 45px;
	width: 100%;
}

#content {
	display: flex;
	flex-direction: column;
	margin-left: 8%;
	width: 100%;
	height: 50%;
}

<<<<<<< HEAD
=======
#banner {
	display: flex;
	border: 2px solid #FFABB9;
	height: 50%;
	min-width: 200px;
	flex-direction: column;
	margin-left: 3%;
}

>>>>>>> 497d70079fe6bcbf96fcb0969973392e6eef20d5
#buttons {
	margin-top: 1%;
	padding-right: 30%;
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

.bar-title {
	width: 20%;
	height: 98%;
	background-color: #FFABB9;
	color: white;
	padding-left: 1.5%;
	border-right: 2px solid #f6f6f6;
}

.bar-content {
	width: 45%;
	height: 98%;
	background-color: #F28888;
	color: black;
	padding-left: 3%;
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

#banner {
	display: flex;
	width: 15%;
	height: 50%;
	flex-direction: column;
	margin-left: 7%;
	border-radius: 10px;
}

#fieldsetstyle {
	margin-top: 5%;
	display: block;
	border: 1px solid #FFABB9;
	border-radius: 10px;
	background-color: #FFABB9;
	color: white;
	padding: 15px;
}

.alink:link {
	color: white;
}

.alink:visited {
	color: white;
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
	#content {
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
		#content {
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
	function goUpdate() {
		window.location.href = "myPageUpdate.do";
	}
</script>
<body>
	<div id="wrap">
		<div id="head">
			<h1>MY PAGE</h1>
		</div>
		<div id="body">
			<div id="banner">
				<fieldset id="fieldsetstyle">
					<a href="myPage.do" class="alink">내 정보</a>
				</fieldset>
				<fieldset id="fieldsetstyle">
					<a href="#" class="alink">내 고양이 정보</a>
				</fieldset>
				<fieldset id="fieldsetstyle">
					<a href="myServiceList.do" class="alink">서비스</a>
				</fieldset>
				<fieldset id="fieldsetstyle">
					<a href="myBuyListLog.do" class="alink">구매내역</a>
				</fieldset>
				<fieldset id="fieldsetstyle">
					<a href="#" class="alink">반려묘 일지</a>
				</fieldset>
				<fieldset id="fieldsetstyle">
					<a href="#" class="alink">내가 작성한 후기</a>
				</fieldset>
			</div>
			<div id="content">
				<div class="bar">
					<div class="bar-title">아이디</div>
					<div class="bar-content">lsmonkey</div>
				</div>
				<div class="bar">
					<div class="bar-title">비밀번호</div>
					<div class="bar-content">1234</div>
				</div>
				<div class="bar">
					<div class="bar-title">이름</div>
					<div class="bar-content">이승민</div>
				</div>
				<div class="bar">
					<div class="bar-title">닉네임</div>
					<div class="bar-content">닉네임</div>
				</div>
				<div class="bar">
					<div class="bar-title">휴대전화</div>
					<div class="bar-content">010- 7193- 9554</div>
				</div>
				<div class="bar">
					<div class="bar-title">이메일</div>
					<div class="bar-content">lsmonkey@naver.com</div>
				</div>
				<div class="bar">
					<div class="bar-title">주소</div>
					<div class="bar-content">대한민국</div>
				</div>
				<div class="bar">
					<div class="bar-title">상세주소</div>
					<div class="bar-content">서울</div>
				</div>
				<div id="buttons" align="right">
					<input type="button" value="내 정보 수정" onclick="goUpdate()">
					<input type="button" value="회원 탈퇴" onclick="">
				</div>
			</div>
		</div>
	</div>
</body>
</html>