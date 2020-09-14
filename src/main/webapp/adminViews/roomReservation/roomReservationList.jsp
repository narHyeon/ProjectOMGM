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
.use_soon{
	color: #5AC351;
}
.use_done{
	color: #FF1300;
}
.use_using{
	color: #008DFF;
}
.reviewList_page00{
	margin-bottom: 2%;
}
.reservation_row{
	cursor: pointer;
}
tr.reservation_row td{
	border-bottom: 3px solid #ddd;
}
.reservation_head_th{
	color: black;
	font-weight: bold;
}

</style>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$(".reservation_row").click(function() {
			const reserNo = $(this).data("reserno");
			window.location.href = 'getRoomReservation.mdo?ROOMRESERVATION_NO=' + reserNo ;
		});
	});
</script>
</head>
<body>
<div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">예약 리스트</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th class="reservation_head_th">상태</th>
                      <th class="reservation_head_th">예약번호</th>
                      <th class="reservation_head_th">고객아이디</th>
                      <th class="reservation_head_th">숙박일자</th>
                      <th class="reservation_head_th">결제일시</th>
                      <th class="reservation_head_th">결제금액</th>
                    </tr>
					</thead>
					<tbody>
					<c:forEach var="reservation" items="${roomReservationList}">
					<tr class="reservation_row" data-reserno="${reservation.ROOMRESERVATION_NO}">
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
						<td>${reservation.MEMBER_ID}</td>
						<td>
							<fmt:formatDate value="${reservation.ROOMRESERVATION_STAYDAY}" type="date" pattern="yyyy/MM/dd"/>
						</td>
						<td>
							<fmt:formatDate value="${reservation.ROOMRESERVATION_PAYDAY}" type="date" pattern="yyyy/MM/dd"/><br>
							<fmt:formatDate value="${reservation.ROOMRESERVATION_PAYDAY}" type="date" pattern="hh:mm:ss"/>
						</td>
						<td><fmt:formatNumber value="${reservation.ROOMRESERVATION_FIANLFEE}" />원</td>
						
                    </tr>
                 </c:forEach>   
                </tbody>
                </table>
              </div>
            </div>
            		<div class="reviewList_page00" align="center">
	<a href="roomReservationList.mdo" class="reviewList_page01">&lt;&lt;</a>
	<a href="roomReservationList.mdo?page=${navi.startPageGroup-1}" class="reviewList_page01">&lt;</a>
	<c:forEach var="counter" begin="${navi.startPageGroup}" end="${navi.endPageGroup}">
		<c:if test="${page == counter}">	
			<a href="roomReservationList.mdo?page=${counter}" class="reviewList_page" style="background-color:orange ">&nbsp;${counter}</a>
		</c:if>
		<c:if test="${page != counter}">
			<a href="roomReservationList.mdo?page=${counter}" class="reviewList_page" >&nbsp;${counter}</a>
		</c:if>
	</c:forEach>
	<a href="roomReservationList.mdo?page=${navi.endPageGroup+1}" class="reviewList_page01">&gt;</a> 
	<a href="roomReservationList.mdo?page=${navi.totalRecordsCount}" class="reviewList_page01">&gt;&gt;</a>
</div><!-- end paging -->
          </div>
</body>
</html>