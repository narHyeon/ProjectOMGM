<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.reserve_info_key{
	background-color: #36b9cc;
	color: white;
	width: 20%;
}
.reserve_info_value{
	width: 30%;
}
#reserve_buttons{
	float: right;
	margin-bottom: 2%;
}
</style>
<script type="text/javascript">
$(document).ready(function() {
	$("#reserve_bt_goList").click(function() {
		window.location.href = 'roomReservationList.mdo';
	});
});
</script>
</head>
<div class="card shadow mb-4">
	<div class="card-header py-3">
		<h6 class="m-0 font-weight-bold text-primary">예약 정보</h6>
	</div>
	<div class="card-body">
		<div class="table-responsive">
			<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
				<tbody>
					<tr>
						<td class="reserve_info_key">예약번호</td>
						<td class="reserve_info_value">${reservationInfo.ROOMRESERVATION_NO}</td>
						<td class="reserve_info_key">고객번호</td>
						<td class="reserve_info_value">${reservationInfo.ROOMRESERVATION_MEMBERNO}</td>
					</tr>
					<tr>
						<td class="reserve_info_key">고객 아이디</td>
						<td class="reserve_info_value">${reservationInfo.MEMBER_ID}</td>
						<td class="reserve_info_key">숙박일자</td>
						<td class="reserve_info_value">
							<fmt:formatDate value="${reservationInfo.ROOMRESERVATION_STAYDAY}" type="date" pattern="yyyy년 MM월 dd일"/>
						</td>						
					</tr>
					<tr>
						<td class="reserve_info_key">방이름</td>
						<td class="reserve_info_value">${reservationInfo.ROOMRESERVATION_ROOMNAME}</td>
						<td class="reserve_info_key">픽업신청여부</td>
						<td class="reserve_info_value">
						<c:choose>
							<c:when test="${reservationInfo.ROOMRESERVATION_PICKUPYN eq 'Y'}">신청함</c:when>
							<c:otherwise>신청안함</c:otherwise>
						</c:choose>
						</td>
					</tr>
					<tr>
						<td class="reserve_info_key">사료명</td>
						<td class="reserve_info_value">${reservationInfo.ROOMRESERVATION_FOODNAME}</td>
						<td class="reserve_info_key">장난감명</td>
						<td class="reserve_info_value">${reservationInfo.ROOMRESERVATION_TOYNAME}</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	</div>
	<div class="card shadow mb-4">
	<div class="card-header py-3">
		<h6 class="m-0 font-weight-bold text-primary">결제 정보</h6>
	</div>
	<div class="card-body">
		<div class="table-responsive">
			<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
				<tbody>
					<tr>
						<td class="reserve_info_key">결제일자</td>
						<td class="reserve_info_value">
							<fmt:formatDate value="${reservationInfo.ROOMRESERVATION_PAYDAY}" type="date" pattern="yyyy년 MM월 dd일"/> /
							<fmt:formatDate value="${reservationInfo.ROOMRESERVATION_PAYDAY}" type="date" pattern="hh시 mm분 ss초"/>
						</td>
						<td class="reserve_info_key">사용한 포인트</td>
						<td class="reserve_info_value">
							<fmt:formatNumber value="${reservationInfo.ROOMRESERVATION_USEPOINT}" />P	
						</td>
					</tr>
					<tr>
						<td class="reserve_info_key">방 이용요금</td>
						<td class="reserve_info_value">
							<fmt:formatNumber value="${reservationInfo.ROOMRESERVATION_ROOMPRICE}" />원
						</td>
						<td class="reserve_info_key">방 할인률</td>
						<td class="reserve_info_value">
							<fmt:formatNumber value="${reservationInfo.ROOMRESERVATION_ROOMSALERATE}" />%
						</td>
					</tr>
					<tr>
						<td class="reserve_info_key">최종 결제금액</td>
						<td class="reserve_info_value">
							<fmt:formatNumber value="${reservationInfo.ROOMRESERVATION_FIANLFEE}" />원
						</td>
						<td class="reserve_info_key">적립 포인트</td>
						<td class="reserve_info_value">
							<fmt:formatNumber value="${reservationInfo.ROOMRESERVATION_PLUSPOINT}" />P
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	</div>
	<div id="reserve_buttons">
		<div class="btn btn-success btn-icon-split" id="reserve_bt_goList">
			<span class="icon text-white-50">
				<i class="fas fa-check"></i>	
			</span>
			<span class="text">예약 리스트로</span>
    	</div>
	</div>     
	</body>
</html>