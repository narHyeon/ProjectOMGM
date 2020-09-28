<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" type="text/css"
	href="resources/style/myRoomReservationList/myReservation.css">
<link rel="stylesheet" type="text/css"
	href="resources/style/myRoomReservationList/myReservation2.css">
<link rel="shortcut icon" href="images/favicon/favicon.ico">
<!-- 페이징 디자인  -->
<link type="text/css" rel="stylesheet" href="resources/style/review/reviewListBoard.css">
<style type="text/css">
#wrap {
	display: flex;
	flex-direction: column;
}

#head {
	min-width: 60%;
	width: 70%;
	margin-top: 4%;
	margin-left: 15%;
	margin-bottom: 2%;
	font-size: 20px;
	padding-bottom: 1%;
	border-bottom: 2px solid #FFABB9;
}
#content {
	display: flex;
	flex-direction: column;
	margin-left: 15%;
	width: 70%;
	height: 100%;
}
#body {
	display: flex;
	flex-direction: row;
	height: 100%;
	margin-bottom: 5%;
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

.main1:hover {
	cursor: pointer;
}
.use_soon{
	color: #5AC351;
}
.use_done{
	color: #FF1300;
}
.use_using{
	color: #008DFF;
}
.reviewList_page{
	text-align: center;
}
.reviewList_page00{
	margin-top: 2%;
}
</style>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$(".main1").click(function() {
			const reserNo = $(this).data("reserno");
			window.location.href = 'getMyRoomReservation.do?ROOMRESERVATION_NO=' + reserNo ;
		});
	});
</script>
</head>
<body>
	<div id="wrap">
		<div id="head">
			<h1>예약 정보</h1>
		</div>
		<div id="body">
			<div id="content">
				<div id="tables">
					<table class="board_table">
						<thead id="thead">
							<tr>
								<th id="t1">상태</th>
								<th id="t2">예약번호</th>
								<th id="t3">방이름</th>
								<th id="t4">숙박일자</th>
								<th id="t5">결제일시</th>
								<th id="t6">결제금액</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="reservation" items="${reservationList}" varStatus="num">
								<tr class="main1" data-reserno="${reservation.ROOMRESERVATION_NO}">
								<c:set var="todayTime"><fmt:formatDate value="${reservation.ROOMRESERVATION_NOWDATE}" pattern="yyyy-MM-dd"/></c:set> 
								<c:set var="stayTime"><fmt:formatDate value="${reservation.ROOMRESERVATION_STAYDAY}" pattern="yyyy-MM-dd"/></c:set>
									<c:choose>
										<c:when test="${stayTime gt todayTime}">
											<td class="use_soon">이용예정</td>																					
										</c:when>
										<c:when test="${stayTime lt todayTime}">
											<td class="use_done">이용완료</td>
										</c:when>
										<c:otherwise>
											<td class="use_using">이용중</td>
										</c:otherwise>
									</c:choose>
									<td>${reservation.ROOMRESERVATION_NO}</td>
									<td>${reservation.ROOMRESERVATION_ROOMNAME}</td>
									<td>
										<fmt:formatDate value="${reservation.ROOMRESERVATION_STAYDAY}" type="date" pattern="yyyy/MM/dd"/>
									</td>
									<td>
										<fmt:formatDate value="${reservation.ROOMRESERVATION_PAYDAY}" type="date" pattern="yyyy/MM/dd"/><br>
										<fmt:formatDate value="${reservation.ROOMRESERVATION_PAYDAY}" type="date" pattern="hh:mm:ss"/>
									</td>
									<td><fmt:formatNumber type="currency" value="${reservation.ROOMRESERVATION_FIANLFEE}" /></td>
								</tr>
							</c:forEach>
						</tbody>
					</table><br>
							
							<div class="reviewList_page00">
	<a href="myRoomReservationList.do" class="reviewList_page01">&lt;&lt;</a>
	<a href="myRoomReservationList.do?page=${navi.startPageGroup-1}" class="reviewList_page01">&lt;</a>
	<c:forEach var="counter" begin="${navi.startPageGroup}" end="${navi.endPageGroup}">
		<c:if test="${page == counter}">	
			<a href="myRoomReservationList.do?page=${counter}" class="reviewList_page" style="background-color:orange ">&nbsp;${counter}</a>
		</c:if>
		<c:if test="${page != counter}">
			<a href="myRoomReservationList.do?page=${counter}" class="reviewList_page" >&nbsp;${counter}</a>
		</c:if>
	</c:forEach>
	<a href="myRoomReservationList.do?page=${navi.endPageGroup+1}" class="reviewList_page01">&gt;</a> 
	<a href="myRoomReservationList.do?page=${navi.totalRecordsCount}" class="reviewList_page01">&gt;&gt;</a>
</div><!-- end paging -->
				</div>
			</div>
		</div>
	</div>
</body>
</html>