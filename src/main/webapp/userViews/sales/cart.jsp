<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Jury
  Date: 2020-08-06
  Time: 오전 11:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>장난감 상품조회</title>
    <%--    <link type="text/css" rel="stylesheet" href="resources/admin/css/productInquiry.css">--%>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8/jquery.min.js"></script>




    <%--    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.4/pagination.css" />--%>
</head>
<body>
<style>
    #cart_list{
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    .cart_item {
        display: flex;
        height: 15%;
    }
    .cart_info {
        display: table-cell;
        vertical-align: center;
        justify-content: center;
        padding-top: 5.5%;
        text-align: center;
        width: 12vw;
        /*border: 1px solid black;*/
    }
    .cart_col {
        display: table-cell;
        vertical-align: center;
        justify-content: center;
        text-align: center;
        width: 12vw;
        border-bottom: 3px solid lightpink;
    }
    .abutton{
        padding: 1.5vw;
        padding-top: 5px;
        padding-bottom: 5px;
        border-radius: 4%;
        background: powderblue;
        color: white;
    }

    /*.right-align_basketrowcmd {*/
    /*    padding-left: 42vw;*/
    /*    padding-top: 1%;*/
    /*}*/
</style>

<div class="header">
    <h1 style="padding-left: 50%; padding-top: 50px; font-weight: bold;">장바구니</h1>
    <!-- "장바구니 기능 버튼" -->

</div>
<div id="cart_list">
    <div style="display: flex; margin-top: 2%; margin-bottom: 2%;">

    </div>
    <div class="cart_container">
        <span class="cart_col">이미지</span>
        <span class="cart_col">상품명</span>
        <span class="cart_col">가격</span>
        <span class="cart_col">수량</span>
        <span class="cart_col">합계</span>
        <span class="cart_col">삭제</span>
        <c:forEach var="cartList" items="${cartList}">
            <div class="cart_item" >
<%--                <span class="name"><fmt:formatDate value="${FeedList.feed_inStock}" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate></span>--%>
                <img style=" width: 10VW; height: 10vw; min-width: 7vw; min-height: 7vw; max-width: 12vw; max-height: 12vw; margin-top: 2%; margin-bottom: 0.5%; padding-left:1vw;" src="resources/img/product/${cartList.cartList_img}">
                <span style="padding-left:4vw;" class="cart_info">${cartList.cartList_name}</span>
    <span style="padding-left:4vw;" id="basketprice" class="cart_info"><input type="hidden" name="p_price" id="p_price1" class="p_price" value="20000"><div class="bigtext right-align sumcount" id="sum_p_num${cartList.cartList_code}" value="${cartList.cartList_price}">${cartList.cartList_price}</div></span>
                <span style="padding-left:4vw;" id="num" class="cart_info">
                    <div class="updown">
                    <input type="text" name="p_num1" id="p_num1${cartList.cartList_code}" size="2" maxlength="4" class="p_num" value="1" >
                    <span><button class="fas fa-arrow-alt-circle-up up" onclick="upI(event)" value="${cartList.cartList_code}"></button></span>
                    <span><button class="fas fa-arrow-alt-circle-down down" onclick="downI(event)" value="${cartList.cartList_code}"  ></button></span>
                </div>
                </span>
    <input type="number" style="border: none;padding-bottom:7vw;padding-left:5vw;" class="cart_info" id="sum_p_price${cartList.cartList_code}" value="${cartList.cartList_price}" />
                <span style="padding-left:4vw;" class="cart_info" id="basketcmd">
                    <a href="deleteCartListOne.do?cartList_code=${cartList.cartList_code}&cartList_id=${member.id}" class="abutton">삭제</a></span>
                <div class="right-align basketrowcmd">
                    <a href="#" type="hidden" class="button"></a>
                    <a href="#" type="hidden" class="button"></a>
                </div>
            </div>
        </c:forEach>
        <div style="display: flex; justify-content: flex-end; padding-right: 5%; padding-bottom: 3%;">


            <c:if test="${!empty cartList}">
                <button type="submit" class="abutton" style="border: none;" onclick="cartListPay()">결제하기</button>
            </c:if>

        </div>

        </div>

</div>

