<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        #kinderGarden_reservation_table input {
            width: 100%;
            border: none;
        }
        .admin_kindergarden_schedule_button {
            display: flex;
            flex-direction: row;
        }
        .admin_kindergarden_schedule_button a {
            margin: 5px;
            width:50%;
        }
    </style>
</head>
<body>
<!-- DataTales Example -->
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-info">유치원 예약 현황</h6>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="kinderGarden_reservation_table" width="100%" cellspacing="0">
                <thead>
                <tr>
                    <th>번호</th>
                    <th>과정</th>
                    <th>보호자명</th>
                    <th>반려동물</th>
                    <th>반려동물 나이</th>
                    <th>핸드폰</th>
                    <th>이메일</th>
                    <th>우편번호</th>
                    <th>주소</th>
                    <th>기타 애완동물 관련사항</th>
                    <th>고유번호</th>
                    <th>결제방법</th>
                </tr>
                </thead>
                <tbody>
                    <c:forEach var="reser" items="${reservation}">
                        <tr>
                            <th><input type="text" value="${reser.seq}"></th>
                            <th><input type="text" value="${reser.name}"></th>
                            <th><input type="text" value="${reser.buyerName}"></th>
                            <th><input type="text" value="${reser.animal}"></th>
                            <th><input type="text" value="${reser.animalAge}"></th>
                            <th><input type="text" value="${reser.phone}"></th>
                            <th><input type="text" value="${reser.email}"></th>
                            <th><input type="text" value="${reser.zipcode}"></th>
                            <th><input type="text" value="${reser.address}"></th>
                            <th><input type="text" value="${reser.etc}"></th>
                            <th><input type="text" value="${reser.merchantUid}"></th>
                            <th><input type="text" value="${reser.pgProvider}"></th>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
<div class="admin_kindergarden_schedule_button">
    <a href="login.html" class="btn btn-info btn-user ">초기화</a>
    <a href="login.html" class="btn btn-success btn-user ">적용</a>
</div>
</body>
</html>
