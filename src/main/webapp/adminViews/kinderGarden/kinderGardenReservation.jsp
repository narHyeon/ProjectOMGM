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
            width: 18%;
        }
        .reservation_head_tr th:nth-child(3), .reservation_head_tr th:nth-child(4),
        .reservation_head_tr th:nth-child(5) {
            width: 9%;
        }
        .reservation_head_tr th:nth-child(6) {
            width: 5%;
        }
        .reservation_head_tr th:nth-child(7), .reservation_head_tr th:nth-child(9) {
            width: 12%;
        }

        .reservation_tbody_tr td {
            font-size: 14px;
        }

        .kinderGarden_pagination1, .kinderGarden_pagination2 {
            display: flex;
            flex-direction: row;
            justify-content: center;
        }
        .kinderGarden_pagination1 ul, .kinderGarden_pagination2 ul {
            display: flex;
            flex-direction: row;
        }
        .reser_h6 {
            margin: 10px !important;
        }

        @media all and (max-width: 1024px) {
            .reservation_head_tr th:nth-child(3), .reservation_head_tr th:nth-child(8),
            .reservation_tbody_tr td:nth-child(3), .reservation_tbody_tr td:nth-child(8) {
                display: none;
            }
        }
    </style>
</head>
<body>
<!-- DataTales Example -->
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h3 class="m-0 font-weight-bold text-info">유치원 예약 현황</h3>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" class="kinderGarden_reservation_table" width="100%" cellspacing="0">
                <h6 class="m-0 font-weight-bold text-primary reser_h6">예약 확인</h6>
                <thead>
                    <tr class="reservation_head_tr">
                        <th>번호</th>
                        <th>과정</th>
                        <th>서비스</th>
                        <th>보호자명</th>
                        <th>반려동물</th>
                        <th>나이</th>
                        <th>핸드폰</th>
                        <th>관련사항</th>
                        <th>상태</th>
                    </tr>
                </thead>
                <tbody id="reser_confirm_tbody1">
                    <c:forEach var="reser" items="${reservation}">
                        <c:if test="${reser.state == '확인'}">
                            <tr class="reservation_tbody_tr">
                                <td>${reser.seq}</td>
                                <td>${reser.name}</td>
                                <td>${reser.service}</td>
                                <td>${reser.buyerName}</td>
                                <td>${reser.animal}</td>
                                <td>${reser.animalAge}</td>
                                <td>${reser.phone}</td>
                                <td>${reser.etc}</td>
                                <td><button id="delete_reservation_select${reser.seq}" class="btn btn-danger btn-circle btn-sm" onclick="deleteReservation(event)" value="${reser.seq}">
                                    <i class="fas fa-trash" style="pointer-events: none;"></i>
                                </button> 예약취소</td>
                            </tr>
                        </c:if>
                    </c:forEach>
                </tbody>
            </table>

            <%--  pagination --%>
            <div class="kinderGarden_pagination1">
                <ul class="paginate_button page-item previous disabled"> <a href="#" class="page-link"  onclick="paging(event,tbody1,currentPage1-1,prev1,next1,pageCount1,1)">Prev</a> </ul>
                <ul></ul>
                <ul class="paginate_button page-item next"> <a href="#" class="page-link"  onclick="paging(event,tbody1,currentPage1+1,prev1,next1,pageCount1,1)">Next</a> </ul>
            </div>

            <table class="table table-bordered" class="kinderGarden_reservation_table" width="100%" cellspacing="0">
                <h6 class="m-0 font-weight-bold text-danger reser_h6">예약 미확인</h6>
                <thead>
                <tr class="reservation_head_tr">
                    <th>번호</th>
                    <th>과정</th>
                    <th>서비스</th>
                    <th>보호자명</th>
                    <th>반려동물</th>
                    <th>나이</th>
                    <th>핸드폰</th>
                    <th>관련사항</th>
                    <th>상태</th>
                </tr>
                </thead>
                <tbody id="reser_confirm_tbody2">
                <c:forEach var="reser" items="${reservation}">
                    <c:if test="${reser.state == '미확인'}">
                        <tr class="reservation_tbody_tr">
                            <td>${reser.seq}</td>
                            <td>${reser.name}</td>
                            <td>${reser.service}</td>
                            <td>${reser.buyerName}</td>
                            <td>${reser.animal}</td>
                            <td>${reser.animalAge}</td>
                            <td>${reser.phone}</td>
                            <td>${reser.etc}</td>
                            <td><div class="custom-control custom-checkbox small">
                                <input type="checkbox" class="custom-control-input" id="customCheck${reser.seq}" value="${reser.seq}">
                                <label class="custom-control-label" for="customCheck${reser.seq}">예약확인</label>
                            </div></td>
                        </tr>
                    </c:if>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