<%--<script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/3.2.0/lodash.js"></script>--%>
<script>
    function upI(event){
        const num = event.target.value;
        const price = document.querySelector('#sum_p_num'+num).innerHTML;

        document.querySelector('#p_num1'+num).value++;

        document.querySelector('#sum_p_price'+num).value = parseInt(document.querySelector('#sum_p_price'+num).value)+parseInt(price);
    }

    function downI(event){
        const num = event.target.value;
        const price = document.querySelector('#sum_p_num'+num).innerHTML;
        if(document.querySelector('#p_num1'+num).value>1) {
            document.querySelector('#p_num1' + num).value -= 1;
            document.querySelector('#sum_p_price' + num).value = parseInt(document.querySelector('#sum_p_price' + num).value) - parseInt(price);
        }
    }
    function cartListPay() {
        <c:forEach var="cartList" items="${cartList}">
        $.ajax({

            type: 'POST',
            url: "updateCartListCount.do", //cross-domain error가 발생하지 않도록 주의해주세요
            dataType: 'json',
            contentType : 'application/json',
            data: JSON.stringify({
                cartList_id: "${member.id}",
                cartList_code: "${cartList.cartList_code}",
                cartList_count: document.querySelector('#p_num1${cartList.cartList_code}').value,

            }),
            success : function(data) {

            },
            error: function(xhr) {

            },
        });</c:forEach>

        location.href="paymentCartList.do?cartList_id=${member.id}";
    }



    document.querySelectorAll('a[href="#"]').forEach(function(item){
        item.setAttribute('href','javascript:void(0)');
    });

    let basket = {
        totalCount: 0, //전체 갯수 변수
        totalPrice: 0, //전체 합계액 변수
        //체크한 장바구니 상품 비우기
        delCheckedItem: function(){
            document.querySelectorAll("input[name=buy]:checked").forEach(function (item) {
                item.parentElement.parentElement.parentElement.remove();
            });
            //AJAX 서버 업데이트 전송

            //전송 처리 결과가 성공이면
            this.reCalc();
            this.updateUI();
        },
        //장바구니 전체 비우기
        delAllItem: function(){
            document.querySelectorAll('.row.data').forEach(function (item) {
                item.remove();
            });
            //AJAX 서버 업데이트 전송

            //전송 처리 결과가 성공이면
            this.totalCount = 0;
            this.totalPrice = 0;
            this.reCalc();
            this.updateUI();
        },
        //재계산
        reCalc: function(){
            this.totalCount = 0;
            this.totalPrice = 0;
            document.querySelectorAll(".p_num").forEach(function (item) {
                var count = parseInt(item.getAttribute('value'));9999
                this.totalCount += count;
                var price = item.parentElement.parentElement.previousElementSibling.firstElementChild.getAttribute('value');
                this.totalPrice += count * price;
            }, this); // forEach 2번째 파라메터로 객체를 넘겨서 this 가 객체리터럴을 가리키도록 함. - thisArg
        },
        //화면 업데이트
        updateUI: function () {
            document.querySelector('#sum_p_num').textContent = '상품갯수: ' + this.totalCount.formatNumber() + '개';
            document.querySelector('#sum_p_price').textContent = '합계금액: ' + this.totalPrice.formatNumber() + '원';
        },
        //개별 수량 변경
        changePNum: function (pos) {
            var item = document.querySelector('input[name=p_num'+pos+']');
            var p_num = parseInt(item.getAttribute('value'));
            var newval = event.target.classList.contains('up') ? p_num+1 : event.target.classList.contains('down') ?
                p_num-1 : event.target.value;

            if (parseInt(newval) < 1 || parseInt(newval) > 99) { return false; }

            item.setAttribute('value', newval);
            item.value = newval;

            var price = item.parentElement.parentElement.previousElementSibling.firstElementChild.getAttribute('value');
            item.parentElement.parentElement.nextElementSibling.textContent = (newval * price).formatNumber()+"원";
            //AJAX 업데이트 전송

            //전송 처리 결과가 성공이면
            this.reCalc();
            this.updateUI();
        },
        //상품 삭제
        delItem: function () {
            event.target.parentElement.parentElement.parentElement.remove();
        }
    }
</script>
</body>
</html>
