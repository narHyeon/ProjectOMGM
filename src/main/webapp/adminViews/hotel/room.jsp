<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        #room_reservation_table input {
            width: 100%;
            border: none;
        }
        .admin_room_schedule_button a {
            margin: 30px;
            width:50%;
        }
        .admin_room_button{
            margin: 0 auto;
            padding-left: 1300px;
            position: absolute;
            top:10px;
        }
        /*.admin_del_button{*/
        /*    margin: 0 auto;*/
        /*    padding-left: 1300px;*/
        /*    position: absolute;*/
        /*    top:10px;*/

        /*}*/
    </style>
</head>
<body>
<!-- DataTales Example -->
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-info">객실관리</h6>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="room_reservation_table" width="100%" cellspacing="0">
                <thead>
                <tr>
                    <th>객실번호</th>
                    <th>객실이미지</th>
                    <th>객실명</th>
                    <th>면적(m2)</th>
                    <th>반려동물 수</th>
                    <th>요금</th>
                    <th>삭제</th>
                </tr>
                </thead>
                <tbody>
                <input type="hidden" name="">
                <c:forEach var="hotel" items="${hotel}">
                    <tr>
                        <th>${hotel.hotelNo}</th>
                        <th><img src="../../resources/img/product/${hotel.hotelImg}" class="img" width="100px" alt=""></th>
                        <th>${hotel.hotelName}</th>
                        <th>${hotel.hotelSize}</th>
                        <th>${hotel.hotelAnimalNum}</th>
                        <th>${hotel.hotelPrice}</th>
                        <th><a href="deleteHotel.mdo?hotelNo=${hotel.hotelNo}" style="color:white; width:100px;" class="btn btn-success btn-user">삭제</a></th>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
    <div class="admin_room_button">
        <a href="hotelRegister.mdo" class="btn btn-success btn-user">객실등록</a>
    </div>
</div>
</body>
</html>
