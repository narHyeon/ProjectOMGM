<%--
  Created by IntelliJ IDEA.
  User: YongSun Jang
  Date: 2020-07-31
  Time: 오후 4:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<!-- Page Heading -->
<h1 class="h3 mb-2 text-gray-800">픽업 서비스 관리</h1>
<p class="mb-4">픽업 서비스 관리 테이블입니다<a target="_blank" href="https://datatables.net">official DataTables documentation</a>.</p>

<!-- DataTales Example -->
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-info">Tables</h6>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                <tr>
                    <th>예약번호</th>
                    <th>고객 번호</th>
                    <th>예약 날짜</th>
                    <th>예약 시간</th>
                    <th>픽업할 주소</th>
                    <th>연락처</th>
                    <th>반려동물 종류</th>
                    <th>반려동물 수</th>
                    <th>보호자 동승 여부</th>
                    <th>특이사항</th>
                </tr>
                </thead>

                <tbody>
                    <tr>
                        <td>123455</td>
                        <td>123456</td>
                        <td>2020.05.20</td>
                        <td>13:00</td>
                        <td>청와대</td>
                        <td>010-1234-1234</td>
                        <td>차우차우</td>
                        <td>2마리</td>
                        <td>동승</td>
                        <td>귀여움</td>
                    </tr>
                    <tr>
                        <td>123455</td>
                        <td>123456</td>
                        <td>2020.05.20</td>
                        <td>13:00</td>
                        <td>청와대</td>
                        <td>010-1234-1234</td>
                        <td>차우차우</td>
                        <td>2마리</td>
                        <td>동승</td>
                        <td>귀여움</td>
                    </tr>
                    <tr>
                        <td>123455</td>
                        <td>123456</td>
                        <td>2020.05.20</td>
                        <td>13:00</td>
                        <td>청와대</td>
                        <td>010-1234-1234</td>
                        <td>차우차우</td>
                        <td>2마리</td>
                        <td>동승</td>
                        <td>귀여움</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <button style="background-color: #0D47A1; color: white" >수정하기</button>
    </div>
</div>

</body>
</html>
