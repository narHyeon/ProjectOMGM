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
        /*.mall_p_cal p:nth-child(1), .kinder_p_cal2 p:nth-child(1) {*/
        /*    color: #0f9d58;*/
        /*    margin: 10px;*/
        /*}*/
        /*.mall_p_cal p:nth-child(2), .kinder_p_cal2 p:nth-child(2){*/
        /*    color:#a94442;*/
        /*    margin: 10px;*/
        /*}*/
        .mall_p_cal {
            /*color:#a94442;*/
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
        Mall 매출현황
    </div>
</div>

<div id="mall_chart_date">
    <input id="mall_date01" type="date" class="form-control form-control-user">
    <input id="mall_date02" type="date" class="form-control form-control-user01" name="date02">
    <button class="btn btn-primary btn-user" onClick="dataPick()">검색</button>
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
                <p>최대 요일 매출 : </p>
                <p id="topPriceDay"style="margin-right: 20px;">10000</p>
                <p>최소 요일 매출 : </p>
                <p id="downPriceDay">50000</p>
            </div>
        </div>
    </div>

    <!-- Donut Chart -->
    <div id="mall_chart_donut" class="col-xl-4 col-lg-5">
        <div class="card shadow mb-4">
            <!-- Card Header - Dropdown -->
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-info">주차별 매출현황(이번달)</h6>
            </div>
            <!-- Card Body -->
            <div class="card-body">
                <div class="chart-pie pt-4">
                    <canvas id="myPieChart"></canvas>
                </div>
                <hr>
                <div class="mall_p_cal2">
                    <p id="weekTopSales">주차별 최대 매출 : 900000원</p>
                    <p id="weekDownSales">주차별 최소 매출 :90000원</p>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-info">상품별 매출 현황</h6>
    </div>
    <div class="card-body">
        <div class="text-left" style="font-size:90%; font-weight:600;">
            <table class="table table_bordered" id="order_list" width="100%" cellspacing="0">
                <thead>
                <tr class="productOrderField">
                    <th>상품번호</th>
                    <th>상품명</th>
                    <th>팔린 갯수</th>
                    <th>총매출</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="toyCal" items="${toyCal}">
                    <tr class="order_feild">
                        <td>${toyCal.toy_code}</td>
                        <td>${toyCal.toy_name}</td>
                        <td>${100-toyCal.toy_stock}</td>
                        <td>${(100-toyCal.toy_stock)*toyCal.toy_discount}</td>
                    </tr>
                </c:forEach>
                <c:forEach var="feedCal" items="${feedCal}">
                    <tr class="order_feild">
                        <td>${feedCal.feed_code}</td>
                        <td>${feedCal.feed_name}</td>
                        <td>${100-feedCal.feed_stock}</td>
                        <td>${(100-feedCal.feed_stock)*feedCal.feed_discount}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

<%--Mall관련 판매현황--%>
<div id="mall_chart">
    <!-- Area Chart -->
    <div id="mall_chart_graph01" style="height: 200px; width: 60%;" class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-info">매출 현황</h6>
        </div>
        <div id="mall_chart_bot" class="card-body">
            <div>
                <p style="color: #3c85dc; padding-top: 18px; font-size: 17px;" id="todayOrderSales">Today : ${today}</p>
                <br>
                <p id="mall_date_pick" style="font-size: 17px;">
                    </p>
            </div>
            <div id="mall_dwm" style="font-weight: bolder; width:31%;" class="text-right">
                <p>DAY : ${today}원</p>
                    <p id="mallWeekSales">0</p>
                <p id="mallMonthSales">MONTH : 100000000원</p>
            </div>
        </div>
    </div>

    &nbsp;&nbsp;&nbsp;
<%--    <div id="mall_chart_graph02" style="height: 200px; width: 38.8%;" class="card shadow mb-4">--%>
<%--        <div class="card-header py-3">--%>
<%--            <h6 class="m-0 font-weight-bold text-info">판매현황</h6>--%>
<%--        </div>--%>
<%--        <div id="mall_chart_bot01" class="card-body">--%>
<%--            <div style="display: flex; justify-content: space-around">--%>
<%--                <p style="color: #3c85dc; padding-top: 18px; font-size: 17px;">가장 많이 팔린 상품: 냥냥이 사료 </p>--%>
<%--                <p style="color: #3c85dc; padding-top: 18px; font-size: 17px;"> 99개</p><br>--%>
<%--            </div>--%>
<%--            <div style="display: flex; justify-content: space-around">--%>
<%--                <p id="mall_date_pick01" style="font-size: 17px;">--%>
<%--                    가장 적게 팔린 상품: 댕댕이 사료 </p>--%>
<%--                <p style="font-size: 17px; color:red;">6개</p>--%>
<%--            </div>--%>
<%--            <div id="kinder_dwm" style="padding-top: 20px; padding-right: 120px;" class="text-center">--%>
<%--                <p>장난감1 99개</p><br>--%>
<%--                <p>사료2 6개</p>--%>
<%--            </div>--%>
<%--            <div id="kinder_dwm" style="padding-top: 20px; font-weight: bolder;" class="text-right">--%>
<%--                <p style="font-size: 20px; color:#2e59d9;"> 99개</p><br>--%>
<%--                <p style="font-size: 20px; color:red;">6개</p>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
</div>

<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="resources/admin/vendor/chart.js/Chart.min.js"></script>
<script src="resources/admin/js/mall/chartPie.js"></script>
<script src="resources/admin/js/mall/chartArea.js"></script>
<script>
    myPieChart.data.datasets[0].data[0] = ${week00};
    myPieChart.data.datasets[0].data[1] = ${week01};
    myPieChart.data.datasets[0].data[2] = ${week02};
    myPieChart.data.datasets[0].data[3] = ${week03};
    myPieChart.update();
    // <p id="weekTopSales">주차별 최대 매출 : 900000원</p>
    // <p id="weekDownSales">주차별 최소 매출 :90000원</p>

    let sumWeek = 0;
    if(${week00} >= ${week01} && ${week00} >= ${week02} && ${week00} >= ${week03} ){
        sumWeek = ${week00};
    }else if(${week01} >= ${week00} && ${week01} >= ${week02} && ${week01} >= ${week03} ){
        sumWeek = ${week01}
    }else if(${week02} >= ${week00} && ${week02} >= ${week01} && ${week02} >= ${week03} ){
        sumWeek = ${week02}
    }else {
        sumWeek = ${week03}
    }document.querySelector('#weekTopSales').innerHTML='주차별 최대 매출 : ' + sumWeek;

    let sumWeek1 = 0;
    if(${week01} >= ${week00} && ${week02} >= ${week00} && ${week03} >= ${week00} ){
        sumWeek1 = ${week00};
    }else if(${week00} >= ${week01} && ${week02} >= ${week01} && ${week03} >= ${week01} ){
        sumWeek1 = ${week01}
    }else if(${week00} >= ${week02} && ${week01} >= ${week02} && ${week03} >= ${week02} ){
        sumWeek1 = ${week02}
    }else {
        sumWeek1= ${week03}
    }document.querySelector('#weekDownSales').innerHTML='주차별 최대 매출 : ' + sumWeek1;

    $ = jQuery;
    // 상품 몰 매출(한주)

        $.ajax({
            type: 'POST',
            url: "getDayPrice01.mdo", //cross-domain error가 발생하지 않도록 주의해주세요
            dataType: 'json',
            contentType: 'application/json',
            data: JSON.stringify({

            }),
            success: function (data) {
                document.querySelector('#mallWeekSales').innerHTML = 'WEEK : ' + data.order_price+'원';
                document.querySelector('#mallMonthSales').innerHTML = 'MONTH : '+ data.order_quantity + '원';
            },
            error: function (xhr) {

            }
        });


    function dataPick() {
        const day1 = document.querySelector('#mall_date01').value;
        const day2 = document.querySelector('#mall_date02').value;

        const ar1 = day1.split('-');
        const ar2 = day2.split('-');
        const da1 = new Date(ar1[0], ar1[1], ar1[2]);
        const da2 = new Date(ar2[0], ar2[1], ar2[2]);
        const dif = da2 - da1;
        const cDay = 24 * 60 * 60 * 1000;
        alert(parseInt(dif/cDay));

        document.querySelector('#mall_date_pick').innerHTML=day1 + ' ~ '+day2+' 매출';
        if(day1 === '' || day2===''){
            alert('날짜를 입력해 주세요')
        } else{
        for (let i = 2; i < 9; i++) {
            let hihi = i;

            if (hihi === 8) {
                let hoho = 1;
                $.ajax({
                    type: 'POST',
                    url: "getDayPrice.mdo", //cross-domain error가 발생하지 않도록 주의해주세요
                    dataType: 'json',
                    contentType: 'application/json',
                    data: JSON.stringify({
                        order_no: hoho,
                        order_state: day1,
                        order_memo: day2,
                    }),
                    success: function (data) {
                        let numTop = document.querySelector('#topPriceDay').innerHTML;
                        let numDown = document.querySelector('#downPriceDay').innerHTML;
                        if(parseInt(numTop) < data.order_price)  document.querySelector('#topPriceDay').innerHTML = data.order_price.toString();
                        if(parseInt(numDown) > data.order_price) document.querySelector('#downPriceDay').innerHTML = data.order_price.toString();
                        myLineChart.data.datasets[0].data[6] = data.order_price;
                        myLineChart.update();
                    },
                    error: function (xhr) {
                        myLineChart.data.datasets[0].data[6] = 0;
                        myLineChart.update();
                    }
                });
            } else {
                $.ajax({
                    type: 'POST',
                    url: "getDayPrice.mdo", //cross-domain error가 발생하지 않도록 주의해주세요
                    dataType: 'json',
                    contentType: 'application/json',
                    data: JSON.stringify({

                        order_no: hihi,
                        order_state: day1,
                        order_memo: day2,
                    }),
                    success: function (data) {
                        let numTop = document.querySelector('#topPriceDay').innerHTML;
                        let numDown = document.querySelector('#downPriceDay').innerHTML;
                        if(parseInt(numTop) < data.order_price)  document.querySelector('#topPriceDay').innerHTML = data.order_price.toString();
                        if(parseInt(numDown) > data.order_price) document.querySelector('#downPriceDay').innerHTML = data.order_price.toString();
                        myLineChart.data.datasets[0].data[hihi - 2] = data.order_price;
                        myLineChart.update();
                    },
                    error: function (xhr) {
                        myLineChart.data.datasets[0].data[6] = 0;
                        myLineChart.update();
                    }
                });
            }
        }
        }

    }



<<<<<<< HEAD
</script>
=======
<%--        if(date1 !== '') window.location.href = 'kinderGardenCalculate.mdo?dateOne='+date1;--%>
<%--        else swal('날짜를 선택해주세요!');--%>
<%--    }--%>
>>>>>>> 8ab5f2369047ffe4309251c60ecb754009f7b113

</body>
</html>
