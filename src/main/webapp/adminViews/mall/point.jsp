<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%--
  Created by IntelliJ IDEA.
  User: Jury
  Date: 2020-08-03
  Time: 오후 6:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<style>
#point_table input {
	width: 100%;
	border: none;
}

.plus_point {
	color: blue;
}
</style>
</head>
<body>
	<!-- DataTales Example -->
	<div class="card shadow mb-4">
		<div class="card-header py-3">
			<h6 class="m-0 font-weight-bold text-info">포인트적립</h6>
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<table class="table table-bordered" id="order_table" width="100%"
					cellspacing="0">
					<thead>
						<tr>
							<th>일자</th>
							<th>ID</th>
							<th>관련주문</th>
							<th>증감</th>
						</tr>
					</thead>
					<tbody>

						<c:forEach var="pointAdd" items="${pointAdd}">
							<input type="hidden" name="order_status_no"
								value="${pointAdd.order_status_no}">
							<tr>
								<th><fmt:formatDate value="${pointAdd.order_status_date}"
										pattern="yyyy-MM-dd" /></th>
								<th>${pointAdd.order_status_id}</th>
								<th>${pointAdd.order_status_name}</th>
								<th class="plus_point">${pointAdd.order_status_point_used}</th>
							</tr>
						</c:forEach>

					</tbody>
				</table>
			</div>
		</div>
	</div>

</body>
</html>
