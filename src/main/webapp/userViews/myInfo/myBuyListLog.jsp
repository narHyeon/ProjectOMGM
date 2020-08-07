<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구매내역</title>
</head>
<style>
#head {
	min-width: 60%;
	margin-right: 15%;
	margin-top: 5%;
	margin-left: 22%;
	margin-bottom: 2%;
	font-size: 20px;
	padding-bottom: 1%;
	border-bottom: 2px solid #FFABB9;
}

#body {
	display: flex;
	height: 70%;
	width: 100%;
	flex-direction: row;
}

.bar {
	display: flex;
	height: 45px;
	width: 100%;
}

#board_title {
	display: flex;
	flex-direction: row;
	margin-left: 3.5%;
	max-width:1100px;
	min-width:1100px;
	width: 100%;
	height: 70px;
	margin-top:1%;
}
#board_title1 {
 
display:block;
width:150px;
height:150px;
background-color:red;	
flex-direction: column;
}
#board_title2 {

display:block;
width:600px;
height:150px;
background-color:blue;	
	flex-direction: column;
}
#banner {
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
	height:900px;
	width:300px;
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


#check{background:pink; width:10%; height: 50px; border-radius: 5px 0px 0px 5px; text-align:center; color:white;}
#check2{background:pink; width:60%; height: 50px; text-align:center; color:white;}
#check3{background:pink; width:10%; height: 50px; text-align:center; color:white;}
#check4{background:pink; width:10%; height: 50px; text-align:center; color:white;}
#check5{background:pink; width:10%; height: 50px; border-radius: 0px 5px 5px 0px; text-align:center; color:white;}

#check1-1{background:white; width:10%; height: 100px; border-radius: 5px 0px 0px 5px; text-align:center;}
#check2-1{background:gray; width:60%; height: 100px; }
#check3-1{background:white; width:10%; height: 100px; text-align:center;}
#check4-1{background:white; width:10%; height: 100px; text-align:center;}
#check5-1{background:white; width:10%; height: 100px; border-radius: 0px 5px 5px 0px; text-align:center;}
#row{display:flex; flex-direction: column; margin-left:2%;}

.fieldsetstyle{margin-top:5%; display:block; border:1px solid #FFABB9; border-radius: 10px; background-color:#FFABB9; color:white; padding:10px;}

.alink:link{
   color: white;
}
.alink:visited{
   color: white;
}

#body {
   display: flex;
   flex-direction: row;
   height: 100%;
}

#table_content{display:flex; width:100%; height:100%; background-color:white;}
#product_img{width:90px; height:90px; padding:5px;}
#ul-style {	padding: 0px;width: 70%; }
#li-style {	list-style-type: none; font-size: 15px; margin-top:5px;	list-style-type: none;	
	padding: 0.5%;	color: gray;	font-size: 12px;	font: 정선동강;	padding-left: 2%;	padding-right: 2%;}

#align_text{margin-top:15%;}
#align_text_content{margin-top:2.5%;}
#align_text_list{margin-top:33%;}



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
		background:black;
		width:600px;
		height:600px;
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
.fieldsetstyle:hover {
	cursor: pointer;
}
</style>
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#myPageFs").click(function() {
			window.location.href = 'myPage.do';
		});
		$("#myCatPageFs").click(function() {
			window.location.href = 'myPetPage.do';
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
</script>	
<body>
<div id="wrap">
	<h1 id="head">구매 내역</h1>
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
		<div id="row">
		<div id="board_title">
		<div id="check"><p id="align_text">주문번호</p></div>
		 <div id="check2"><p id="align_text_content">상품정보</p></div>  
		 <div id="check3"><p id="align_text">주문 일자</p></div> 
		 <div id="check4"><p id="align_text">주문금액</p></div>
		 <div id="check5"><p id="align_text">추가</p></div>
		</div>
		<div id="board_title">
		<div id="check1-1"><p id="align_text_list">1</p></div> 
		
		<div id="check2-1">
		<div id="table_content">
		<img src="resources/img/images/dogfeed1.jpg" id="product_img">
				<ul id="ul-style">
					<li id="li-style">오묘가묘</li>
					<li id="li-style">강아지상품1</li>
					<li id="li-style">옵션:</li>
				</ul>
		</div><!-- end table_content --> 
		
		</div><!-- end check2-1 --> 
		
		 <div id="check3-1"><p id="align_text_list">2020.03.23~03.27</p></div> 
		 
		 <div id="check4-1"><p id="align_text_list">what</p></div>
		 
		 <div id="check5-1"><p id="align_text_list">the</p></div>
		</div>
		</div>
		</div>
	</div>
</body>
</html>