<%--  pagination --%>
<div class="kinderGarden_pagination2">
    <ul class="paginate_button page-item previous disabled"> <a href="#" class="page-link" onclick="paging(event,tbody2,currentPage2-1,prev2,next2,pageCount2,2)">Prev</a> </ul>
    <ul></ul>
    <ul class="paginate_button page-item next"> <a href="#" class="page-link"  onclick="paging(event,tbody2,currentPage2+1,prev2,next2,pageCount2,2)">Next</a> </ul>
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
        const xhr = new XMLHttpRequest();

        xhr.onload = () => {
            if(xhr.status === 200) {
                alert('예약이 취소되었습니다!');
                window.location.reload();
            }
        };

        xhr.open('POST','deleteReservation.mdo',true);
        xhr.setRequestHeader('content-type','application/json');
        const data = { seq: event.target.value };
        xhr.send(JSON.stringify(data));
    }


    // 페이지네이션 관련
    let tbody1; // 페이지네이션 몸체
    let tbody2;
    let page1; // 페이지 블럭 몸체
    let page2;
    let contentCount1 = 0; // 페이지 총 수
    let contentCount2 = 0;
    let pageCount1 = 0; // 그룹 총 수
    let pageCount2 = 0;

    let currentPage1 = 1; // 현재 페이지
    let currentPage2 = 1;

    const prev1 = document.querySelector('.kinderGarden_pagination1 ul:nth-child(1)');
    const prev2 = document.querySelector('.kinderGarden_pagination2 ul:nth-child(1)');
    const next1 = document.querySelector('.kinderGarden_pagination1 ul:nth-child(3)');
    const next2 = document.querySelector('.kinderGarden_pagination2 ul:nth-child(3)');

    // 초기화 작업
    window.addEventListener('DOMContentLoaded', () => {
        tbody1 = document.querySelectorAll('#reser_confirm_tbody1 tr');
        tbody2 = document.querySelectorAll('#reser_confirm_tbody2 tr');

        tbody1.forEach((item,index) => {
            contentCount1++;
            if(index >= 5) item.style.display = 'none';
        });
        tbody2.forEach((item,index) => {
            contentCount2++;
            if(index >= 5) item.style.display = 'none';
        });

        page1 = document.querySelector('.kinderGarden_pagination1 ul:nth-child(2)');
        page2 = document.querySelector('.kinderGarden_pagination2 ul:nth-child(2)');
        pageCount1 = Math.ceil(contentCount1/5); // 올림
        pageCount2 = Math.ceil(contentCount2/5); // 올림


        pagination(page1,pageCount1,1,currentPage1);
        pagination(page2,pageCount2,2,currentPage2);
    });

    // 페이징 처리
    function paging(event,tbody,count,prev,next,pageCount,num) {
        event.preventDefault();
        if(num === 1) currentPage1 = count;
        else currentPage2 = count;

        pagePick(event.target.parentNode.parentNode,count);

        tbody.forEach((item,index) => {
            index++;
            if((5*count)-5 < index && index <= 5*count) item.style.display = '';
            else item.style.display = 'none';
            if(count === 1) {
                prev.classList.toggle('disabled',true);
                next.classList.toggle('disabled',false);
            } else if(count === pageCount) {
                next.classList.toggle('disabled',true);
                prev.classList.toggle('disabled',false);
            } else {
                prev.classList.toggle('disabled',false);
                next.classList.toggle('disabled',false);
            }
        });
    }

    // 페이지그룹 생성
    function pagination(page,count,index,current) {
        for(let i=1; i<=count; i++) {
                page.innerHTML += `
                <li class="paginate_button page-item">
                    <a class="page-link" href="#" onclick="paging(event,tbody`+index+`,`+i+`,prev`+index+`,next`+index+`,`+count+`,`+index+`)">`+i+`</a>
                </li>`;
            if(i === current) pagePick(page,1);
        }
    }

    // 페이지 그룹 색상 변경
    function pagePick(target,count) {
        target.querySelectorAll(`li`).forEach((item,index) => {
            if(count === index+1) item.classList.toggle('active',true);
            else item.classList.toggle('active',false);
        });
    }

</script>
</html>
