<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        #kinderGarden_chart {
            display: flex;
            flex-direction: row;
        }

        #kinderGarden_chart #kinderGarden_chart_graph {
            width: 70%;
        }
        #kinderGarden_chart #kinderGarden_chart_donut {
            width: 30%;
        }
        #kinderGarden_chart #kinderGarden_chart_donut .card-body {
            height: 433px;
        }

        #kinderGarden_chart_bot {
            display: flex;
            flex-direction: row;
        }
        #kinderGarden_chart_bot div {
            color: orange;
            width: 50%;
        }
        #kinderGarden_chart_date {
            display: flex;
            flex-direction: row;
        }
        #kinderGarden_chart_date input {
            margin: 10px;
        }
        #kinderGarden_chart_date p {
            width: 80px;
            margin: auto 10px;
        }
        #kinderGarden_chart_title {
            font-size: 24px;
        }
        .kinder_p_cal {
            display: flex;
            flex-direction: row;
        }
        .kinder_p_cal p:nth-child(1), .kinder_p_cal2 p:nth-child(1){
            color:#0f9d58;
            margin: 10px;
        }
        .kinder_p_cal p:nth-child(2), .kinder_p_cal2 p:nth-child(2){
            color:#a94442;
            margin: 10px;
        }

        #kinder_date_pick {
            color: #dc7070;
            font-size: 20px;
        }
        #kinder_dwm p:nth-child(1) {
            font-size: 16px;
        }
        #kinder_dwm p:nth-child(2) {
            color:#00C73C;
            font-size: 18px;
        }
        #kinder_dwm p:nth-child(3) {
            color:#2e59d9;
            font-size: 20px;
        }

    </style>
</head>
<body>
<div id="kinderGarden_chart_title" class="card mb-4 py-3 border-bottom-info">
    <div class="card-body">
        유치원 매출현황
    </div>
</div>

<div id="kinderGarden_chart_date">
    <input id="kinderGarden_date1" type="date" class="form-control form-control-user" onchange="datePick()"><p>부터</p>
    <input id="kinderGarden_date2" type="date" class="form-control form-control-user" onchange="datePick()"><p>까지</p>
</div>

<div id="kinderGarden_chart">
    <!-- Area Chart -->
    <div id="kinderGarden_chart_graph" class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-info">유치원 요일별 매출 현황</h6>
        </div>
        <div class="card-body">
            <div class="chart-area">
                <canvas id="myAreaChart"></canvas>
            </div>
            <hr>
            <div class="kinder_p_cal">
                <p>요일별 최대 매출 : ${date.dowTop}원</p>
                <p>요일별 최소 매출 : ${date.dowBottom}원</p>
            </div>
        </div>
    </div>

    <!-- Donut Chart -->
    <div id="kinderGarden_chart_donut" class="col-xl-4 col-lg-5">
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
                <div class="kinder_p_cal2">
                    <p>주차별 최대 매출 : ${date.weekTop}원</p>
                    <p>주차별 최소 매출 : ${date.weekBottom}원</p>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-info">매출 현황</h6>
    </div>
    <div id="kinderGarden_chart_bot" class="card-body">
        <div>
            <p style="color: #3c85dc; font-size: 19px;">Today : ${date.today}</p>
            <br>
            <p id="kinder_date_pick">
                ${date.date1} ~ ${date.date2}의 매출현황</p>
        </div>
        <div id="kinder_dwm" class="text-right">
            <p>DAY : ${date.day}원</p>
            <p>WEEK : ${date.week}원</p>
            <p>MONTH : ${date.month}원</p>
        </div>
    </div>
</div>

<script src="resources/admin/vendor/chart.js/Chart.min.js"></script>
<script src="resources/admin/js/kinderGarden/chartPie.js"></script>
<script src="resources/admin/js/kinderGarden/chartArea.js"></script>
<c:forEach items="#{dow.dow}" var="dow" varStatus="status">
    <script>
        myLineChart.data.datasets[0].data[${status.index}] = ${dow};
        myLineChart.update();
    </script>
</c:forEach>
<script>
    myPieChart.data.datasets[0].data[0] = ${date.weekPercent1};
    myPieChart.data.datasets[0].data[1] = ${date.weekPercent2};
    myPieChart.data.datasets[0].data[2] = ${date.weekPercent3};
    myPieChart.data.datasets[0].data[3] = ${date.weekPercent4};

    function datePick() {
        const date1 = document.querySelector('#kinderGarden_date1').value;
        const date2 = document.querySelector('#kinderGarden_date2').value;

        window.location.href = 'kinderGardenCalculate.mdo?date1='+date1+'&date2'+date2;
    }
</script>
</body>
</html>
