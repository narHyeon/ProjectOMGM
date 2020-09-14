<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title></title>
</head>
<link rel="stylesheet" type="text/css"
	href="resources/style/getRoomReservation/getReser.css">
<link rel="stylesheet" type="text/css"
	href="resources/style/getRoomReservation/getReser2.css">
<style>
#payreservation_wrap {
	display: flex;
	flex-direction: column;
	margin-top: 2%;
	margin-left: 15%;
	margin-right: 15%;
	margin-bottom: 2%;
}

#payreservation_head {
	min-width: 60%;
	margin-top: 2%;
	margin-bottom: 2%;
	font-size: 20px;
	padding-bottom: 1%;
	border-bottom: 2px solid #FFABB9;
}

#payreservation_head2 {
	min-width: 60%;
	margin-top: 2%;
	margin-bottom: 2%;
	font-size: 20px;
	padding-bottom: 1%;
	border-bottom: 2px solid #21F0A1;
}

#board_table {
	border: 1px solid #444444;
}

.reservation_td_key {
	border: 1px solid #F28888;
	height: 56px;
	background: #FFABB9;
	padding-top: 20px;
}

.reservation_td_value {
	border: 1px solid #F28888;
	height: 56px;
	padding-left: 2%;
	padding-top: 20px;
}

.reservationpay_td_key {
	border: 1px solid #1fc485;
	height: 56px;
	background: #21F0A1;
	padding-top: 20px;
}

.reservationpay_td_value {
	border: 1px solid #1fc485;
	height: 56px;
	padding-left: 2%;
	padding-top: 20px;
}

#point_button {
	margin-left: 5%;
	border: 1px solid #1fc485;
	color: white;
	background: #1fc485;
	cursor: pointer;
	height: 55%;
	width: 25%;
	margin-top: 12px;
}

#point_text {
	border: 1px solid #1fc485;
	height: 55%;
	width: 60%;
	margin-top: 12px;
	color: black;
}

#point_tr {
	padding-top: 0px;
}

#goListBt {
	border: 1px solid #F28888;
	color: white;
	background: #F28888;
	cursor: pointer;
	width: 12%;
	height: 38px;
	float: right;
}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		$("#goListBt").click(function() {
			window.location.href = 'myCatCareLogList.do';
		});
	});
</script>
<body>
	<div id="payreservation_wrap">
		<div id="payreservation_head">
			<h1>냥박 정보</h1>
		</div>
		<section class="content_section">
			<table class="board_table">
				<tbody>
					<tr>
						<td class="reservation_td_key">냥박 번호</td>
						<td class="reservation_td_value">${catcarelogInfo.CATCARELOG_NO}</td>
						<td class="reservation_td_key">고객 아이디</td>
						<td class="reservation_td_value">${catcarelogInfo.MEMBER_ID}</td>
					</tr>
					<tr>
						<td class="reservation_td_key">냥박 시작</td>
						<td class="reservation_td_value">${catcarelogInfo.CATCARELOG_CARESTART}</td>
						<td class="reservation_td_key">냥박 종료</td>
						<td class="reservation_td_value">${catcarelogInfo.CATCARELOG_CAREEND}</td>
					</tr>
					<tr>
						<td class="reservation_td_key">작성자</td>
						<td class="reservation_td_value">${catcarelogInfo.WRITER_ID}</td>
						<td class="reservation_td_key">작성일시</td>
						<td class="reservation_td_value">
						<fmt:formatDate value="${catcarelogInfo.CATCARELOG_REGDATE}" type="date" pattern="yyyy년 MM월 dd일"/>/
						<fmt:formatDate value="${catcarelogInfo.CATCARELOG_REGDATE}" type="date" pattern="hh시 mm분 ss초"/>
						</td>
					</tr>
				</tbody>
			</table>
		</section>
		<div id="payreservation_head">
			<h1>제목 : ${catcarelogInfo.CATCARELOG_TITLE}</h1>
		</div>
		<div>
			${catcarelogInfo.CATCARELOG_CONTENT}
		</div>
		<div id="payreservation_head">
			<h1></h1>
		</div>
		<div id="div_paysubmitbtarea">
			<input type="button" value="냥박일지 리스트" id="goListBt">
		</div>
	</div>
</body>
</html>