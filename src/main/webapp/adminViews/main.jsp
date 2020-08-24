<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%--
  Created by IntelliJ IDEA.
  User: Jury
  Date: 2020-07-28
  Time: 오후 2:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
        <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>
    </div>

    <!-- Content Row -->
    <div class="row">

        <!-- 호텔예약 수 -->
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-m font-weight-bold text-primary text-uppercase mb-1">호텔예약</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800" id="mainAreaChartMallCount04">10건</div>
                        </div>
                        <div class="col-auto">
                            <i class="far fa-calendar-alt fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--유치원예약 수-->
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-success shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-m font-weight-bold text-success text-uppercase mb-1">유치원예약</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800" id="mainAreaChartMallCount05">10건</div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-school fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- 주문수 -->
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-info shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-m font-weight-bold text-info text-uppercase mb-1" >주문</div>
                            <div class="row no-gutters align-items-center">
                                <div class="col-auto">
                                    <div class="h5 mb-0 font-weight-bold text-gray-800" id="mainAreaChartMallCount06">5건</div>
                                </div>
                                <div class="col">
<%--                                                <div class="progress progress-sm mr-2">--%>
<%--                                                    <div class="progress-bar bg-info" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>--%>
<%--                                                </div>--%>
                                </div>
                            </div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-shopping-cart  fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- 신규가입 수 -->
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-warning shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-m font-weight-bold text-warning text-uppercase mb-1">신규가입</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800" id="mainAreaChartMallCount07">18명</div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-user-plus fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Content Row -->

    <div class="row">

        <!--월간판매매출 (Area Chart) -->
        <div class="col-xl-8 col-lg-7">
            <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                    <h6 class="m-0 font-weight-bold text-primary">월간판매매출</h6>
                    <div class="dropdown no-arrow">
                        <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
                            <div class="dropdown-header">Dropdown Header:</div>
                            <a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                    </div>
                </div>
                <!-- Card Body -->
                <div class="card-body">
                    <div class="chart-area">
                        <canvas id="myAreaChart"></canvas>
                    </div>
                    <hr>
                    <p style="color:#36b9cc; margin: 20px 0 0 20px; font-size:90%; font-weight: 600;"> <code>주문:</code> <code id="mainAreaChartMallCount00"style="font-size: larger; color: #36b9cc">5000건</code>
                        <code>회원가입:</code><code id="mainAreaChartMallCount01"style="font-size: larger; color: #36b9cc"></code>
                        <code>유치원예약:</code>
                        <code id="mainAreaChartMallCount02"style="font-size: larger; color: #36b9cc"></code>
                        <code>호텔예약:</code><code id="mainAreaChartMallCount03"style="font-size: larger; color: #36b9cc"></code></p>
                </div>
            </div>


            <!--주간판매매출 (Bar Chart) -->

            <div class="card shadow mb-4">
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                    <h6 class="m-0 font-weight-bold text-primary">주간판매매출</h6>
                </div>
                <div class="card-body">
                    <div class="chart-bar">
                        <canvas id="myBarChart"></canvas>
                    </div>
                    <%--                            <hr style="width:300px;" >--%>
                    <%--                            Styling for the bar chart can be found in the <code>/js/demo/chart-bar-demo.js</code> file.--%>
                </div>
            </div>
        </div>





        <!-- 호텔 & 유치원 예약 현황 -->
        <div class="col-xl-4 col-lg-5">

                    <!-- 호텔 예약 현황 -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">금일 호텔 예약 현황</h6>
                        </div>
                        <div class="card-body">
                            <div class="text-left" id="mainAreaChartMallCount08" style="font-size:90%; font-weight:600;">
                                <c:forEach var="RRList" items="${RRList}">
                                    <li><fmt:formatDate value="${RRList.roomReservation_payDay}" pattern="yyyy-MM-dd"></fmt:formatDate> ${RRList.roomReservation_memberNo}번손님 ${RRList.roomReservation_roomNo}번방</li>
                                </c:forEach>
                            </div>
                            <p style="color:#36b9cc; margin: 20px 0 0 20px; font-size:90%;"></p>
                        </div>
                    </div>

                    <!-- 유치원 예약 현황 -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">금일 유치원 예약 현황</h6>
                        </div>
                        <div class="card-body">
                            <div class="text-left" style="font-size:90%; font-weight:600;">
                                <c:forEach var="KGList" items="${KGList}">
                                    <li> <${KGList.name}>예약  ${KGList.animal}</li>
                                </c:forEach>
                            </div>
                            <p style="color:#36b9cc; margin: 20px 0 0 20px; font-size:90%;"></p>
                        </div>
                    </div>




    <!-- Mall 주문 현황 -->

        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">금일 Mall 주문 현황</h6>
            </div>
            <div class="card-body">
                <div class="text-left" style="font-size:90%; font-weight:600;">
                    <table class="table table_bordered" id="order_list" width="100%" cellspacing="0">
                        <thead>
                        <tr class="productOrderField">
                            <th>주문번호</th>
<%--                            <th>이미지</th>--%>
                            <th>상품명</th>
                            <th>가격</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="MallList" items="${MList}">
                            <tr class="order_feild">
                                <td>${MallList.order_tn}</td>
<%--                                <td>${MList}</td>--%>
                                <td>${MallList.order_name}</td>
                                <td>${MallList.order_price}</td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    </div>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>

<!-- Page level plugins -->
<script src="resources/admin/vendor/chart.js/Chart.min.js"></script>

