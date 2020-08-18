<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        #mall_chart {
            display: flex;
            flex-direction: row;
        }

        #mall_chart #mall_chart_graph {
            width: 100%;
        }
        #mall_chart #mall_chart_donut {
            width: 30%;
        }
        #mall_chart #mall_chart_donut .card-body {
            height: 433px;
        }

        #mall_chart_bot {
            display: flex;
            flex-direction: row;
        }
        #mall_chart_bot div:nth-child(1) {
            color: orange;
            width: 75%;
        }
        #mall_chart_bot div:nth-child(2) {
            color: orange;
            width: 25%;
        }
        #mall_chart_date {
            display: flex;
            flex-direction: row;
            vertical-align: center;
        }
        #mall_chart_date input {
            margin: 10px;
        }
        #mall_chart_date button {
            margin: 10px;
            width: 47%;
        }
        #mall_chart_title {
            font-size: 24px;
        }
        .mall_p_cal {
            display: flex;
            flex-direction: row;
        }
        .mall_p_cal p:nth-child(1), .kinder_p_cal2 p:nth-child(1) {
            color: #0f9d58;
            margin: 10px;
        }
        .mall_p_cal p:nth-child(2), .kinder_p_cal2 p:nth-child(2){
            color:#a94442;
            margin: 10px;
        }

        #mall_date_pick {
            color: #dc7070;
            font-size: 20px;
        }
        #mall_dwm p:nth-child(1) {
            font-size: 16px;
        }
        #mall_dwm p:nth-child(2) {
            color:#00C73C;
            font-size: 18px;
        }
        #mall_dwm p:nth-child(3) {
            color:#2e59d9;
            font-size: 20px;
        }
    </style>
</head>
<body>
<div id="mall_chart_title" class="card mb-4 py-3 border-bottom-info">
    <div class="card-body" style="font-weight: 500;">
        Hotel 매출현황
    </div>
</div>

<div id="mall_chart_date">
    <input id="mall_date1" type="date" class="form-control form-control-user">
    <button class="btn btn-primary btn-user" onClick="datePick()">검색</button>
</div>

<div id="mall_chart">
    <!-- Area Chart -->
    <div id="mall_chart_graph" class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-info">Hotel 요일별 매출 현황</h6>
        </div>
        <div class="card-body">
            <div class="chart-area">
                <canvas id="myAreaChart"></canvas>
            </div>
            <hr>
            <div class="mall_p_cal">
                <p>요일별 최대 매출 : 500000원</p>
                <p>요일별 최소 매출 : 50000원</p>
            </div>
        </div>
    </div>

    <!-- Donut Chart -->
    <div id="mall_chart_donut" class="col-xl-4 col-lg-5">
        <div class="card shadow mb-4">
            <!-- Card Header - Dropdown -->
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-info">객실별 매출현황</h6>
            </div>
            <!-- Card Body -->
            <div class="card-body">
                <div class="chart-pie pt-4">
                    <canvas id="myPieChart"></canvas>
                </div>
                <hr>
                <div class="mall_p_cal2" style="padding-top: 18px;">
                    <p style="color: #3c85dc;">최대 매출 객실 :  &nbsp; &nbsp; 일반룸&nbsp; &nbsp; 90000000원</p>
                    <p style="color: #dc7070;">최소 매출 객실 :  &nbsp;  &nbsp;&nbsp; VIP룸  &nbsp; &nbsp; 900000원</p>
                </div>
            </div>
        </div>
    </div>
</div>

