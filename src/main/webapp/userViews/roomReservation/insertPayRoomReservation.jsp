<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" type="text/css"
	href="resources/style/payRoomReservation/pay.css">
<link rel="stylesheet" type="text/css"
	href="resources/style/payRoomReservation/pay2.css">
<link rel="apple-touch-icon-precomposed"
	href="images/icon/flat-design-touch.png">
<style type="text/css">
#payreservation_wrap {
	display: flex;
	flex-direction: column;
	margin-top: 2%;
	margin-left: 15%;
	margin-right: 15%;
	margin-bottom: 2%;
}

#payreservation_head {
	min-width: 60%;
	margin-top: 2%;
	margin-bottom: 2%;
	font-size: 20px;
	padding-bottom: 1%;
	border-bottom: 2px solid #FFABB9;
}

#payreservation_head2 {
	min-width: 60%;
	margin-top: 2%;
	margin-bottom: 2%;
	font-size: 20px;
	padding-bottom: 1%;
	border-bottom: 2px solid #21F0A1;
}

#board_table {
	border: 1px solid #444444;
}

.reservation_td_key {
	border: 1px solid #F28888;
	height: 56px;
	background: #FFABB9;
	padding-top: 20px;
}

.reservation_td_value {
	border: 1px solid #F28888;
	height: 56px;
	padding-left: 2%;
	padding-top: 20px;
}

.reservationpay_td_key {
	border: 1px solid #1fc485;
	height: 56px;
	background: #21F0A1;
	padding-top: 20px;
}

.reservationpay_td_value {
	border: 1px solid #1fc485;
	height: 56px;
	padding-left: 2%;
	padding-top: 20px;
}

#point_button {
	margin-left: 5%;
	border: 1px solid #1fc485;
	color: white;
	background: #1fc485;
	cursor: pointer;
	height: 55%;
	width: 25%;
	margin-top: 12px;
}

#point_text {
	border: 1px solid #1fc485;
	height: 55%;
	width: 60%;
	margin-top: 12px;
	color: black;
}

#point_tr {
	padding-top: 0px;
}

#div_paysubmitbtarea {
	margin-top: 2%;
}

