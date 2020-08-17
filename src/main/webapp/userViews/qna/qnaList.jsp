<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<head>
<meta charset="UTF-8">
<title>Q and A 문의</title>
</head>
<style>
<!--모달창-->
#m-wrap {
	display: flex;
	height: 700px;
	width: 60%;
	margin-left: 23%;
	flex-direction: column;
}

#m-head {
	min-width: 60%;
	margin-right: 15%;
	margin-top: 2%;
	margin-left: 15%;
	margin-bottom: 2%;
	font-size: 20px;
	padding-bottom: 1%;
	border-bottom: 2px solid #FFABB9;
	text-align: center;
	margin-bottom: 50px;
}

#m-bar {
	display: flex;
	height: 60px;
	width: 100%;
	margin-bottom: 1%;
}

#m-bar1 {
	display: flex;
	height: 60px;
	width: 100%;
	margin-bottom: 1%;
}

#m-bar2 {
	display: flex;
	height: 60px;
	width: 100%;
	margin-bottom: 1%;
}

#m-bar3 {
	display: flex;
	height: 60px;
	width: 100%;
	margin-bottom: 1%;
}

#m-bar4 {
	display: flex;
	height: 200px;
	width: 100%;
	margin-bottom: 1%;
}

#m-bar-content {
	background-color: white;
	margin-left: 5%;
	margin-top: -0.5%;
	width: 70%;
	height: 50%;
	border: 1px solid #FFABB9;
}

#m-bar-content1 {
	background-color: white;
	margin-left: 5%;
	width: 70%;
	height: 50%;
}

#m-bar-content2 {
	background-color: white;
	margin-left: 5%;
	width: 70%;
	height: 50%;
}

#m-bar-content3 {
	background-color: white;
	margin-left: 5%;
	width: 70%;
	height: 50%;
}

#m-bar-content4 {
	background-color: white;
	margin-left: 5%;
	width: 70%;
	height: 50%;
}

#m-bar-content5 {
	background-color: white;
	margin-left: 5%;
	width: 70%;
	height: 50%;
}

#m-bar-content6 {
	background-color: white;
	margin-left: 5%;
	width: 70%;
	height: 50%;
}

#m-selectstyle {
	border: 1px solid #FFABB9;
	padding: 0.5%;
	border-radius: 3%;
}

#m-inputstyle {
	border: 1px solid #FFABB9;
	border-radius: 3%;
	padding: 0.5%;
}

#m-inputstylephone {
	border: 1px solid #FFABB9;
	border-radius: 3%;
	padding: 0.5%;
	margin-right: 1%;
	margin-left: 1%;
	width: 15%;
}

#m-inputstylemail {
	border: 1px solid #FFABB9;
	border-radius: 3%;
	padding: 0.5%;
	margin-right: 1%;
	margin-left: 1%;
	width: 30%;
}

#m-textareastyle {
	border: 1px solid #FFABB9;
	padding: 0.5%;
	margin-right: 1%;
	margin-left: 1%;
	width: 100%;
	height: 100%;
}

#modalstyle {
	border: 2px solid #e2e2e2;
	color: black;
	font-size: 13px;
	margin-right: 2%;
	width: 100px;
}

#qna_head {
	min-width: 60%;
	margin-right: 15%;
	margin-top: 5%;
	margin-left: 22%;
	margin-bottom: 2%;
	font-size: 20px;
	padding-bottom: 1%;
	border-bottom: 2px solid #FFABB9;
}

#qna_body {
	display: flex;
	height: 70%;
	width: 100%;
	flex-direction: row;
}

.qna_bar {
	display: flex;
	height: 45px;
	width: 100%;
}

#qna_board_title {
	display: flex;
	flex-direction: row;
	margin-left: 3.5%;
	max-width: 1100px;
	min-width: 1100px;
	width: 100%;
	height: 70px;
	margin-top: 1%;
}

#qna_board_title1 {
	display: flex;
	flex-direction: row;
	margin-left: 3.5%;
	max-width: 1100px;
	min-width: 1100px;
	width: 100%;
	height: 120px;
	margin-top: 1%;
}

