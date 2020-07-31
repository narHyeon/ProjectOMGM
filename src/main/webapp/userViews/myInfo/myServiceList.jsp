<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
<title>FLAT DESIGN - 문의사항</title>
<link rel="stylesheet" type="text/css"
	href="resources/style/faq/faq.css">
<link rel="stylesheet" type="text/css"
	href="resources/style/faq/faq2.css">
<link rel="shortcut icon" href="images/favicon/favicon.ico">
<style type="text/css">
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

#tables {
	display: flex;
	flex-direction: column;
}

#FAQ_Search {
	display: flex;
	flex-direction: row;
}

.line {
	display: flex;
	flex-direction: column;
	width: 100%;
	height: 20px;
	margin-bottom: 0.5%;
}

.ul-1 {
	width: 100%;
	border-top: 1px solid #e2e2e2;
	border-bottom: 1px solid #e2e2e2;
	border-right: 1px solid #e2e2e2;
}

#liststyle {
	list-style-type: none;
	float: left;
	border-left: 1px solid #e2e2e2;
	padding: 0.5%;
	color: gray;
	font-size: 12px;
	font: 정선동강;
	padding-left: 2%;
	padding-right: 2%;
}

#thead1 {
	color: #fff;
	background: #9999FF;
}

#thead2 {
	color: #fff;
	background: #21F0A1;
}

.serviceType {
	margin-bottom: 0.5%;
	font-size: 15px;
}
</style>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$(".main1").click(function() {
			window.location.href = 'getMyService.do';
		});
		$("#myPageFs").click(function(){
			window.location.href = 'myPage.do';
		});
		$("#myCatPageFs").click(function(){
			window.location.href = 'myCatPage.do';
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
</script>
</head>
<body>
	<div id="wrap">
		<div id="head">
			<h1>My Service</h1>
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
				<div id="tables">
					<div class="serviceType">
						<h1>이용중인 서비스</h1>
					</div>
					<table class="board_table">
						<thead id="thead1">
							<tr>
								<th id="t1">번호</th>
								<th id="t2">서비스 종류</th>
								<th id="t3">서비스종료 일시</th>
							</tr>
						</thead>
						<tbody>
							<tr class="main1">
								<td>1</td>
								<td>이용중인 서비스1</td>
								<td>오늘</td>
							</tr>
							<tr class="main1">
								<td>2</td>
								<td>이용중인 서비스2</td>
								<td>오늘</td>
							</tr>
						</tbody>
					</table>
				</div>
				<br />
				<div class="content_row_1">
					<div class="serviceType">
						<h1 class="service_kind">이용예정 서비스</h1>
					</div>
					<table class="board_table">
						<thead id="thead2">
							<tr>
								<th>번호</th>
								<th>서비스 종류</th>
								<th>서비스종료 일시</th>
							</tr>
						</thead>
						<tbody>
							<tr class="main1">
								<td>1</td>
								<td>이용중인 서비스1</td>
								<td>오늘</td>
							</tr>
							<tr class="main1">
								<td>2</td>
								<td>이용중인 서비스2</td>
								<td>오늘</td>
							</tr>
						</tbody>
					</table>
				</div>
				<br />
				<div class="content_row_1">
					<div class="serviceType">
						<h1 class="service_kind">이용했던 서비스</h1>
					</div>
					<table class="board_table">
						<thead id="thead">
							<tr>
								<th>번호</th>
								<th>서비스 종류</th>
								<th>서비스종료 일시</th>
							</tr>
						</thead>
						<tbody>
							<tr class="main1">
								<td>1</td>
								<td>이용했던 서비스1</td>
								<td>어제</td>
							</tr>
							<tr class="main1">
								<td>2</td>
								<td>이용했던 서비스2</td>
								<td>그재</td>
							</tr>
							<tr class="main1">
								<td>3</td>
								<td>이용했던 서비스3</td>
								<td>지난주</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>