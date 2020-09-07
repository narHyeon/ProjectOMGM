<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: YongSun Jang
  Date: 2020-07-31
  Time: 오후 4:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>Title</title>
</head>
<body>
	<!-- DataTales Example -->
	<div class="card shadow mb-4">
		<div class="card-header py-3">
			<h6 class="m-0 font-weight-bold text-info">픽업 서비스 관리</h6>
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<table class="table table-bordered" id="dataTable" width="100%"
					cellspacing="0">
					<thead>
						<tr>
							<th>예약번호</th>
							<th>예약자 ID</th>
							<th>예약날짜</th>
							<th>예약시간</th>
							<th>픽업할주소</th>
							<th>연락처</th>
							<th>반려동물 종류</th>
							<th>특이사항</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach var="pickUp" items="${pickUp}" varStatus="status" >
						<tr class="ROOMRESERVATION_NO${pickUp.ROOMRESERVATION_NO}">
							<th id="ROOMRESERVATION_NO">${pickUp.ROOMRESERVATION_NO}</th>
							<th>${pickUpInfo[status.index].id}</th>
							<th>${pickUp.ROOMRESERVATION_PAYDAY}</th>
							<th>${pickUp.ROOMRESERVATION_PICKUPTIME}</th>
							<th>${pickUp.ROOMRESERVATION_PICKUPADDRESS}</th>
							<th>${pickUp.ROOMRESERVATION_PICKUPPHONENUM}</th>
							<th>${pickUp.ROOMRESERVATION_USEPOINT}</th>
							<th>${pickUp.ROOMRESERVATION_USEPOINT}</th>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>
