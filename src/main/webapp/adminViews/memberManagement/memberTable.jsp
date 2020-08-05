<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
</head>
<body>
<!-- DataTales Example -->
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">주문현황</h6>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="order_table" width="100%" cellspacing="0">
                <thead>
                <tr>
                    <th>회원번호</th>
                    <th>ID</th>
                    <th>이름</th>
                    <th>전화번호</th>
                    <th>우편번호</th>
                    <th>주소</th>
                    <th>POINT</th>
                    <th>RANK</th>
                    <th>가입날짜</th>
                    <th>CODE</th>
                </tr>
                </thead>
                <tbody>
                <form action="productStatusDelete.mdo">
                    <c:forEach var="pro_status" items="${pro_status}">
                        <input type="hidden" name="order_status_no" value="${pro_status.order_status_no}">
                        <tr>
                            <th>${pro_status.order_status_no}</th>
                            <th>${pro_status.order_status_id}</th>
                            <th>${pro_status.order_status_date}</th>
                            <th>${pro_status.order_status_state}</th>
                            <th>${pro_status.order_status_phone}</th>
                            <th>${pro_status.order_status_memo}</th>
                            <th><button  type="submit" class="btn btn-primary btn-delete">삭제</button></th>
                        </tr>
                    </c:forEach>
                </form>
                </tbody>
            </table>
        </div>
    </div>
</div>

</body>
</html>
