<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>$Title$</title>
</head>
<body>

  <h2>클라이언트</h2>
  <a href="main.do">프로젝트 메인화면</a>
  <hr>

<%--  <h3>Review 페이지</h3>--%>
<%--  <a href="reviewListBoard.do">review 게시판 이동</a>--%>
<%--  <hr>--%>
<%--  <h3>개별 작업 페이지</h3>--%>
<%--  <a href="messageService.do">문자 서비스 소개 페이지</a>--%>
<%--  <a href="pickupService_info.do">pickup-intro 페이지로 이동</a>--%>
<%--  <a href="kinderGarden.do">유치원 소개 페이지</a>--%>
<%--  <a href="kinderGardenReservation.do">유치원 예약 페이지</a>--%>
<%--  <a href="reservation.do">호텔 예약 페이지</a>--%>
<%--  <a href="introductionPage.do">오시는길 이용안내 페이지 이동</a>--%>
<%--  <a href="toySales.do">상품 판매 페이지 이동</a>--%>
<%--  <a href="roomIntroduction.do">방 소개 페이지 이동</a>--%>

  <h3>클라이언트 개별 작업 페이지</h3>
  <a href="chatting.lo">webSocket 테스트</a>
  <a href="deliveryStatus.do">배송현황</a>
  <hr>
  <h2>관리자 페이지</h2>
  <a href="adminMain.mdo">관리자 메인 화면 이동</a>
  <hr>
  <h3>관리자 개별 작업 페이지</h3>

  <a href="roomList.mdo">방등록 페이지 이동</a>
  <a href="calculateTest.mdo">정산 관리 페이지 이동</a>

  <%--  <a href="kinderGardenSchedule.mdo">관리자 유치원 시간표</a>--%>
<%--  <a href="kinderGardenScheduleMonth.mdo">관리자 유치원 달력</a>--%>
<%--  <a href="kinderGardenReservation.mdo">관리자 유치원 예약현황</a>--%>
<%--  <a href="hotelReservation.mdo">호텔 예약현황 페이지 이동</a>--%>
<%--  <a href="deliveryStatus.mdo">배송현황 페이지 이동</a>--%>
<%--  <a href="productRegister.mdo">상품등록 페이지 이동</a>--%>
<%--  <a href="productInquiryToy.mdo">상품조회 장난감 페이지 이동</a>--%>
<%--  <a href="pickupServiceManagement.mdo">픽업서비스관리 페이지 이동</a>--%>
<%--  <a href="productDeleteUpdate.mdo"> 상품 수정 삭제 페이지 이동</a>--%>

  <hr><br>
  <form action="smsMessage.mdo">
    받는사람번호: <input type="text" name="sendNumber"><br>
    보내는사람번호: <input type="text" name="receiveNumber"><br>
    메세지: <input type="text" name="message"><br>
    <button type="submit">전송</button>
  </form>

</body>
</html>
