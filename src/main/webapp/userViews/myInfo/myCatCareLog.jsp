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
<script src="js/jquery.min.js"></script>
<script src="js/flat.min.js"></script>
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<script type="text/javascript">
      $(document).ready(function(){
         $(".sub").hide();
         $("#main1").click(function(){
            $("#sub0").slideToggle("fast");
            $("#sub1").slideToggle("fast");
            $("#sub2").slideToggle("fast");
            $("#sub3").slideToggle("fast");
         });
      });
   </script>
<style type="text/css">
#FAQ_Search {
	display: flex;
	flex-direction: row;
	flex-grow: 20%;
	margin-bottom: 1%;
}

#sub0 {
	background: #F28888;
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

.main:hover {
	cursor: pointer;
}
</style>
</head>
<body>
	<div id="wrap">
		
		<section class="content_section">
			<div class="content_row_1">
				<div id="FAQ_Search">
					<h1>냥박일지</h1>
				</div>
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
						<tr class="main" id="main1">
							<td>1234</td>
							<td>스위트룸</td>
							<td>2020-07-27<br>09:00
							</td>
							<td>2020-07-27<br>15:00
							</td>
						</tr>
					</tbody>
					<thead>
						<tr class="sub" id="sub0">
							<th>순서</th>
							<th>냥박제목</th>
							<th>냥박시작</th>
							<th>냥박종료</th>
						</tr>
					</thead>
					<tbody>
						<tr class="sub" id="sub1">
							<td>1</td>
							<td>아침부터 기여운 냥냥이</td>
							<td>09:00</td>
							<td>11:00</td>
						</tr>
						<tr class="sub" id="sub2">
							<td>2</td>
							<td>아점먹는 냥냥이</td>
							<td>11:00</td>
							<td>13:00</td>
						</tr>
						<tr class="sub" id="sub3">
							<td>3</td>
							<td>아점먹고 낮잠자는 냥냥이</td>
							<td>13:00</td>
							<td>15:00</td>
						</tr>
					</tbody>
				</table>
			</div>
		</section>
	</div>
</body>
</html>