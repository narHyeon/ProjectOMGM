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

#div_paysubmitbtarea {
	margin-top: 2%;
}

#goListBt {
	border: 1px solid #1fc485;
	color: white;
	background: #1fc485;
	cursor: pointer;
	width: 12%;
	height: 38px;
	float: right;
}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		$("#goListBt").click(function() {
			window.location.href = 'myRoomReservationList.do';
		});
	});
</script>
<body>
	<div id="payreservation_wrap">
		<div id="payreservation_head">
			<h1>예약 정보</h1>
		</div>
		<section class="content_section">
			<table class="board_table">
				<tbody>
					<tr>
						<td class="reservation_td_key">예약번호</td>
						<td class="reservation_td_value">${reservationInfo.ROOMRESERVATION_NO}</td>
						<td class="reservation_td_key">숙박일자</td>
						<td class="reservation_td_value">
						<fmt:formatDate value="${reservationInfo.ROOMRESERVATION_STAYDAY}" type="date" pattern="yyyy년 MM월 dd일"/>
						</td>
					</tr>
					<tr>
						<td class="reservation_td_key">방이름</td>
						<td class="reservation_td_value">${reservationInfo.ROOMRESERVATION_ROOMNAME}</td>
						<td class="reservation_td_key">픽업신청여부</td>
						<td class="reservation_td_value">
						<c:choose>
							<c:when test="${reservationInfo.ROOMRESERVATION_PICKUPYN eq 'Y'}">신청함</c:when>
							<c:otherwise>신청안함</c:otherwise>
						</c:choose>
						</td>
					</tr>
					<tr>
						<td class="reservation_td_key">사료명</td>
						<td class="reservation_td_value">${reservationInfo.ROOMRESERVATION_FOODNAME}</td>
						<td class="reservation_td_key">장난감명</td>
						<td class="reservation_td_value">${reservationInfo.ROOMRESERVATION_TOYNAME}</td>
					</tr>
				</tbody>
			</table>
		</section><div id="payreservation_head2">
			<h1>결제 정보</h1>
		</div>
		<section class="content_section">
			<table class="board_table">
				<tbody>
					<tr>
						<td class="reservationpay_td_key">결제일시</td>
						<td class="reservationpay_td_value">
						<fmt:formatDate value="${reservationInfo.ROOMRESERVATION_PAYDAY}" type="date" pattern="yyyy년 MM월 dd일"/> /
						<fmt:formatDate value="${reservationInfo.ROOMRESERVATION_PAYDAY}" type="date" pattern="hh시 mm분 ss초"/>
						</td>
							<td class="reservationpay_td_key">사용한 포인트</td>
						<td class="reservationpay_td_value">
						<fmt:formatNumber value="${reservationInfo.ROOMRESERVATION_USEPOINT}" />P
						</td>
					</tr>
					<tr>
						<td class="reservationpay_td_key">방 이용요금</td>
						<td class="reservationpay_td_value">
						<fmt:formatNumber value="${reservationInfo.ROOMRESERVATION_ROOMPRICE}" />원
						</td>
						<td class="reservationpay_td_key">방 할인률</td>
						<td class="reservationpay_td_value">
						<fmt:formatNumber value="${reservationInfo.ROOMRESERVATION_ROOMSALERATE}" />%
						</td>
					</tr>
					<tr>
						<td class="reservationpay_td_key">최종 결제금액</td>
						<td class="reservationpay_td_value">
						<fmt:formatNumber value="${reservationInfo.ROOMRESERVATION_FIANLFEE}" />원
						</td>
						<td class="reservationpay_td_key">적립 포인트</td>
						<td class="reservationpay_td_value">
						<fmt:formatNumber value="${reservationInfo.ROOMRESERVATION_PLUSPOINT}" />P
						</td>
					</tr>
				</tbody>
			</table>
		</section>
		<div id="div_paysubmitbtarea">
			<input type="button" value="예약 리스트" id="goListBt">
		</div>
	</div>
</body>
</html>