#paysubmitbt {
	border: 1px solid #1fc485;
	color: white;
	background: #1fc485;
	cursor: pointer;
	width: 12%;
	height: 38px;
	float: right;
}
</style>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		calcul();
		$("#point_button").click(function() {
			if (checkUsePoint()) {
				calcul();
			}
		});
		$("#paysubmitbt").click(function() {
			beforeSubmit();
			kakaoReservation()
		});
	});
	function calcul() {
		const roomPrice = $("#room_price").text();
		const numRoomPrice = roomPrice.replace(/[^\d]+/g, '');
		const saleRate = $("#room_saleRate").text();
		const numSaleRate = parseInt(saleRate);
		const myPoint = $("#my_point").text();
		const numMyPoint = parseInt(myPoint);
		const usePoint = $("#point_text").val();
		const finalPrice = (numRoomPrice * ((100 - numSaleRate) / 100))
				- usePoint;
		const strFinalPrice = finalPrice.toString().replace(
				/\B(?=(\d{3})+(?!\d))/g, ",");
		const addPoint = finalPrice / 10;
		const strAddPoint = addPoint.toString().replace(
				/\B(?=(\d{3})+(?!\d))/g, ",");

		$("#final_price").html(strFinalPrice + "원");
		$("#add_point").html(strAddPoint + "P");
	}
	function checkUsePoint() {
		const myPoint = $("#my_point").text();
		const numMyPoint = myPoint.replace(/[^\d]+/g, '');
		const usePoint = $("#point_text").val();
		if (Number(usePoint) > Number(numMyPoint)) {
			alert("보유 포인트보다 큰 포인트를 사용하실수 없습니다.");
			return false
		} else {
			return true;
		}
	};
	function beforeSubmit() {
		const roomPrice = $("#room_price").text();
		const numRoomPrice = roomPrice.replace(/[^\d]+/g, '');
		const saleRate = $("#room_saleRate").text();
		const numSaleRate = parseInt(saleRate);
		const usePoint = $("#point_text").val();
		const finalPrice = (numRoomPrice * ((100 - numSaleRate) / 100))
				- usePoint;
		const addPoint = finalPrice / 10;
		const strDate = $("#stayDay").text();
		function to_date(strDate) {
			var yyyyMMdd = String(strDate);
			var sYear = yyyyMMdd.substring(0, 4);
			var sMonth = yyyyMMdd.substring(6, 8);
			var sDate = yyyyMMdd.substring(10, 12);
			var final_date = new Date(Number(sYear), Number(sMonth) - 1,
					Number(sDate));
			return final_date;
		}
		$("#ROOMRESERVATION_STAYDAY").val(to_date(strDate));

		if (parseInt(usePoint) == 0) {
			$("#ROOMRESERVATION_USEPOINTYN").val("N");
			$("#ROOMRESERVATION_USEPOINT").val(0);
		} else {
			$("#ROOMRESERVATION_USEPOINTYN").val("Y");
			$("#ROOMRESERVATION_USEPOINT").val(usePoint);
		}
		$("#ROOMRESERVATION_PLUSPOINT").val(addPoint);
		$("#ROOMRESERVATION_FIANLFEE").val(finalPrice);
	}
	//github.com/iamport/iamport-manual/blob/master/%EC%9D%B8%EC%A6%9D%EA%B2%B0%EC%A0%9C/README.md
	function kakaoReservation() {
		var IMP = window.IMP; // 생략가능
		IMP.init('imp00339951'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
		var msg
		const userPayMoney = $("#ROOMRESERVATION_FIANLFEE").val();
		const userName = $("#reservation_username").text();
		let reservationData;
		if ($("#ROOMRESERVATION_PICKUPYN").val()=="Y") {
			reservationData = {
                	ROOMRESERVATION_ROOMNO: $("#ROOMRESERVATION_ROOMNO").val(),
                	ROOMRESERVATION_ROOMPRICE: $("#ROOMRESERVATION_ROOMPRICE").val(),
                	ROOMRESERVATION_ROOMSALERATE: $("#ROOMRESERVATION_ROOMSALERATE").val(),
                	ROOMRESERVATION_ROOMNAME: $("#ROOMRESERVATION_ROOMNAME").val(),
                	ROOMRESERVATION_MEMBERNO: $("#ROOMRESERVATION_MEMBERNO").val(), 
                	ROOMRESERVATION_STAYDAY: $("#ROOMRESERVATION_STAYDAY").val(),
                	ROOMRESERVATION_FOODNO: $("#ROOMRESERVATION_FOODNO").val(),
                	ROOMRESERVATION_FOODNAME: $("#ROOMRESERVATION_FOODNAME").val(),
                	ROOMRESERVATION_TOYNO: $("#ROOMRESERVATION_TOYNO").val(),
                	ROOMRESERVATION_TOYNAME: $("#ROOMRESERVATION_TOYNAME").val(),
                	ROOMRESERVATION_PICKUPYN: $("#ROOMRESERVATION_PICKUPYN").val(),
                	ROOMRESERVATION_PICKUPTIME: $("#ROOMRESERVATION_PICKUPTIME").val(),
                	ROOMRESERVATION_PICKUPANIMAL: $("#ROOMRESERVATION_PICKUPANIMAL").val(),
                	ROOMRESERVATION_PICKUPADDRESS: $("#ROOMRESERVATION_PICKUPADDRESS").val(),
                	ROOMRESERVATION_PICKUPPHONENUM: $("#ROOMRESERVATION_PICKUPPHONENUM").val(),
                	ROOMRESERVATION_PICKUPOWNER: $("#ROOMRESERVATION_PICKUPOWNER").val(),
                	ROOMRESERVATION_PICKUPNOTE: $("#ROOMRESERVATION_PICKUPNOTE").val(),
                	ROOMRESERVATION_USEPOINTYN: $("#ROOMRESERVATION_USEPOINTYN").val(),
                	ROOMRESERVATION_USEPOINT: $("#ROOMRESERVATION_USEPOINT").val(),
                	ROOMRESERVATION_PLUSPOINT: $("#ROOMRESERVATION_PLUSPOINT").val(),
                	ROOMRESERVATION_FIANLFEE: $("#ROOMRESERVATION_FIANLFEE").val()
                }
		}else {
			reservationData = {
                	ROOMRESERVATION_ROOMNO: $("#ROOMRESERVATION_ROOMNO").val(),
                	ROOMRESERVATION_ROOMPRICE: $("#ROOMRESERVATION_ROOMPRICE").val(),
                	ROOMRESERVATION_ROOMSALERATE: $("#ROOMRESERVATION_ROOMSALERATE").val(),
                	ROOMRESERVATION_ROOMNAME: $("#ROOMRESERVATION_ROOMNAME").val(),
                	ROOMRESERVATION_MEMBERNO: $("#ROOMRESERVATION_MEMBERNO").val(),
                	ROOMRESERVATION_STAYDAY: $("#ROOMRESERVATION_STAYDAY").val(),
                	ROOMRESERVATION_FOODNO: $("#ROOMRESERVATION_FOODNO").val(),
                	ROOMRESERVATION_FOODNAME: $("#ROOMRESERVATION_FOODNAME").val(),
                	ROOMRESERVATION_TOYNO: $("#ROOMRESERVATION_TOYNO").val(),
                	ROOMRESERVATION_TOYNAME: $("#ROOMRESERVATION_TOYNAME").val(),
                	ROOMRESERVATION_PICKUPYN: $("#ROOMRESERVATION_PICKUPYN").val(),
                	ROOMRESERVATION_USEPOINTYN: $("#ROOMRESERVATION_USEPOINTYN").val(),
                	ROOMRESERVATION_USEPOINT: $("#ROOMRESERVATION_USEPOINT").val(),
                	ROOMRESERVATION_PLUSPOINT: $("#ROOMRESERVATION_PLUSPOINT").val(),
                	ROOMRESERVATION_FIANLFEE: $("#ROOMRESERVATION_FIANLFEE").val()
                }
		}
		IMP.request_pay({
			pg : 'kakaopay',
			pay_method : 'card',
			merchant_uid : 'merchant_' + new Date().getTime(),
			name : '오묘가묘 결제',
			amount : userPayMoney,
			buyer_name : userName,
		}, function(rsp) {
			if (rsp.success) {
				$.ajax({
                    type: 'POST',
                    url: "/ajaxinsertPayRoomReservation.do",

                    data: reservationData,
                    success : function(data) {
        				msg = '결제가 완료되었습니다.';
        				msg += '\n결제자 이름 : ' + rsp.buyer_name;
        				msg += '\n결제 금액 : ' + rsp.paid_amount;
        				console.log("결제완료");
        				alert(msg);
        				/* 결제 완료후 보내질 페이지*/
        				window.location.href = 'main.do';
                    },
                    error: function(xhr,a,b) {
                    	console.log("결제실패ajax에서");
                    	console.log(xhr);
                    	console.log(a);
                    	console.log(xhr);
                    }
                });

			} else {
				msg = '결제에 실패하였습니다.';
				msg += '에러내용 : ' + rsp.error_msg;
				alert(msg);
			}
		});
	}
</script>
</head>
<body>
	<input type="hidden" name="ROOMRESERVATION_ROOMNO"
		id="ROOMRESERVATION_ROOMNO"
		value="${reservationInfo.ROOMRESERVATION_ROOMNO}">
	<input type="hidden" name="ROOMRESERVATION_ROOMPRICE"
		id="ROOMRESERVATION_ROOMPRICE" 
		value="${reservationInfo.ROOM_PRICE}">
	<input type="hidden" name="ROOMRESERVATION_ROOMSALERATE"
		id="ROOMRESERVATION_ROOMSALERATE" 
		value="${reservationInfo.ROOM_SALERATE}">	
	<input type="hidden" name="ROOMRESERVATION_ROOMNAME"
		id="ROOMRESERVATION_ROOMNAME"
		value="${reservationInfo.ROOMRESERVATION_ROOMNAME}">
	<input type="hidden" name="ROOMRESERVATION_MEMBERNO"
		id="ROOMRESERVATION_MEMBERNO" 
		value="${userInfo.seq}">
	<input type="hidden" name="ROOMRESERVATION_STAYDAY"
		id="ROOMRESERVATION_STAYDAY">
	<input type="hidden" name="ROOMRESERVATION_FOODNO"
		id="ROOMRESERVATION_FOODNO"
		value="${reservationInfo.ROOMRESERVATION_FOODNO}">
	<input type="hidden" name="ROOMRESERVATION_FOODNAME"
		id="ROOMRESERVATION_FOODNAME"
		value="${reservationInfo.ROOMRESERVATION_FOODNAME}">
	<input type="hidden" name="ROOMRESERVATION_TOYNO"
		id="ROOMRESERVATION_TOYNO"
		value="${reservationInfo.ROOMRESERVATION_TOYNO}">
	<input type="hidden" name="ROOMRESERVATION_TOYNAME"
		id="ROOMRESERVATION_TOYNAME"
		value="${reservationInfo.ROOMRESERVATION_TOYNAME}">
	<input type="hidden" name="ROOMRESERVATION_PICKUPYN"
		id="ROOMRESERVATION_PICKUPYN"
		value="${reservationInfo.ROOMRESERVATION_PICKUPYN}">
	<c:choose>
		<c:when test="${reservationInfo.ROOMRESERVATION_PICKUPYN eq 'Y'}">
			<input type="hidden" name="ROOMRESERVATION_PICKUPTIME"
				id="ROOMRESERVATION_PICKUPTIME"
				value="${reservationInfo.ROOMRESERVATION_PICKUPTIME}">
			<input type="hidden" name="ROOMRESERVATION_PICKUPANIMAL"
				id="ROOMRESERVATION_PICKUPANIMAL"
				value="${reservationInfo.ROOMRESERVATION_PICKUPANIMAL}">
			<input type="hidden" name="ROOMRESERVATION_PICKUPADDRESS"
				id="ROOMRESERVATION_PICKUPADDRESS"
				value="${reservationInfo.ROOMRESERVATION_PICKUPADDRESS}">
			<input type="hidden" name="ROOMRESERVATION_PICKUPPHONENUM"
				id="ROOMRESERVATION_PICKUPPHONENUM"
				value="${reservationInfo.ROOMRESERVATION_PICKUPPHONENUM}">
			<input type="hidden" name="ROOMRESERVATION_PICKUPNOTE"
				id="ROOMRESERVATION_PICKUPNOTE"
				value="${reservationInfo.ROOMRESERVATION_PICKUPNOTE}">
			<input type="hidden" name="ROOMRESERVATION_PICKUPOWNER"
				id="ROOMRESERVATION_PICKUPOWNER"
				value="${reservationInfo.ROOMRESERVATION_PICKUPOWNER}">		
		</c:when>
	</c:choose>
	<input type="hidden" name="ROOMRESERVATION_USEPOINTYN"
		id="ROOMRESERVATION_USEPOINTYN">
	<input type="hidden" name="ROOMRESERVATION_USEPOINT"
		id="ROOMRESERVATION_USEPOINT">
	<input type="hidden" name="ROOMRESERVATION_PLUSPOINT"
		id="ROOMRESERVATION_PLUSPOINT">
	<input type="hidden" name="ROOMRESERVATION_FIANLFEE"
		id="ROOMRESERVATION_FIANLFEE">

	<div id="payreservation_wrap">
		<div id="payreservation_head">
			<h1>예약 정보</h1>
		</div>
		<section class="content_section">
			<table class="board_table">
				<tbody>
					<tr class="abed">
						<td class="reservation_td_key">고객명</td>
						<td class="reservation_td_value" id="reservation_username">${userInfo.name}</td>
						<td class="reservation_td_key">숙박일자</td>
						<td class="reservation_td_value" id="stayDay"><fmt:formatDate
								value="${reservationInfo.ROOMRESERVATION_STAYDAY}" type="date"
								pattern="yyyy년 MM월 dd일"></fmt:formatDate></td>
					</tr>
					<tr>
						<td class="reservation_td_key">방이름</td>
						<td class="reservation_td_value">${reservationInfo.ROOMRESERVATION_ROOMNAME}</td>
						<td class="reservation_td_key">방번호</td>
						<td class="reservation_td_value">${reservationInfo.ROOMRESERVATION_ROOMNO}</td>
					</tr>
					<tr>
						<td class="reservation_td_key">사료명</td>
						<td class="reservation_td_value">${reservationInfo.ROOMRESERVATION_FOODNAME}</td>
						<td class="reservation_td_key">장난감명</td>
						<td class="reservation_td_value">${reservationInfo.ROOMRESERVATION_TOYNAME}</td>
					</tr>
						<c:choose>
							<c:when test="${reservationInfo.ROOMRESERVATION_PICKUPYN eq 'Y'}">
							<tr>	
								<td class="reservation_td_key">픽업신청여부</td>
								<td class="reservation_td_value">픽업 서비스 신청</td>
								<td class="reservation_td_key">픽업시간</td>
								<td class="reservation_td_value">${reservationInfo.ROOMRESERVATION_PICKUPTIME}시</td>
							</tr>
							<tr>
								<td class="reservation_td_key">픽업연락처</td>
								<td class="reservation_td_value">${reservationInfo.ROOMRESERVATION_PICKUPPHONENUM}</td>
								<td class="reservation_td_key">픽업주소</td>
								<td class="reservation_td_value">${reservationInfo.ROOMRESERVATION_PICKUPADDRESS}</td>
							</tr>
							<tr>
								<td class="reservation_td_key">애완동물 종류</td>
								<td class="reservation_td_value">${reservationInfo.ROOMRESERVATION_PICKUPANIMAL}</td>
								<td class="reservation_td_key">주인 동승여부</td>
								<c:choose>
									<c:when test="${reservationInfo.ROOMRESERVATION_PICKUPOWNER eq 'Y'}">
										<td class="reservation_td_value">주인동승</td>
									</c:when>
									<c:otherwise>
										<td class="reservation_td_value">동승안함</td>
									</c:otherwise>
								</c:choose>
							</tr>
							<tr>
								<td class="reservation_td_key">메모 사항</td>
								<td class="reservation_td_value" colspan="3">${reservationInfo.ROOMRESERVATION_PICKUPNOTE}</td>
							</tr>
							</c:when>
							<c:otherwise>
							<tr>
								<td class="reservation_td_key">픽업신청여부</td>
								<td class="reservation_td_value">픽업 서비스 신청 안함</td>
								<td class="reservation_td_key">픽업시간</td>
								<td class="reservation_td_value"></td>
							</tr>
							<tr>
								<td class="reservation_td_key">픽업연락처</td>
								<td class="reservation_td_value"></td>
								<td class="reservation_td_key">픽업주소</td>
								<td class="reservation_td_value"></td>
							</tr>
							<tr>
								<td class="reservation_td_key">애완동물 종류</td>
								<td class="reservation_td_value"></td>
								<td class="reservation_td_key">주인 동승여부</td>
								<td class="reservation_td_value"></td>
							</tr>
							<tr>
								<td class="reservation_td_key">메모 사항</td>
								<td class="reservation_td_value" colspan="3">${reservationInfo.ROOMRESERVATION_PICKUPNOTE}</td>
							</tr>
							</c:otherwise>
						</c:choose>
				</tbody>
			</table>
		</section>
		<div id="payreservation_head2">
			<h1>결제 정보</h1>
		</div>
		<section class="content_section">
			<table class="board_table">
				<tbody>
					<tr>
						<td class="reservationpay_td_key">방 이용요금</td>
						<td class="reservationpay_td_value" id="room_price"><fmt:formatNumber
								value="${reservationInfo.ROOM_PRICE}" />원</td>
						<td class="reservationpay_td_key">할인률</td>
						<td class="reservationpay_td_value" id="room_saleRate">${reservationInfo.ROOM_SALERATE}%</td>
					</tr>
					<tr>
						<td class="reservationpay_td_key">보유 포인트</td>
						<td class="reservationpay_td_value" id="my_point"><fmt:formatNumber
								value="${userInfo.point}" />P</td>
						<td class="reservationpay_td_key">사용할 포인트</td>
						<td class="reservationpay_td_value" id="point_tr"><input
							type="text" id="point_text" value="0"><input
							type="button" value="사용하기" id="point_button"></td>
					</tr>
					<tr>
						<td class="reservationpay_td_key">최종 결제금액</td>
						<td class="reservationpay_td_value" id="final_price"></td>
						<td class="reservationpay_td_key">적립 포인트</td>
						<td class="reservationpay_td_value" id="add_point"></td>
					</tr>
				</tbody>
			</table>
		</section>
		<div id="div_paysubmitbtarea">
			<input type="button" value="결재하기" id="paysubmitbt">
		</div>
	</div>
</body>
</html>