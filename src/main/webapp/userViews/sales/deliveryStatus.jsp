<%--
  Created by IntelliJ IDEA.
  User: YongSun Jang
  Date: 2020-07-30
  Time: 오전 10:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>deliveryStatus</title>
    <link type="text/css" rel="stylesheet" href="resources/admin/css/deliveryStatus.css">
</head>
<body>
    <div id="deliveryStatus">
        <div class="box-numberInfo">
            <img src="resources/admin/img/boxImg.jpg" class="boxImg">
            <p class="box-p-text">
                운송장 번호를 입력하시고 실시간 배송정보를 확인하세요.
            </p>
            <input type="text" class = "box-inputText" name="paramInvcNo" value=""
                   placeholder="‘–’를 포함한 숫자만 입력해주세요" title="택배 조회 - 운송장 번호 ‘–’를 제외한 숫자만 입력해주세요"
                   style="width:353px; color: blue" maxlength="30" >
            <button style="margin-left: 1%; height: 50px; width: 60px; border: none; background-color: lightgrey; font-weight: bolder; " onclick="buttonClick()">입력</button>
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
                <p class="right-box01-p" style="color:#c51162;">상담 운영시간</p>
                <p style="margin-bottom: 1%;"> 월~금요일 09:00~18:00 / 토요일 09:00~13:00</p>
                <p>상품의 파손, 변질에 의한 택배 사고 접수는</p>
                <p style=" font-size: 20px; margin-top:2%; color:#c51162; margin-bottom: 1%;">1:1</p> <p>문의를 통해 직접 하실 수 있습니다.</p>
            </div>
        </div>
    </div>
<script>
    function buttonClick() {
        const wayBillNum = document.querySelector('.box-inputText').value;
        $.ajax({
            type: 'POST',
            url: "selectCartListWayBill.do",
            dataType: 'json',
            contentType: 'application/json',
            data: JSON.stringify({
                order_tn : wayBillNum,
            }),
            success: function(data) {
                document.querySelector('.boxImg').src="resources/img/product/"+data.order_img;
                const order_state = data.order_state;
                const order_simple = "배송중";
                const order_simple01 = "발송처리";
                const order_simple02 = "배송완료"
                alert(data.order_state)
                if(order_state.indexOf(",")){
                    alert('여러개의 문자입니다.');
                }
                if(order_state == order_simple) {
                    document.querySelector('.box-p-text').innerHTML = data.order_state + "입니다. 신속히 처리하겠습니다 ";
                } else if(order_state == order_simple01) {
                    document.querySelector('.box-p-text').innerHTML = data.order_state + "중입니다. 신속히 처리하겠습니다 ";
                } else if(order_state == order_simple02) {
                    document.querySelector('.box-p-text').innerHTML = data.order_state + "했습니다. 이용해 주셔서 감사합니다 ";
                }
            },
            error: function(xhr) {
                alert('운송장 번호가 올바르지 않습니다.')
            }
        });
    }
</script>
</body>
</html>
