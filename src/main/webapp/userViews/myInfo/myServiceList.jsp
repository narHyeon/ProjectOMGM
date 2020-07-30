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
<link rel="apple-touch-icon-precomposed"
	href="images/icon/flat-design-touch.png">
<style type="text/css">
#FAQ_Search {
	display: flex;
	flex-direction: row;
	flex-grow: 20%;
	margin-bottom: 1%;
}

ahover {
	position: relative;
	float: left;
	display: block;
	width: 100%;
	z-index: 999;
	background: #ccc;
}

ahover:hover {
	background: #444;
	color: #fff;
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

.service_kind {
	color: #347F77;
}
</style>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$(".main1").click(function(){
		window.location.href = 'getMyService.do';
	});
});
</script>
</head>
<body>
	<div id="content">
		<section class="content_section">
			<div class="content_row_1">
				<div id="FAQ_Search">
					<h1 class="service_kind">이용중인 서비스</h1>
				</div>
				<hr style="border: solid 0.8px #9D9CA3;">
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
				<div id="FAQ_Search">
					<h1 class="service_kind">이용예정 서비스</h1>
				</div>
				<hr style="border: solid 0.8px #9D9CA3;">
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
				<div id="FAQ_Search">
					<h1 class="service_kind">이용했던 서비스</h1>
				</div>
				<hr style="border: solid 0.8px #9D9CA3;">
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
		</section>
	</div>
</body>
</html>