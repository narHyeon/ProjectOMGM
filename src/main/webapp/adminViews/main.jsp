<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
                            <div class="h5 mb-0 font-weight-bold text-gray-800">10건</div>
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
                            <div class="h5 mb-0 font-weight-bold text-gray-800">10건</div>
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
                            <div class="text-m font-weight-bold text-info text-uppercase mb-1">주문</div>
                            <div class="row no-gutters align-items-center">
                                <div class="col-auto">
                                    <div class="h5 mb-0 font-weight-bold text-gray-800">5건</div>
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
                            <div class="h5 mb-0 font-weight-bold text-gray-800">18명</div>
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
                    <p style="color:#36b9cc; margin: 20px 0 0 20px; font-size:90%; font-weight: 600; "> <code>주문:</code> 5000건 <code>회원가입:</code>500명 <code>유치원예약:</code>2,000,000원 <code>호텔예약:</code>9,000,000원</p>
                </div>
            </div>

        </div>

        <!-- 호텔 & 유치원 예약 현황 -->
        <div class="col-xl-4 col-lg-5">

                    <!-- 호텔 예약 현황 -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">호텔 예약 현황</h6>
                        </div>
                        <div class="card-body">
                            <div class="text-left" style="font-size:90%; font-weight:600;">
                                <li>2020년 08월 17일 스위트드림룸 홍길동 페르시안</li>
                                <li>2020년 08월 17일 화이트와인룸 손오공 스핑크스</li>
                                <li>2020년 08월 17일 디즈니월드룸 나랑구 브리티시 숏헤어</li>
                            </div>
                            <p style="color:#36b9cc; margin: 20px 0 0 20px; font-size:90%;">현재 확인되지 않은 3개의 예약이 있습니다!</p>
                        </div>
                    </div>

                    <!-- 유치원 예약 현황 -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">유치원 예약 현황</h6>
                        </div>
                        <div class="card-body">
                            <div class="text-left" style="font-size:90%; font-weight:600;">
                                <li>2020년 08월 17일 (1주일 코스) 홍길동 페르시안</li>
                                <li>2020년 08월 17일 (1주일 코스) 손오공 스핑크스</li>
                                <li>2020년 08월 17일 (1주일 코스) 나랑구 브리티시 숏헤어</li>
                                <li>2020년 08월 24일 (1주일 코스) 안녕맨 먼치킨</li>
                                <li>2020년 08월 24일 (1주일 코스) 학원걸 랙돌</li>
                            </div>
                            <p style="color:#36b9cc; margin: 20px 0 0 20px; font-size:90%;">현재 확인되지 않은 5개의 예약이 있습니다!</p>
                        </div>
                    </div>
        </div>

        <!--주간판매매출 (Bar Chart) -->
        <div class="col-xl-8 col-lg-7">
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

    <!-- Mall 주문 현황 -->
    <div class="col-xl-4 col-lg-5">

        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Mall 주문 현황</h6>
            </div>
            <div class="card-body">
                <div class="text-left" style="font-size:90%; font-weight:600;">
                    <table class="table table_bordered" id="order_list" width="100%" cellspacing="0">
                        <thead>
                        <tr class="productOrderField">
                            <th>주문번호</th>
                            <th>이미지</th>
                            <th>상품명</th>
                            <th>가격</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="orderDetail" items="${orderDetail}">
                            <tr class="order_feild">
                                <th>1</th>
                                <th>2</th>
                                <th>3</th>
                                <th>4</th>
                            </tr>
                            <tr class="order_feild">
                                <th>1</th>
                                <th>2</th>
                                <th>3</th>
                                <th>4</th>
                            </tr>
                            <tr class="order_feild">
                                <th>1</th>
                                <th>2</th>
                                <th>3</th>
                                <th>4</th>
                            </tr>
                            <tr class="order_feild">
                                <th>1</th>
                                <th>2</th>
                                <th>3</th>
                                <th>4</th>
                            </tr>
                            <tr class="order_feild">
                                <th>1</th>
                                <th>2</th>
                                <th>3</th>
                                <th>4</th>
                            </tr>

                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    </div>
</div>

<!-- Page level plugins -->
<script src="resources/admin/vendor/chart.js/Chart.min.js"></script>

<!-- Page level custom scripts -->
<script src="resources/admin/js/main/chart-bar-demo.js"></script>
<%--<script src="resources/admin/js/demo/chart-pie-demo.js"></script>--%>
<script src="resources/admin/js/main/chart-area-demo.js"></script>