<%--<script src="resources/admin/js/demo/chart-pie-demo.js"></script>--%>
<script src="resources/admin/js/main/chartAreaMain.js"></script>
<script>
    $ = jQuery;
    // 상품 몰 매출
    for(var i=1; i<13; i++) {
        let count = i;
        $.ajax({
            type: 'POST',
            url: "getAreaChartMonthlySales.mdo", //cross-domain error가 발생하지 않도록 주의해주세요
            dataType: 'json',
            contentType: 'application/json',
            data: JSON.stringify({
                order_address: '2020-'+i+'-01',
                order_receiver: '2020-'+i+'-29',
            }),
            success: function (data) {
                // alert(data.order_quantity);
                document.querySelector('#mainAreaChartMallCount00').innerHTML=data.order_quantity+'건';
                document.querySelector('#mainAreaChartMallCount01').innerHTML=data.order_point+'명';
                document.querySelector('#mainAreaChartMallCount02').innerHTML=data.order_point_used+'원';
                document.querySelector('#mainAreaChartMallCount03').innerHTML=data.order_no+'원';
                myLineChart.data.datasets[0].data[count-1] = data.order_price;
                myLineChart.update();

            },
            error: function (xhr) {
                // myLineChart.data.datasets[2].data[counts-1] = 0;
            }
        });
    }
    // 유치원 예약 매출
    for(var i=1; i<13; i++) {
        let counts = i;
        $.ajax({
            type: 'POST',
            url: "getAreaChartMonthlySales01.mdo", //cross-domain error가 발생하지 않도록 주의해주세요
            dataType: 'json',
            contentType: 'application/json',
            data: JSON.stringify({

                zipcode: '2020-'+i+'-01',
                address: '2020-'+i+'-29',
            }),
            success: function (data) {
                myLineChart.data.datasets[1].data[counts-1] = data;
                myLineChart.update();

            },
            error: function (xhr) {
                // myLineChart.data.datasets[2].data[counts-1] = 0;
            }
        });
    }
    // 호텔 예약 매출
    for(var i=1; i<13; i++) {
        let countss = i;
        $.ajax({
            type: 'POST',
            url: "getAreaChartMonthlySales02.mdo", //cross-domain error가 발생하지 않도록 주의해주세요
            dataType: 'json',
            contentType: 'application/json',
            data: JSON.stringify({

                roomReservation_pickupYn: '2020-'+i+'-01',
                roomReservation_pickupAddress: '2020-'+i+'-29',
            }),
            success: function (data) {
                document.querySelector('#mainAreaChartMallCount04').innerHTML=data.roomReservation_roomNo+'건';
                document.querySelector('#mainAreaChartMallCount05').innerHTML=data.roomReservation_memberNo+'건';
                document.querySelector('#mainAreaChartMallCount06').innerHTML=data.roomReservation_foodNo+'건';
                document.querySelector('#mainAreaChartMallCount07').innerHTML=data.roomReservation_toyNo+'명';
                myLineChart.data.datasets[2].data[countss-1] = data.roomReservation_no;
                myLineChart.update();
            },
            error: function (xhr) {
                myLineChart.data.datasets[2].data[countss-1] = 0;
            }
        });
    }
</script>
    <!-- Page level plugins -->
    <script src="resources/admin/vendor/chart.js/Chart.min.js"></script>
    <!-- Page level custom scripts -->
    <script src="resources/admin/js/main/chartBarMain.js"></script>
    <script>
    // 상품 몰 매출(한주)
        for(var i=0; i<7; i++) {
            let countsss = i;
            $.ajax({
                type: 'POST',
                url: "getBarChartWeekSales.mdo", //cross-domain error가 발생하지 않도록 주의해주세요
                dataType: 'json',
                contentType: 'application/json',
                data: JSON.stringify({
                    order_point: i,

                }),
                success: function (data) {
                    // alert('몰 : '+data.order_price);

                    myBarChart.data.datasets[0].data[countsss] = data.order_price;
                    myBarChart.update();
                },
                error: function (xhr) {
                    myBarChart.data.datasets[0].data[countsss] = 0;
                    myBarChart.update();
                }
            });
        }
    // 상품 유치원 매출(한주)
    for(var i=0; i<7; i++) {
        let countsss = i;
        $.ajax({
            type: 'POST',
            url: "getBarChartWeekSales01.mdo", //cross-domain error가 발생하지 않도록 주의해주세요
            dataType: 'json',
            contentType: 'application/json',
            data: JSON.stringify({
                animalAge: i,

            }),
            success: function (data) {
                // alert('유치원 : '+data.price);
                myBarChart.data.datasets[1].data[countsss] = data.price;
                myBarChart.update();
            },
            error: function (xhr) {
                myBarChart.data.datasets[1].data[countsss] = 0;
                myBarChart.update();
            }
        });
    }
    // 호텔 유치원 매출(한주)
    for(var i=0; i<7; i++) {
        let countsss = i;
        $.ajax({
            type: 'POST',
            url: "getBarChartWeekSales02.mdo", //cross-domain error가 발생하지 않도록 주의해주세요
            dataType: 'json',
            contentType: 'application/json',
            data: JSON.stringify({
                roomReservation_roomNo: i,

            }),
            success: function (data) {
                // alert('호텔 : '+data.roomReservation_fee);
                myBarChart.data.datasets[2].data[countsss] = data.roomReservation_fee;
                myBarChart.update();
            },
            error: function (xhr) {
                myBarChart.data.datasets[2].data[countsss] = 0;
                myBarChart.update();
            }
        });
    }
</script>