<%--<div class="card shadow mb-4">--%>
<%--    <div class="card-header py-3">--%>
<%--        <h6 class="m-0 font-weight-bold text-primary">Hotel 객실별 매출 현황</h6>--%>
<%--    </div>--%>
<%--    <div class="card-body">--%>
<%--        <div class="text-left" style="font-size:90%; font-weight:600;">--%>
<%--            <table class="table table_bordered" id="order_list" width="100%" cellspacing="0">--%>
<%--                <thead>--%>
<%--                <tr class="productOrderField">--%>
<%--                    <th>객실번호</th>--%>
<%--                    <th>이미지</th>--%>
<%--                    <th>상품명</th>--%>
<%--                    <th>매출</th>--%>
<%--                </tr>--%>
<%--                </thead>--%>
<%--                <tbody>--%>
<%--                <c:forEach var="orderDetail" items="${orderDetail}">--%>
<%--                    <tr class="order_feild">--%>
<%--                        <th>1</th>--%>
<%--                        <th>2</th>--%>
<%--                        <th>3</th>--%>
<%--                        <th>4</th>--%>
<%--                    </tr>--%>
<%--                    <tr class="order_feild">--%>
<%--                        <th>1</th>--%>
<%--                        <th>2</th>--%>
<%--                        <th>3</th>--%>
<%--                        <th>4</th>--%>
<%--                    </tr>--%>
<%--                    <tr class="order_feild">--%>
<%--                        <th>1</th>--%>
<%--                        <th>2</th>--%>
<%--                        <th>3</th>--%>
<%--                        <th>4</th>--%>
<%--                    </tr>--%>
<%--                    <tr class="order_feild">--%>
<%--                        <th>1</th>--%>
<%--                        <th>2</th>--%>
<%--                        <th>3</th>--%>
<%--                        <th>4</th>--%>
<%--                    </tr>--%>
<%--                    <tr class="order_feild">--%>
<%--                        <th>1</th>--%>
<%--                        <th>2</th>--%>
<%--                        <th>3</th>--%>
<%--                        <th>4</th>--%>
<%--                    </tr>--%>

<%--                </c:forEach>--%>
<%--                </tbody>--%>
<%--            </table>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>

<%--hotel 매출현황--%>
<div id="mall_chart">
    <!-- Area Chart -->
    <div id="mall_chart_graph" style="height: 200px;" class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-info">매출 현황</h6>
        </div>
        <div id="mall_chart_bot" class="card-body">
            <div>
                <p style="color: #3c85dc; padding-top: 18px; font-size: 17px;">Today : 10000000</p>
                <br>
                <p id="mall_date_pick" style="font-size: 17px;">
                    2020년 08월 15일 ~ 2020년 09월 14일 매출</p>
            </div>
            <div id="mall_dwm" style="font-weight: 650; width:31%;" class="text-right">
                <p>DAY : 110000원</p>
                <p>WEEK : 1000000원</p>
                <p>MONTH : 100000000원</p>
            </div>
        </div>
    </div>
</div>



<%--    <div class="card shadow mb-4">--%>
<%--        <div class="card-header py-3">--%>
<%--            <h6 class="m-0 font-weight-bold text-info">매출 현황</h6>--%>
<%--        </div>--%>
<%--        <div id="kinderGarden_chart_bot" class="card-body">--%>
<%--            <div>--%>
<%--                <p style="color: #3c85dc; font-size: 19px;">Today : ${date.today}</p>--%>
<%--                <br>--%>
<%--                <p id="kinder_date_pick">--%>
<%--                    ${date.date1} ~ ${date.date2}의 매출현황</p>--%>
<%--            </div>--%>
<%--            <div id="kinder_dwm" class="text-right">--%>
<%--                <p>DAY : ${date.day}원</p>--%>
<%--                <p>WEEK : ${date.week}원</p>--%>
<%--                <p>MONTH : ${date.month}원</p>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>


<script src="resources/admin/vendor/chart.js/Chart.min.js"></script>
<script src="resources/admin/js/kinderGarden/chartPie.js"></script>
<script src="resources/admin/js/kinderGarden/chartArea.js"></script>
<%--<c:forEach items="#{dow.dow}" var="dow" varStatus="status">--%>
<%--    <script>--%>
<%--        myLineChart.data.datasets[0].data[${status.index}] = ${dow};--%>
<%--        myLineChart.update();--%>
<%--    </script>--%>
<%--</c:forEach>--%>
<%--<script>--%>
<%--    myPieChart.data.datasets[0].data[0] = ${date.weekPercent1};--%>
<%--    myPieChart.data.datasets[0].data[1] = ${date.weekPercent2};--%>
<%--    myPieChart.data.datasets[0].data[2] = ${date.weekPercent3};--%>
<%--    myPieChart.data.datasets[0].data[3] = ${date.weekPercent4};--%>

<%--    myPieChart.update();--%>

<%--    function datePick() {--%>
<%--        const date1 = document.querySelector('#mall_date1').value;--%>

<%--        if(date1 !== '') window.location.href = 'kinderGardenCalculate.mdo?dateOne='+date1;--%>
<%--        else alert('날짜를 선택해주세요!');--%>
<%--    }--%>

</body>
</html>
