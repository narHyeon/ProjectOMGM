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
                </tr>
                </thead>
                <tbody>
                <form action="productStatusDelete.mdo">
                    <c:forEach var="members" items="${memberTable}">
                        <tr>
                            <th>${members.seq}</th>
                            <th>${members.id}</th>
                            <th>${members.name}</th>
                            <th>${members.phone}</th>
                            <th>${members.zipcode}</th>
                            <th>${members.address}</th>
                            <th>${members.point}</th>
                            <th>${members.rank}</th>
                            <th>${members.regDate}</th>
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
