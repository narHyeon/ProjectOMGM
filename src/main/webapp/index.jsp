<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>$Title$</title>
</head>
<body>

  <h3>클라이언트</h3>
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
  <h2>클라이언트 개별 작업 페이지</h2>
  <a href="getMallFeedList.do">상품 리스트 페이지 이동</a>
  <a href="cart.do">장바구니 페이지 이동</a>
  <hr>
  <h2>관리자 페이지</h2>
  <a href="adminMain.mdo">관리자 메인 화면 이동</a>
  <hr>
  <h3>관리자 개별 작업 페이지</h3>

  <a href="productStatus.mdo">주문현황 페이지 이동 - 해결바람</a>
  <a href="orderInquiry.mdo">주문조회 페이지 이동 - 해결바람</a>
  <a href="productOrder.mdo">주문현황 페이지 이동</a>
  <a href="getMallPointList.mdo">포인트 지급내역 페이지 이동</a>


  <%--  <a href="kinderGardenSchedule.mdo">관리자 유치원 시간표</a>--%>
<%--  <a href="kinderGardenScheduleMonth.mdo">관리자 유치원 달력</a>--%>
<%--  <a href="kinderGardenReservation.mdo">관리자 유치원 예약현황</a>--%>
<%--  <a href="hotelReservation.mdo">호텔 예약현황 페이지 이동</a>--%>
<%--  <a href="deliveryStatus.mdo">배송현황 페이지 이동</a>--%>
<%--  <a href="productRegister.mdo">상품등록 페이지 이동</a>--%>
<%--  <a href="productInquiryToy.mdo">상품조회 장난감 페이지 이동</a>--%>
<%--  <a href="pickupServiceManagement.mdo">픽업서비스관리 페이지 이동</a>--%>
<%--  <a href="productDeleteUpdate.mdo"> 상품 수정 삭제 페이지 이동</a>--%>


  <button type="button" class="btn btn-lg btn-block  btn-custom" id="charge_kakao" onClick="btn()">테스트</button>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script>
  function btn() {
    let IMP = window.IMP;
    IMP.init('imp95616027');
    IMP.request_pay({
      pg : 'kakao', // version 1.1.0부터 지원.
      pay_method : 'card',
      merchant_uid : 'merchant_' + new Date().getTime(),
      name : '주문명:결제테스트',
      amount : 14000,
      buyer_email : 'iamport@siot.do',
      buyer_name : '구매자이름',
      buyer_tel : '010-1234-5678',
      buyer_addr : '서울특별시 강남구 삼성동',
      buyer_postcode : '123-456',
      m_redirect_url : 'https://localhost:8080/main.do'
    }, function(rsp) {
      if ( rsp.success ) {
        var msg = '결제가 완료되었습니다.';
        msg += '고유ID : ' + rsp.imp_uid;
        msg += '상점 거래ID : ' + rsp.merchant_uid;
        msg += '결제 금액 : ' + rsp.paid_amount;
        msg += '카드 승인번호 : ' + rsp.apply_num;
      } else {
        var msg = '결제에 실패하였습니다.';
        msg += '에러내용 : ' + rsp.error_msg;
      }
      alert(msg);
    });
  }

</script>
</body>
</html>
