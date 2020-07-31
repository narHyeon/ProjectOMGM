<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>$Title$</title>
</head>
<body>
  <h2>클라이언트</h2>
  <a href="main.do">프로젝트 메인화면</a>
  <hr>
  <h3>Review 페이지</h3>
  <a href="reviewWrite.do">review_writer 페이지 이동</a>
  <a href="reviewListBoard.do">review_list 페이지 이동</a>
  <a href="reviewContent.do">review_content 페이지 이동</a>
  <hr>
  <h3>개별 작업 페이지</h3>
  <a href="messageService.do">문자 서비스 소개 페이지</a>
  <a href="pickupService_info.do">pickup-intro 페이지로 이동</a>
  <a href="kinderGarden.do">유치원 소개 페이지</a>
  <a href="kinderGardenReservation.do">유치원 예약 페이지</a>
  <a href="reservation.do">호텔 예약 페이지</a>
  <a href="login.do">로그인</a>
  <a href="introductionPage.do">오시는길 이용안내 페이지 이동</a>
  <a href="toySales.do">상품 판매 페이지 이동</a>
  <a href="roomIntroduction.do">방 소개 페이지 이동</a>
  <hr>
  <h2>관리자 페이지</h2>
  <a href="adminMain.mdo">관리자 메인 화면 이동</a>
  <hr>
  <h3>관리자 개별 작업 페이지</h3>
  <a href="kinderGardenSchedule.mdo">관리자 유치원 시간표</a>
  <a href="kinderGardenScheduleMonth.mdo">관리자 유치원 달력</a>
  <a href="kinderGardenReservation.mdo">관리자 유치원 예약현황</a>
  <a href="hotelReservation.mdo">호텔 예약현황 페이지 이동</a>
  <a href="deliveryStatus.mdo">배송현황 페이지 이동</a>
  <a href="productRegister.mdo">상품등록 페이지 이동</a>

  <form action="upload.do" method="post" enctype="multipart/form-data">
    <input type="file" name="uploadFile">
    <button type="submit">파일 업로드</button>
  </form>
</body>
</html>
