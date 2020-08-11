<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        .kinderGarden_reservation_table input {
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

        .reservation_head_tr th:nth-child(1) {
            width: 5%;
        }
        .reservation_head_tr th:nth-child(2) {
            width: 25%;
        }
        .reservation_head_tr th:nth-child(3), .reservation_head_tr th:nth-child(4),
        .reservation_head_tr th:nth-child(5), .reservation_head_tr th:nth-child(6){
            width: 9%;
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
            <table class="table table-bordered" class="kinderGarden_reservation_table" width="100%" cellspacing="0">
                <h6 class="m-0 font-weight-bold text-info">예약 확인</h6>
                <thead>
                    <tr class="reservation_head_tr">
                        <th>번호</th>
                        <th>과정</th>
                        <th>서비스</th>
                        <th>보호자명</th>
                        <th>반려동물</th>
                        <th>동물 나이</th>
                        <th>핸드폰</th>
                        <th>관련사항</th>
                        <th>상태</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="reser" items="${reservation}">
                        <c:if test="${reser.state == '확인'}">
                            <tr>
                                <th>${reser.seq}</th>
                                <th>${reser.name}</th>
                                <th>${reser.service}</th>
                                <th>${reser.buyerName}</th>
                                <th>${reser.animal}</th>
                                <th>${reser.animalAge}</th>
                                <th>${reser.phone}</th>
                                <th>${reser.etc}</th>
                                <th><a href="#" id="delete_reservation_select${reser.seq}" class="btn btn-danger btn-circle btn-sm" onclick="deleteReservation(event)">
                                    <i class="fas fa-trash" value="${reser.seq}"></i>
                                </a> 예약취소</th>
                            </tr>
                        </c:if>
                    </c:forEach>
                </tbody>
            </table>

            <table class="table table-bordered" class="kinderGarden_reservation_table" width="100%" cellspacing="0">
                <h6 class="m-0 font-weight-bold text-info">예약 미확인</h6>
                <thead>
                <tr class="reservation_head_tr">
                    <th>번호</th>
                    <th>과정</th>
                    <th>서비스</th>
                    <th>보호자명</th>
                    <th>반려동물</th>
                    <th>동물 나이</th>
                    <th>핸드폰</th>
                    <th>관련사항</th>
                    <th>상태</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="reser" items="${reservation}">
                    <c:if test="${reser.state == '미확인'}">
                        <tr>
                            <th>${reser.seq}</th>
                            <th>${reser.name}</th>
                            <th>${reser.service}</th>
                            <th>${reser.buyerName}</th>
                            <th>${reser.animal}</th>
                            <th>${reser.animalAge}</th>
                            <th>${reser.phone}</th>
                            <th>${reser.etc}</th>
                            <th><div class="custom-control custom-checkbox small">
                                <input type="checkbox" class="custom-control-input" id="customCheck${reser.seq}" value="${reser.seq}">
                                <label class="custom-control-label" for="customCheck${reser.seq}">예약확인</label>
                            </div></th>
                        </tr>
                    </c:if>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
<div class="admin_kindergarden_schedule_button">
    <a href="kinderGardenReservation.mdo" class="btn btn-info btn-user ">초기화</a>
    <a href="#" class="btn btn-success btn-user" onclick="checkBox()">적용</a>
</div>
</body>
<script>
    function checkBox() {
        const cbox = document.querySelectorAll('.custom-control-input');
        cbox.forEach((item,index) => {
            if(item.checked) checkReservation(item.value);
            if(index === cbox.length-1) window.location.reload();
        });

    }

    function checkReservation(value) {
        const xhr = new XMLHttpRequest();
        xhr.open('POST','checkReservation.mdo',true);
        xhr.setRequestHeader('content-type','application/json');
        const data = { seq: value };
        xhr.send(JSON.stringify(data));
    }

    function deleteReservation(event) {
        event.preventDefault();

        console.log(event.target);
    }
</script>
</html>
