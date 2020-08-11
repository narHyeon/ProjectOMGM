<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>관리자</title>
</head>
<body>관리자 메인화면입니다.

<div class="col-lg-6 mb-4">

    <!-- 호텔 예약 현황 -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">호텔 예약 현황</h6>
        </div>
        <div class="card-body">
            <div class="text-left">
                <li>2020년 08월 17일 스위트드림룸 홍길동 페르시안</li>
                <li>2020년 08월 17일 화이트와인룸 손오공 스핑크스</li>
                <li>2020년 08월 17일 디즈니월드룸 나랑구 브리티시 숏헤어</li>
            </div>
            <p style="color:#36b9cc; margin: 20px 0 0 20px;">현재 확인되지 않은 3개의 예약이 있습니다!</p>
        </div>
    </div>

    <!-- 유치원 예약 현황 -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">유치원 예약 현황</h6>
        </div>
        <div class="card-body">
            <div class="text-left">
                <li>2020년 08월 17일 (1주일 코스) 홍길동 페르시안</li>
                <li>2020년 08월 17일 (1주일 코스) 손오공 스핑크스</li>
                <li>2020년 08월 17일 (1주일 코스) 나랑구 브리티시 숏헤어</li>
                <li>2020년 08월 24일 (1주일 코스) 안녕맨 먼치킨</li>
                <li>2020년 08월 24일 (1주일 코스) 학원걸 랙돌</li>
            </div>
                <p style="color:#36b9cc; margin: 20px 0 0 20px;">현재 확인되지 않은 5개의 예약이 있습니다!</p>
        </div>
    </div>

</div>

<!-- Area Chart -->
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Area Chart</h6>
    </div>
    <div class="card-body">
        <div class="chart-area">
            <canvas id="myAreaChart"></canvas>
        </div>
        <hr>
        Styling for the area chart can be found in the <code>/js/demo/chart-area-demo.js</code> file.
    </div>
</div>
</body>
</html>
