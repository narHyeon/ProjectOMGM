<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
</head>
<body>
<div>
    <!-- Area Chart -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">유치원 주간 매출 현황</h6>
        </div>
        <div class="card-body">
            <div class="chart-area">
                <canvas id="myAreaChart"></canvas>
            </div>
            <hr>
            <p>2020년 8월 12일 ~ 2020년 8월 19일까지의 1주일간 유치원 매출현황</p>
        </div>
    </div>

    <!-- Donut Chart -->
    <div class="col-xl-4 col-lg-5">
        <div class="card shadow mb-4">
            <!-- Card Header - Dropdown -->
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Donut Chart</h6>
            </div>
            <!-- Card Body -->
            <div class="card-body">
                <div class="chart-pie pt-4">
                    <canvas id="myPieChart"></canvas>
                </div>
                <hr>
                Styling for the donut chart can be found in the <code>/js/demo/chart-pie-demo.js</code> file.
            </div>
        </div>
    </div>
</div>
    <!-- Area Chart -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">유치원 주간 매출 현황</h6>
        </div>
        <div class="card-body">
            <div class="chart-area">
                <canvas id="myAreaChart2"></canvas>
            </div>
            <hr>
            <p>2020년 8월 12일 ~ 2020년 8월 19일까지의 1주일간 유치원 매출현황</p>
        </div>
    </div>

<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">매출 현황</h6>
    </div>
    <div class="card-body">
        <div class="text-center">
            <hr><p>매출</p>
         </div>
    </div>
</div>
<script src="resources/admin/vendor/chart.js/Chart.min.js"></script>
<script src="resources/admin/js/demo/chart-pie-demo.js"></script>
<script src="resources/admin/js/kinderGarden/chartArea.js"></script>
</body>
</html>
