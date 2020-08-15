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
            width: 70%;
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
            width: 70%;
        }
        #mall_chart_bot div:nth-child(2) {
            color: orange;
            width: 30%;
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
    <div class="card-body">
        Mall 매출현황
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
            <h6 class="m-0 font-weight-bold text-info">Mall 요일별 매출 현황</h6>
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
                <h6 class="m-0 font-weight-bold text-info">주차별 매출현황</h6>
            </div>
            <!-- Card Body -->
            <div class="card-body">
                <div class="chart-pie pt-4">
                    <canvas id="myPieChart"></canvas>
                </div>
                <hr>
                <div class="mall_p_cal2">
                    <p>주차별 최대 매출 : 900000원</p>
                    <p>주차별 최소 매출 :90000원</p>
                </div>
            </div>
        </div>
    </div>
</div>

<%--복사--%>
<div id="mall_chart">
    <!-- Area Chart -->
    <div id="mall_chart_graph" style="height: 200px; width: 900px;" class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-info">매출 현황</h6>
        </div>
        <div id="mall_chart_bot" class="card-body">
            <div>
                <p style="color: #3c85dc; padding-top: 18px; font-size: 17px;">Today : 10000000</p>
                <br>
                <p id="mall_date_pick" style="font-size: 17px;">
                    2020년 08월 15일 ~ 2020년 09월 14일의 매출현황</p>
            </div>
            <div id="mall_dwm" class="text-right">
                <p>DAY : 110000원</p>
                <p>WEEK : 1000000원</p>
                <p>MONTH : 100000000원</p>
            </div>
        </div>
    </div>

    &nbsp;&nbsp;&nbsp;
    <div id="mall_chart_graph" style="height: 200px; width: 685px;" class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-info">판매현황</h6>
        </div>
        <div id="mall_chart_bot" class="card-body">
            <div>
                <p style="color: #3c85dc; padding-top: 18px; font-size: 17px;">가장 많이 팔린 상품:<br> 냥냥이 사료 </p>
                <br>
                <p id="mall_date_pick" style="font-size: 17px;">
                    가장 적게 팔린 상품:댕댕이 사료 </p>
            </div>
<%--            <div id="kinder_dwm" style="padding-top: 20px; padding-right: 120px;" class="text-center">--%>
<%--                <p>장난감1 99개</p><br>--%>
<%--                <p>사료2 6개</p>--%>
<%--            </div>--%>
            <div id="kinder_dwm" style="padding-top: 20px;" class="text-right">
                <p> 99개</p><br>
                <p>6개</p>
            </div>
        </div>
    </div>
<%--    <!--  -->--%>
<%--    <div id="mall_chart_donut" style="height: 200px;" class="col-xl-4 col-lg-5">--%>
<%--        <div class="card shadow mb-4">--%>
<%--            <!-- Card Header - Dropdown -->--%>
<%--            <div class="card-header py-3">--%>
<%--                <h6 class="m-0 font-weight-bold text-info">판매현황</h6>--%>
<%--            </div>--%>
<%--            <!-- Card Body -->--%>
<%--            <div class="card-body" style="height: 147px; width:700px;">--%>
<%--                <div>--%>
<%--                    <p style="color: #3c85dc; font-size: 19px;">가장 많이 팔린상품 : 사료1</p>--%>
<%--                    <br>--%>
<%--                    <p id="mall_date_pick">--%>
<%--                        가장 적게 팔린상품 : 강아지사료2</p>--%>
<%--                </div>--%>


<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
</div>

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
