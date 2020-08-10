<%--
  Created by IntelliJ IDEA.
  User: YongSun Jang
  Date: 2020-07-30
  Time: 오전 10:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>deliveryStatus</title>
<link type="text/css" rel="stylesheet"
	href="resources/admin/css/deliveryStatus.css">
</head>
<body>
	<div id="deliveryStatus">
		<div class="box-numberInfo">
			<img src="resources/admin/img/boxImg.jpg" class="boxImg">
			<p class="box-p-text">운송장 번호를 입력하시고 실시간 배송정보를 확인하세요.</p>
			<input type="text" class="box-inputText" name="paramInvcNo" value=""
				placeholder="‘–’를 제외한 숫자만 입력해주세요"
				title="택배 조회 - 운송장 번호 ‘–’를 제외한 숫자만 입력해주세요"
				style="width: 353px; color: blue" maxlength="12">
		</div>

		<div class="box01">
			<div class="left-box01">
				<img src="resources/admin/img/boxImg.jpg" class="boxImg">
				<div class="left-box02">
					<p class="box-pInfo">택배 고객센터 안내</p>
					<p class="box-pNum">1234-1234</p>
				</div>
			</div>
			<div class="right-box01">
				<p class="right-box01-p" style="color: blue">상담 운영시간</p>
				월~금요일 09:00~18:00 / 토요일 09:00~13:00<br> 상품의 파손, 변질에 의한 택배 사고
				접수는
				<p style="color: blue; margin-top: 2%; margin-bottom: -1%">1:1</p>
				문의를 통해 직접 하실 수 있습니다.
			</div>
		</div>
	</div>
</body>
</html>