#board_title1 {
	display: block;
	width: 150px;
	height: 150px;
	background-color: red;
	flex-direction: column;
}

#qna_banner {
	display: flex;
	height: 500px;
	width: 200px;
	flex-direction: column;
	margin-left: 7%;
	border-radius: 10px;
}

#buttons {
	margin-top: 1%;
	padding-right: 30%;
}

#banner-ul {
	height: 900px;
	width: 300px;
	margin-left: 20px;
	padding: 0px;
}

#banner-li {
	list-style-type: none;
	margin-bottom: 7%;
	font-size: 15px;
	margin-top: 12%;
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

#check {
	background: pink;
	width: 10%;
	height: 50px;
	border-radius: 5px 0px 0px 5px;
	text-align: center;
	color: white;
}

#check2 {
	background: pink;
	width: 60%;
	height: 50px;
	text-align: center;
	color: white;
}

#check3 {
	background: pink;
	width: 10%;
	height: 50px;
	text-align: center;
	color: white;
}

#check4 {
	background: pink;
	width: 10%;
	height: 50px;
	text-align: center;
	color: white;
}

#check5 {
	background: pink;
	width: 10%;
	height: 50px;
	border-radius: 0px 5px 5px 0px;
	text-align: center;
	color: white;
}

#check1-1 {
	background: white;
	width: 10%;
	height: 100px;
	border-radius: 5px 0px 0px 5px;
	text-align: center;
}

#check2-1 {
	background: gray;
	width: 60%;
	height: 100px;
}

#check3-1 {
	background: white;
	width: 10%;
	height: 100px;
	text-align: center;
}

#check4-1 {
	background: white;
	width: 10%;
	height: 100px;
	text-align: center;
}

#check5-1 {
	background: white;
	width: 10%;
	height: 100px;
	border-radius: 0px 5px 5px 0px;
	text-align: center;
}

#qna_row {
	display: flex;
	flex-direction: column;
	margin-left: 2%;
}

#fieldsetstyle {
	margin-top: 5%;
	display: block;
	border: 1px solid #FFABB9;
	border-radius: 10px;
	background-color: #FFABB9;
	color: white;
	padding: 10px;
}

.alink:link {
	color: white;
}

.alink:visited {
	color: white;
}

#qna_body {
	display: flex;
	flex-direction: row;
	height: 100%;
}

#table_content {
	display: flex;
	width: 100%;
	height: 100%;
	background-color: white;
}

#product_img {
	width: 90px;
	height: 90px;
	padding: 5px;
}

#ul-style {
	padding: 0px;
	width: 70%;
}

#li-style {
	list-style-type: none;
	font-size: 15px;
	margin-top: 5px;
	list-style-type: none;
	padding: 0.5%;
	color: gray;
	font-size: 12px;
	font: 정선동강;
	padding-left: 2%;
	padding-right: 2%;
}

#align_text {
	margin-top: 15%;
}

#align_text_content {
	margin-top: 2.5%;
}

#align_text_list {
	margin-top: 33%;
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
		background: black;
		width: 600px;
		height: 600px;
		font-size: 13px;
		margin-left: 25%;
		margin-top: 7%;
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
	}
}
</style>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
   $("#myPageFs").click(function(){
      window.location.href = 'myPage.do';
   });
   $("#myPetPageFs").click(function(){
      window.location.href = 'myPetPage.do';
   });
   $("#myServiceListFs").click(function(){
      window.location.href = 'myServiceList.do';
   });
   $("#myBuyListLogFs").click(function(){
      window.location.href = 'myBuyListLog.do';
   });
   $("#myCatCareLogFs").click(function(){
      window.location.href = 'myCatCareLog.do';
   });
   $("#myReViewFs").click(function(){
      window.location.href = 'myReView.do';
   });
});
   function goUpdate() {
      window.location.href = "myPageUpdate.do";
   }
   function goCatUpdate() {
	   window.location.href = "myPetPageUpdate.do";
   }
