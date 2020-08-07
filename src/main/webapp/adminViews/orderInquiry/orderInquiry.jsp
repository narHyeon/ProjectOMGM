<%--
  Created by IntelliJ IDEA.
  User: YongSun Jang
  Date: 2020-07-31
  Time: 오후 5:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<!-- Page Heading -->
<h1 class="h3 mb-2 text-gray-800">주문 현황 테이블</h1>
<p class="mb-4">주문 관리 테이블입니다<a target="_blank" href="https://datatables.net">official DataTables documentation</a>.</p>

<!-- DataTales Example -->
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-info">Tables</h6>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <div class="header" style="margin-bottom: 3%">
                <h1>주문번호 조회</h1>
                <input onkeyup="filter()" type="text" id="value" placeholder="주문번호 조회">
            </div>
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                <tr>
                    <th>주문번호</th>
                    <th>고객 번호</th>
                    <th>상품주문날짜</th>
                    <th>결제수단</th>
                    <th>결제 시간</th>
                    <th>상품주문상태</th>
                    <th>배달지 주소</th>
                    <th>받는 사람</th>
                    <th>핸드폰 번호</th>
                    <th>주문시 요청사항</th>
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td class="name">123455</td>
                    <td>123456</td>
                    <td>2020.05.20</td>
                    <td>카드</td>
                    <td>13:00</td>
                    <td>주문완료</td>
                    <td>청와대</td>
                    <td>강동원</td>
                    <td>010-1234-1234</td>
                    <td>빨리와주세요</td>
                </tr>
                <tr>
                    <td class="name">123455</td>
                    <td>123456</td>
                    <td>2020.05.20</td>
                    <td>카드</td>
                    <td>13:00</td>
                    <td>주문완료</td>
                    <td>청와대</td>
                    <td>강동원</td>
                    <td>010-1234-1234</td>
                    <td>빨리와주세요</td>
                </tr>
                <tr>
                    <td class="name">123455</td>
                    <td>123456</td>
                    <td>2020.05.20</td>
                    <td>카드</td>
                    <td>13:00</td>
                    <td>주문완료</td>
                    <td>청와대</td>
                    <td>강동원</td>
                    <td>010-1234-1234</td>
                    <td>빨리와주세요</td>
                </tr>
                </tbody>
            </table>
        </div>

    </div>
</div>
<script>
    function filter() {
        let value, name, item, i;
        value = document.getElementById("value").value.toUpperCase();
        item = document.getElementsByTagName("tr");

        for(i=0; i<item.length; i++){
            name = item[i].getElementsByClassName("name");
            console.log(name[0].innerHTML.toUpperCase().indexOf(value));
            if(name[0].innerHTML.toUpperCase().indexOf(value) > -1) {
                item[i].style.display = "flex";
            } else {
                item[i].style.display = "none";
            }
        }
    }
</script>
</body>
</html>
