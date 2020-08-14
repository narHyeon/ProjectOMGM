<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
<title></title>
<link rel="stylesheet" type="text/css"
	href="resources/style/faq/faq.css">
<link rel="stylesheet" type="text/css"
	href="resources/style/faq/faq2.css">
<link rel="shortcut icon" href="images/favicon/favicon.ico">
<link rel="apple-touch-icon-precomposed"
	href="images/icon/flat-design-touch.png">
<style type="text/css">
#wrap {
	display: flex;
	flex-direction: column;
	height: 800px;
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
	margin-bottom: 3%;
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
	width: 60%;
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

.hideth {
	background: #F28888;
}

.maintr:hover {
	cursor: pointer;
}

#insertbt {
	height: 20pt;
	width: 10%;
	margin-top: 2%;
	margin-left: 90%;
	background-color: white;
	cursor: pointer;
	border: 2px solid #e2e2e2;
	font-size: 13px;
	color: purple;
}
</style>
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$(".hideth").hide();
		$(".hidetr").hide();
		$("#maintr1").click(function() {
			$("#hideth1").slideToggle("fast");
			$("#hidetr1").slideToggle("fast");
			$("#hidetr2").slideToggle("fast");
			$("#hidetr3").slideToggle("fast");
		});
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
	
function goWrite() {
	window.location.href = 'writeCatCareLog.do';
}
	
	
	
</script>
</head>
<body>
	<div id="wrap">
		<div id="head">
			<h1>My CatCare</h1>
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
				<table class="board_table">
					<thead>
						<tr>
							<th>방 예약번호</th>
							<th>빌린 방</th>
							<th>사용 시작 일시</th>
							<th>사용 종료 일시</th>
						</tr>
					</thead>
					<tbody>
						<tr class="maintr" id="maintr1">
							<td>1234</td>
							<td>스위트룸</td>
							<td>2020-07-27<br>09:00
							</td>
							<td>2020-07-27<br>15:00
							</td>
						</tr>
					</tbody>
					<thead>
						<tr class="hideth" id="hideth1">
							<th>순서</th>
							<th>냥박제목</th>
							<th>냥박시작</th>
							<th>냥박종료</th>
						</tr>
					</thead>
					<tbody>
						<tr class="hidetr" id="hidetr1">
							<td>1</td>
							<td>아침부터 기여운 냥냥이</td>
							<td>09:00</td>
							<td>11:00</td>
						</tr>
						<tr class="hidetr" id="hidetr2">
							<td>2</td>
							<td>아점먹는 냥냥이</td>
							<td>11:00</td>
							<td>13:00</td>
						</tr>
						<tr class="hidetr" id="hidetr3">
							<td>3</td>
							<td>아점먹고 낮잠자는 냥냥이</td>
							<td>13:00</td>
							<td>15:00</td>
						</tr>
					</tbody>
				</table>
				<input type="button" onclick="goWrite()" value="냥박일지 작성"
					id="insertbt">
			</div>
		</div>

	</div>
</body>
</html>