</script>

<body>
	<div id="qna_wrap">
		<h1 id="qna_head">Q and A</h1>
		<div id="qna_body">
			<div id="qna_banner">
				<fieldset id="fieldsetstyle">
					<a href="#" class="alink">내 정보</a>
				</fieldset>
				<fieldset id="fieldsetstyle">
					<a href="#" class="alink">내 고양이 정보</a>
				</fieldset>
				<fieldset id="fieldsetstyle">
					<a href="#" class="alink">서비스 </a>
				</fieldset>
				<fieldset id="fieldsetstyle">
					<a href="#" class="alink">구매내역</a>
				</fieldset>
				<fieldset id="fieldsetstyle">
					<a href="#" class="alink">반려묘 일지</a>
				</fieldset>
				<fieldset id="fieldsetstyle">
					<a href="#" class="alink">내가 작성한 후기</a>
				</fieldset>
			</div>
			<div id="qna_row">
				<div id="qna_board_title">
					<div id="check">
						<p id="align_text">글 번호</p>
					</div>
					<div id="check2">
						<p id="align_text_content">제 목</p>
					</div>
					<div id="check3">
						<p id="align_text">날짜</p>
					</div>
					<div id="check4">
						<p id="align_text">추가</p>
					</div>
					<div id="check5">
						<p id="align_text">추가</p>
					</div>
				</div>
				<div id="qna_board_title1">
					<div id="check1-1">
						<p id="align_text_list">1</p>
					</div>

					<div id="check2-1">
						<div id="table_content">
							<img src="resources/img/images/dogfeed1.jpg" id="product_img">
							<ul id="ul-style">
								<li id="li-style">무슨무슨 제목</li>
							</ul>
						</div>
						<!-- end table_content -->

					</div>
					<!-- end check2-1 -->

					<div id="check3-1">
						<p id="align_text_list">2020.03.23~03.27</p>
					</div>

					<div id="check4-1">
						<p id="align_text_list">button수정하기</p>
					</div>

					<div id="check5-1">
						<p id="align_text_list">the</p>
					</div>
				</div>
				<a href="#ex1" rel="modal:open" id="modalstyle">1:1문의</a>
			</div>
		</div>
	</div>

</body>

<div id="ex1" class="modal">

	<div id="m-wrap">
		<div id="m-head">
			<h1 align="center">QNA</h1>
		</div>
		<form action="qnaList.do" method="POST">
		<div id="m-bar">
			<div id="m-bar-content2">
				문의 유형 <select id="selectstyle" name="QNA_TYPE">

					<option value>문의 유형 선택</option>
					<option value="상품">상품</option>
					<option value="유치원">유치원</option>
					<option value="환불">환불</option>
					<option value="반품">반품</option>
					<option value="등">등</option>
					<option value="등">등</option>

				</select>
			</div>
		</div>

		<div id="m-bar1">
			작성자
			<div id="m-bar-content2">
				<input id="m-inputstyle" type="text" name="QNA_NAME">
			</div>
		</div>

		<div id="m-bar2">
			휴대전화
			<div id="m-bar-content3">
				<input id="m-inputstyle" type="text" name="QNA_PHONE">
			</div>
		</div>

		<div id="m-bar3">
			이메일
			<div id="m-bar-content5">
				<input id="m-inputstyle" type="text" name="QNA_EMAIL">
			</div>
		</div>

		<div id="m-bar2">
			제목
			<div id="m-bar-content5">
				<input id="m-inputstyle" type="text" name="QNA_TITLE">
			</div>
		</div>

		<div id="m-bar4">
			문의내용
			<div id="m-bar-content6">
				<textarea id="m-textareastyle" name="QNA_CONTEXT"></textarea>
			</div>
		</div>
		<input type="submit" value="완료" class="buttons">
	</form>
	</div>
	
	<a href="#" rel="modal:close"> </a> 
	<a href="#"
		rel="modal:close">닫기</a>
		
</div>
</html>
