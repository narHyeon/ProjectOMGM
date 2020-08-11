<%--
  Created by IntelliJ IDEA.
  User: YongSun Jang
  Date: 2020-08-11
  Time: 오후 5:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Custom fonts for this template-->

<html>
<head>
    <title>mallCalculate</title>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        google.charts.load('current', {'packages':['corechart']});
        google.charts.setOnLoadCallback(drawChart);

        function drawChart() {

            var data = google.visualization.arrayToDataTable([
                ['Task', 'Hours per Day'],
                ['쇼핑몰',      1],
                ['호호',      6],
                ['하하',  1],
                ['히히', 1],
                ['헤헤',    1]
            ]);

            var options = {
                title: 'My Daily Activities'
            };

            var chart = new google.visualization.PieChart(document.getElementById('piechart'));

            chart.draw(data, options);
        }
    </script>
</head>
<body>
<div id="piechart" style="width: 500px; height: 500px;"></div>
<!-- Area Chart -->
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Area Chart</h6>
    </div>
    <div class="card-body">
        <div class="chart-area">
            <canvas id="chart_div"></canvas>
        </div>
        <hr>
        Styling for the area chart can be found in the <code>/js/demo/chart-area-demo.js</code> file.
    </div>
</div>
<html>
<head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        google.charts.load('current', {'packages':['corechart']});
        google.charts.setOnLoadCallback(drawChart);

        function drawChart() {
            var data = google.visualization.arrayToDataTable([
                ['Year', 'Sales', 'Expenses'],
                ['2013',  1000,      400],
                ['2014',  1170,      460],
                ['2015',  660,       1120],
                ['2016',  1030,      540]
            ]);

            var options = {
                title: 'Company Performance',
                hAxis: {title: 'Year',  titleTextStyle: {color: '#333'}},
                vAxis: {minValue: 0}
            };

            var chart = new google.visualization.AreaChart(document.getElementById('chart_div'));
            chart.draw(data, options);
        }
    </script>
</head>
<body>
<div id="chart_div0" style="width: 100%; height: 500px;"></div>
</body>
</html>
<%--<script>--%>
<%--    // Area Chart Example--%>
<%--    var ctx = document.getElementById("myAreaChart11");--%>
<%--    var myLineChart = new Chart(ctx, {--%>
<%--        type: 'line',--%>
<%--        data: {--%>
<%--            labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],--%>
<%--            datasets: [{--%>
<%--                label: "Earnings",--%>
<%--                lineTension: 0.3,--%>
<%--                backgroundColor: "rgba(78, 115, 223, 0.05)",--%>
<%--                borderColor: "rgba(78, 115, 223, 1)",--%>
<%--                pointRadius: 3,--%>
<%--                pointBackgroundColor: "rgba(78, 115, 223, 1)",--%>
<%--                pointBorderColor: "rgba(78, 115, 223, 1)",--%>
<%--                pointHoverRadius: 3,--%>
<%--                pointHoverBackgroundColor: "rgba(78, 115, 223, 1)",--%>
<%--                pointHoverBorderColor: "rgba(78, 115, 223, 1)",--%>
<%--                pointHitRadius: 10,--%>
<%--                pointBorderWidth: 2,--%>
<%--                data: [0, 10000, 5000, 15000, 10000, 20000, 15000, 25000, 20000, 30000, 25000, 40000],--%>
<%--            }],--%>
<%--        },--%>
<%--        options: {--%>
<%--            maintainAspectRatio: false,--%>
<%--            layout: {--%>
<%--                padding: {--%>
<%--                    left: 10,--%>
<%--                    right: 25,--%>
<%--                    top: 25,--%>
<%--                    bottom: 0--%>
<%--                }--%>
<%--            },--%>
<%--            scales: {--%>
<%--                xAxes: [{--%>
<%--                    time: {--%>
<%--                        unit: 'date'--%>
<%--                    },--%>
<%--                    gridLines: {--%>
<%--                        display: false,--%>
<%--                        drawBorder: false--%>
<%--                    },--%>
<%--                    ticks: {--%>
<%--                        maxTicksLimit: 7--%>
<%--                    }--%>
<%--                }],--%>
<%--                yAxes: [{--%>
<%--                    ticks: {--%>
<%--                        maxTicksLimit: 5,--%>
<%--                        padding: 10,--%>
<%--                        // Include a dollar sign in the ticks--%>
<%--                        callback: function(value, index, values) {--%>
<%--                            return '$' + number_format(value);--%>
<%--                        }--%>
<%--                    },--%>
<%--                    gridLines: {--%>
<%--                        color: "rgb(234, 236, 244)",--%>
<%--                        zeroLineColor: "rgb(234, 236, 244)",--%>
<%--                        drawBorder: false,--%>
<%--                        borderDash: [2],--%>
<%--                        zeroLineBorderDash: [2]--%>
<%--                    }--%>
<%--                }],--%>
<%--            },--%>
<%--            legend: {--%>
<%--                display: false--%>
<%--            },--%>
<%--            tooltips: {--%>
<%--                backgroundColor: "rgb(255,255,255)",--%>
<%--                bodyFontColor: "#858796",--%>
<%--                titleMarginBottom: 10,--%>
<%--                titleFontColor: '#6e707e',--%>
<%--                titleFontSize: 14,--%>
<%--                borderColor: '#dddfeb',--%>
<%--                borderWidth: 1,--%>
<%--                xPadding: 15,--%>
<%--                yPadding: 15,--%>
<%--                displayColors: false,--%>
<%--                intersect: false,--%>
<%--                mode: 'index',--%>
<%--                caretPadding: 10,--%>
<%--                callbacks: {--%>
<%--                    label: function(tooltipItem, chart) {--%>
<%--                        var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label || '';--%>
<%--                        return datasetLabel + ': $' + number_format(tooltipItem.yLabel);--%>
<%--                    }--%>
<%--                }--%>
<%--            }--%>
<%--        }--%>
<%--    });--%>
<%--</script>--%>
<%--<!-- Bootstrap core JavaScript-->--%>
<%--<script src="vendor/jquery/jquery.min.js"></script>--%>
<%--<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>--%>

<%--<!-- Core plugin JavaScript-->--%>
<%--<script src="vendor/jquery-easing/jquery.easing.min.js"></script>--%>

<%--<!-- Custom scripts for all pages-->--%>
<%--<script src="js/sb-admin-2.min.js"></script>--%>

<!-- Page level plugins -->
<script src="resources/admin/vendor/chart.js/Chart.min.js"></script>

<!-- Page level custom scripts -->
<script src="resources/admin/js/demo/chart-area-demo.js"></script>
<script src="resources/admin/js/demo/chart-pie-demo.js"></script>
<script src="resources/admin/js/demo/chart-bar-demo.js"></script>
</body>
</html>
