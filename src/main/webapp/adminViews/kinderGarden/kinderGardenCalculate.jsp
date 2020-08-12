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

    </style>
</head>
<body>
<div id="kinderGarden_chart">
    <!-- Area Chart -->
    <div id="kinderGarden_chart_graph" class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">유치원 주간 매출 현황</h6>
        </div>
        <div class="card-body">
            <div class="chart-area">
                <canvas id="myAreaChart"></canvas>
            </div>
            <hr>
            <p>2020년 8월 12일 ~ 2020년 8월 19일까지의 1주일간 매출현황</p>
        </div>
    </div>

    <!-- Donut Chart -->
    <div id="kinderGarden_chart_donut" class="col-xl-4 col-lg-5">
        <div class="card shadow mb-4">
            <!-- Card Header - Dropdown -->
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">월간 주차별 매출현황</h6>
            </div>
            <!-- Card Body -->
            <div class="card-body">
                <div class="chart-pie pt-4">
                    <canvas id="myPieChart"></canvas>
                </div>
                <hr>
                2020년 7월 19일 ~ 2020년 8월 19일까지의 주차별 매출현황
            </div>
        </div>
    </div>
</div>

<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">매출 현황</h6>
    </div>
    <div id="kinderGarden_chart_bot" class="card-body">
        <div>
            <p>Today : 1,540,000원</p>
        </div>
        <div class="text-right">
            <p>DAY : 1,100,000원</p>
            <p>WEEK : 7,900,000원</p>
            <p>MONTH : 33,400,000원</p>
         </div>
    </div>
</div>
<script src="resources/admin/vendor/chart.js/Chart.min.js"></script>
<script src="resources/admin/js/demo/chart-pie-demo.js"></script>
<script src="resources/admin/js/kinderGarden/chartArea.js"></script>
</body>
</html>
