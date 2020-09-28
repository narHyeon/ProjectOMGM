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
        .kinderGarden_pagination1 {
            display: flex;
            flex-direction: row;
            justify-content: center;
        }
        .kinderGarden_pagination1 ul{
            display: flex;
            flex-direction: row;
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
                <tbody id="reser_confirm_tbody11">
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
            <div id="feedToyTotalSum" style="display: flex; justify-content: flex-end"></div>
        </div>
    </div>
</div>

<%--  pagination --%>
<div class="kinderGarden_pagination1">
    <ul class="paginate_button page-item previous disabled"> <a href="#" class="page-link"  onclick="paging(event,tbody1,currentPage1-1,prev1,next1,pageCount1,1)">Prev</a> </ul>
    <ul></ul>
    <ul class="paginate_button page-item next"> <a href="#" class="page-link"  onclick="paging(event,tbody1,currentPage1+1,prev1,next1,pageCount1,1)">Next</a> </ul>
</div>

<%--Mall관련 판매현황--%>
<div id="mall_chart">
    <!-- Area Chart -->
    <div id="mall_chart_graph01" style="height: 200px; width: 100%;" class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-info">매출 현황</h6>
        </div>
        <div id="mall_chart_bot" class="card-body">
            <div>
<%--                <p style="color: #3c85dc; padding-top: 25px;padding-left: 18px; font-size: 25px;" id="todayOrderSales"></p>--%>
                <p id="mall_date_pick" style=" font-size: 25px;"></p><br>

            </div>
            <div id="mall_dwm" style="font-weight: bolder; width:31%; " class="text-right">
                <p>오늘(Today) : ${today}원</p>
                    <p id="mallWeekSales">0</p>
                <p id="mallMonthSales">MONTH : 100000000원</p>
            </div>
        </div>
    </div>

</div>

<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="resources/admin/vendor/chart.js/Chart.min.js"></script>
<script src="resources/admin/js/mall/chartPie.js"></script>
<script src="resources/admin/js/mall/chartArea.js"></script>
<script>

    // 상품별 총 매출합산
    let toySum= 0;
    let feedSum = 0;
    <c:forEach var="toyCal" items="${toyCal}">
        toySum += ${(100-toyCal.toy_stock)*toyCal.toy_discount}
    </c:forEach>
    <c:forEach var="feedCal" items="${feedCal}">
        feedSum += ${(100-feedCal.feed_stock)*feedCal.feed_discount}
    </c:forEach>
    document.querySelector('#feedToyTotalSum').innerHTML='장난감 총 매출 : '+toySum+'원 &nbsp;&nbsp;&nbsp;&nbsp; 사료 총 매출 : '+feedSum+'원'+'&nbsp;&nbsp;&nbsp;&nbsp;'+'총 매출 : '+(toySum+feedSum);
<%--    ///// 페이지 네이션 //////////////////////////////////////////////////////////////////////////////--%>

// 페이지네이션 관련
let tbody1; // 페이지네이션 몸체
let page1; // 페이지 블럭 몸체
let contentCount1 = 0; // 페이지 총 수
let pageCount1 = 0; // 그룹 총 수

let currentPage1 = 1; // 현재 페이지

const prev1 = document.querySelector('.kinderGarden_pagination1 ul:nth-child(1)');
const next1 = document.querySelector('.kinderGarden_pagination1 ul:nth-child(3)');

// 초기화 작업
window.addEventListener('DOMContentLoaded', () => {
    tbody1 = document.querySelectorAll('#reser_confirm_tbody11 tr');

    tbody1.forEach((item,index) => {
        contentCount1++;
        if(index >= 5) item.style.display = 'none';
    });

    page1 = document.querySelector('.kinderGarden_pagination1 ul:nth-child(2)');
    pageCount1 = Math.ceil(contentCount1/5); // 올림


    pagination(page1,pageCount1,1,currentPage1);
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
    
<%--    //////////////////////////////////////////////////////////////////////////////--%>
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
                document.querySelector('#mallWeekSales').innerHTML = '이번주(This Week) : ' + data.order_price+'원';
                document.querySelector('#mallMonthSales').innerHTML = '이번달(This Month) : '+ data.order_quantity + '원';
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


        if(parseInt(dif/cDay)<=7){
            myLineChart.data.datasets[0].data[0] = 0;
            myLineChart.data.datasets[0].data[1] = 0;
            myLineChart.data.datasets[0].data[2] = 0;
            myLineChart.data.datasets[0].data[3] = 0;
            myLineChart.data.datasets[0].data[4] = 0;
            myLineChart.data.datasets[0].data[5] = 0;
            myLineChart.data.datasets[0].data[6] = 0;
        }
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
                        document.querySelector('#mall_date_pick').innerHTML=day1 + ' ~ '+day2+' </br>'+'매출 : ' + data.order_point+'원';
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




</script>
<%--        if(date1 !== '') window.location.href = 'kinderGardenCalculate.mdo?dateOne='+date1;--%>
<%--        else swal('날짜를 선택해주세요!');--%>
<%--    }--%>


</body>
</html>
