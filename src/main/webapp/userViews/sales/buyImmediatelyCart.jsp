<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<%--
  Created by IntelliJ IDEA.
  User: YongSun Jang
  Date: 2020-08-07
  Time: 오후 2:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>즉시 구입</title>
</head>
<body>
<style>
    #buyImmediatelyDivSection{
        display: flex;
        flex-direction: column;

        padding-right: 14%;
        padding-left: 14%;
    }
    #buyImmediatelyDivSectionTop{
        border-bottom: 1px solid lightgrey;
        padding-top: 4%;
        padding-bottom: 1.5%;
        font-size: 160%;
    }
    #buyImmediatelyDivSection00{
        display: flex;

    }
    #buyImmediatelyDivSection01{
        width: 70%;
    }
    #buyImmediatelyDivSection02{
        display: flex;
        flex-direction: column;
        margin-top: 2%;
        margin-bottom: 15%;
        margin-left: 3%;
        background-color: whitesmoke;
        width: 30%;
        padding-bottom: 2%;
        padding-left: 2%;
        padding-right: 2%;
        padding-top: 2%;
    }
    #buyImmediatelyDivSection03{
        display: flex;
        border-bottom: 1px solid lightgrey;
    }
    #buyImmediatelyDivSection03Left{
        display: flex;
        flex-direction: column;
    }
    #buyImmediatelyDivSection03Right{
        display: flex;
        justify-content: center;
    }
    #buyImmediatelyDivSection04{
        display: flex;
        flex-direction: column;
        border-bottom: 1px solid lightgrey;
    }
    #buyImmediatelyDivSection05{
        display: flex;
        flex-direction: column;
        border-bottom: 1px solid lightgrey;
        margin-top: 3%;
    }
    #buyImmediatelyDivSection06{
        display: flex;
        flex-direction: column;
    }
    #buyImmediatelyDivSection07{
        display: flex;
        flex-direction: column;
    }
    @media(max-width: 768px){
        #buyImmediatelyDivSection00{
            display: flex;
            flex-wrap: wrap;
        }
        #buyImmediatelyDivSection01{
            width: 100%;

        }
        #buyImmediatelyDivSection02{
            display: flex;
            flex-direction: column;
            margin-top: 2%;
            margin-bottom: 15%;
            margin-left: 3%;
            background-color: whitesmoke;
            width: 100%;
            padding-bottom: 2%;
            padding-left: 2%;
            padding-right: 2%;
            padding-top: 2%;
        }
    }


</style>
<div id="buyImmediatelyDivSection">
    <div id="buyImmediatelyDivSectionTop">결제하기</div>
    <div id="buyImmediatelyDivSection00">
        <%--    ///////  왼쪽 페이지  ///////////////////////////////////////////////////////////--%>
        <div id="buyImmediatelyDivSection01">
            <div id="buyImmediatelyDivSection03">
<%--                <div id="buyImmediatelyDivSection03Left" style="width: 70%">--%>
<%--                    <p style="margin-top: 5%; margin-bottom: 2%; font-weight: bold;">고르신 상품들</p>--%>
<%--                    =><c:forEach var="cartList" items="${cartList}">--%>
<%--                        ${cartList.cartList_name}(${cartList.cartList_price}원)&nbsp;&nbsp;--%>
<%--                    </c:forEach>--%>
<%--                    <p id="buyImmediatelyDivSection03Left01" style="margin-top: 2%; font-size: smaller; font-weight: bold;"></p>--%>
<%--                    <p style="margin-top: 2%; font-size: smaller; font-weight: bold;" id="buyImmediatelyDivSection03Left01DiscountPrice"></p>--%>
<%--                    <p style="margin-top: 2%; font-size: smaller; font-weight: bold;" id="buyImmediatelyDivSection03Left01TotalPrice"></p>--%>
<%--                </div>--%>
                <div id="buyImmediatelyDivSection03Right" >
                    <c:forEach var="cartList" items="${cartList}">
                    <div style="display: flex; margin-left: 3%; margin-right: 3%; flex-direction: column">
                        <img src="resources/img/product/${cartList.cartList_img}" style="width: 100%; ">
                        <p style="text-align: center">${cartList.cartList_name}(${cartList.cartList_price}원, ${cartList.cartList_count}개)</p>
                    </div>
                    </c:forEach>
                </div>
            </div>
            <div id="buyImmediatelyDivSection04">
                <p style="margin-top: 3%; font-weight: bold">마일리지 사용</p>
                <input type="number" style="width: 18%; margin-top: 1.5%; height: 30px;" placeholder=" 0 " id="buyImmediatelyDivSection04Mil"><button style="width: 10%;" onclick="usePoint()">사용</button>
                <p style="margin-bottom: 1.5%; margin-top: 1.5%; font-size: smaller; color: gray">( 사용가능 마일리지 : ${member.point} )</p>
            </div>
            <div id="buyImmediatelyDivSection05">
                <div style="display: flex"><p style="font-weight: bold;">구매자 정보</p><input style="margin-left: 3%;" id="buyImmediatelyDivSection05Check" type="checkbox" onclick="" /><p style="font-weight: lighter">(내정보와 동일)</p></div>
                <p style="margin-top: 3%; font-size: smaller; ">구매자 이름</p>
                <input id="buyImmediatelyDivSection05Name" type="text" style="width: 18%; margin-top: 1.5%; height: 30px;" placeholder="이름" value="" />
                <p style="margin-bottom:1.5%; margin-top: 1.5%; font-weight: lighter; font-size: smaller">입금하신 이름과 동일해야 합니다</p>
            </div>
            <div id="buyImmediatelyDivSection06" style="margin-top: 3%">
                <p style="font-size: smaller;">연락처("-" 생략)</p>
                <input id="buyImmediatelyDivSection06Phone" type="text" style="margin-top: 1%; height: 30px; width: 25%;" placeholder="ex) 01073341234"/>
            </div>
            <div id="buyImmediatelyDivSection07" style="margin-top: 2.5%; margin-bottom: 2.5%;">
                <button id="buyImmediatelyDivSection07Button" onclick="buyImmediatelyZipCheck()" style="width: 15%; height: 30px; background-color: lightpink; border: none; border-radius: 0%" >주소검색</button>
                <input id="buyImmediatelyDivSection07Zipcode" style="margin-top: 1.5%; width: 15%; height: 30px;" type="text" placeholder="우편번호" required autocomplete=off/>
                <input id="buyImmediatelyDivSection07Address01" style="margin-top: 1.5%; width: 40%; height: 30px;" type="text" placeholder="주소1" required autocomplete=off/>
<%--                <input id="buyImmediatelyDivSection07Address02" style="margin-top: 1.5%; width: 50%; height: 30px;" type="text" placeholder="상세주소" />--%>
            </div>
        </div>
        <%--    ///////  오른쪽 페이지  ///////////////////////////////////////////////////////////--%>
        <div id="buyImmediatelyDivSection02">
            <div id="buyImmediatelyDivSection02_01" style="display: flex; border-bottom: 1px solid lightgrey; padding-bottom: 5%;">
                <div id="buyImmediatelyDivSection02_01_01" style="width:50%;display: flex;flex-direction: column">
                    <p style="margin-top: 3%; font-size: 15px; font-weight: bolder">상품금액 </p>
                    <p style="margin-top: 11%; font-size: 15px; font-weight: bolder">할인금액 </p>
                    <p style="margin-top: 11%; font-size: 15px; font-weight: bolder">마일리지 사용</p>
                    <p style="margin-top: 11%; font-size: 15px; font-weight: bolder">최종결제금액</p>
                </div>
                <div id="buyImmediatelyDivSection02_01_02" style="width:50%; padding-left:23%; display: flex;flex-direction: column; justify-content: end">
                    <p style="margin-top: 3%; font-size: 15px; font-weight: bolder" id="buyImmediatelyDivSection02_01_02BeforePrice"></p>
                    <p style="margin-top: 20%; font-size: 15px; font-weight: bolder" id="buyImmediatelyDivSection02_01_02DiscountPrice"></p>
                    <p style="margin-top: 21%; font-size: 15px; font-weight: bolder" id="buyImmediatelyDivSection02_01_02Use">0</p>
                    <p style="margin-top: 21%; font-size: 15px; font-weight: bolder" id="buyImmediatelyDivSection02_01_02Price"></p>
                </div>
            </div>
            <div id="buyImmediatelyDivSection02_02" style="margin-top: 9%; margin-bottom: 9%;"><p style="font-weight: bolder; font-size: 25px;">구매혜택</p></div>
            <div id="buyImmediatelyDivSection02_03" style="display: flex; font-weight: lighter; border-bottom: 1px solid lightgrey; font-size: smaller; padding-bottom: 5%;"><p style="margin-right: 3%;">마일리지 : </p><p style="margin-left: 3%;" id="buyImmediatelyDivSection02_03Mileage"> </p></div>
            <div id="buyImmediatelyDivSection02_04"  style="margin-top: 9%; border-bottom: 1px solid lightgrey; padding-bottom: 5%; "><p style="font-weight: bolder; margin-bottom: 5%;">결제정보입력</p><p style="font-weight: lighter; font-size: smaller;">결제 수단을 선택하신후 결제하기 버튼을 클릭하세요</p></div>
            <div id="buyImmediatelyDivSection02_05" style="display: flex; justify-content: center; margin-top: 5%; padding-top: 5%; align-items: center;" ><button onclick="kakaoPayCart()" style="color: white; height: 55px; width: 75px; border-radius: 20%; background-color: deeppink; border: none;">구매하기</button></div>
            <div>
                <script>
                    //상품금액, 할인금액, 최종 금액
                    let cartPriceTotal = 0;
                    let cartPriceDiscount = 0;
                    let cartPricePoint = 0;
                    let cartPriceCount = 0;
                    let cartProductName = "";
                    let cartProductImg = "";
                    <c:forEach var="cartList" items="${cartList}">
                        cartPriceTotal = cartPriceTotal + ${cartList.cartList_count*cartList.cartList_price};
                        cartPriceDiscount = cartPriceDiscount + ${cartList.cartList_discount*cartList.cartList_count};
                        cartPricePoint = cartPricePoint + ${cartList.cartList_point};
                        cartProductName += "${cartList.cartList_name} ";
                        cartPriceCount = cartPriceCount + ${cartList.cartList_count};
                        cartProductImg += "${cartList.cartList_img},";
                    </c:forEach>

                    document.querySelector('#buyImmediatelyDivSection02_01_02BeforePrice').innerHTML=cartPriceTotal;
                    document.querySelector('#buyImmediatelyDivSection02_01_02DiscountPrice').innerHTML=cartPriceTotal-cartPriceDiscount;
                    document.querySelector('#buyImmediatelyDivSection02_01_02Price').innerHTML=cartPriceDiscount;
                    document.querySelector('#buyImmediatelyDivSection02_03Mileage').innerHTML=cartPricePoint + " 포인트가 적립이 됩니다."

                    <%--// 결제--%>
                    function kakaoPayCart() {
                        const buyI05Name = document.getElementById("buyImmediatelyDivSection05Name").value;
                        const buyI06Phone = document.getElementById("buyImmediatelyDivSection06Phone").value;
                        const buyI07Zipcode = document.getElementById("buyImmediatelyDivSection07Zipcode").value;
                        const buyI07Address01 = document.getElementById("buyImmediatelyDivSection07Address01").value;
                        if(buyI05Name==="" || buyI06Phone==="" || buyI07Zipcode==="" || buyI07Address01===""){
                            alert('구매자 정보를 입력해 주시기 바랍니다')

                        }else{
                        $(function () {
                            var IMP = window.IMP; // 생략가능
                            IMP.init('imp00339951'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
                            var msg;
                            var totalPrice = document.getElementById("buyImmediatelyDivSection02_01_02Price").innerHTML;
                            var buyerName = document.getElementById("buyImmediatelyDivSection05Name").value;
                            var buyerPHNum = document.getElementById("buyImmediatelyDivSection06Phone").value;
                            var buyerAddress = document.getElementById("buyImmediatelyDivSection07Address01").value;
                            var buyerZipCode = document.getElementById("buyImmediatelyDivSection07Zipcode").value;
                            var buyerPointLeft = ${member.point} - parseInt(document.getElementById("buyImmediatelyDivSection02_01_02Use").innerHTML) + parseInt(document.querySelector('#buyImmediatelyDivSection02_03Mileage').innerHTML);
                            var buyerPointUsed = document.getElementById("buyImmediatelyDivSection02_01_02Use").innerHTML;

                            IMP.request_pay({

                                pg: 'kakaopay',
                                pay_method: 'card',
                                merchant_uid: 'merchant_' + new Date().getTime(),
                                name: '오묘가묘 결제',
                                amount: totalPrice,
                                buyer_email: '',
                                buyer_name: buyerName,
                                buyer_tel: buyerPHNum,
                                buyer_addr: buyerAddress,
                                buyer_postcode: buyerZipCode,
                                //m_redirect_url : 'http://www.naver.com'
                            }, function (rsp) {
                                if (rsp.success) {
                                    //[1] 서버단에서 결제정보 조회를 위해 jQuery ajax로 imp_uid 전달하기
                                    $.ajax({
                                        type: 'POST',
                                        url: "insertOrderCartList.do", //cross-domain error가 발생하지 않도록 주의해주세요
                                        dataType: 'json',
                                        contentType : 'application/json',
                                        data: JSON.stringify({
                                            order_price: totalPrice,
                                            order_id: "${member.id}",
                                            order_phone: buyerPHNum,
                                            order_address: buyerAddress,
                                            order_receiver: buyerName,
                                            order_zipcode: buyerZipCode,
                                            order_point_used: buyerPointUsed,
                                            order_name: cartProductName,
                                            order_quantity: cartPriceCount,
                                            order_point: buyerPointLeft,
                                            order_img: cartProductImg,
                                            order_tn: rsp.merchant_uid,
                                            <%--id: "${member.id}",--%>
                                            <%--point: buyerPointUsed,--%>

                                            // order_no: rsp.merchant_uid
                                        }),
                                        success : function(data) {
                                            //[2] 서버에서 REST API로 결제정보확인 및 서비스루틴이 정상적인 경우
                                            //     msg = '결제가 완료되었습니다.';
                                            //     // msg += '\n고유ID : ' + rsp.imp_uid;
                                            //     // msg += '\n상점 거래ID : ' + rsp.merchant_uid;
                                            //     msg += '\n결제 금액 : ' + rsp.paid_amount;
                                            //     alert(msg);
                                        },
                                        error: function(xhr) {
                                            alert(xhr);
                                            }
                                    });
                                    msg = '결제가 완료되었습니다.';
                                    // msg += '\n고유ID : ' + rsp.imp_uid;
                                    // msg += '\n상점 거래ID : ' + rsp.merchant_uid;
                                    msg += '\n결제 금액 : ' + rsp.paid_amount;
                                    msg += '\n운송장 번호 : ' + rsp.merchant_uid;
                                    alert(msg);

                                    //성공시 이동할 페이지
                                    location.href = 'getMallFeedList.do';
                                } else {
                                    msg = '결제에 실패하였습니다.';
                                    // msg += '에러내용 : ' + rsp.error_msg;
                                    //실패시 이동할 페이지
                                    location.href = "getMallFeedList.do";
                                    alert(msg);
                                }
                            });

                        });
                        }
                    }
                </script>
            </div>
        </div>
    </div>
</div>
<script>
    // 마일리지 사용 조건
    function usePoint() {

        const buyImmediatelyDivSection04Mil = document.getElementById("buyImmediatelyDivSection04Mil");
        const totalPrice = parseInt(document.getElementById("buyImmediatelyDivSection02_01_02BeforePrice").innerHTML)-parseInt(document.getElementById("buyImmediatelyDivSection02_01_02DiscountPrice").innerHTML)-buyImmediatelyDivSection04Mil.value;

        if(buyImmediatelyDivSection04Mil.value > ${member.point}){
            alert("마일리지를 초과하였습니다"); buyImmediatelyDivSection04Mil.value = 0;
        }else{
            document.getElementById("buyImmediatelyDivSection02_01_02Use").innerHTML=buyImmediatelyDivSection04Mil.value;
            document.getElementById("buyImmediatelyDivSection02_01_02Price").innerHTML=totalPrice.toString();
        }
    }

    // checkBox 설정
    $(document).ready(function(){
        const buyImmediatelyDivSection05Name = document.getElementById("buyImmediatelyDivSection05Name");
        const buyImmediatelyDivSection06Phone = document.getElementById("buyImmediatelyDivSection06Phone");
        const buyImmediatelyDivSection07Zipcode = document.getElementById("buyImmediatelyDivSection07Zipcode");
        const buyImmediatelyDivSection07Address01 = document.getElementById("buyImmediatelyDivSection07Address01");
        $("#buyImmediatelyDivSection05Check").change(function(){
            if($("#buyImmediatelyDivSection05Check").is(":checked")){
                buyImmediatelyDivSection05Name.value="${member.name}";
                buyImmediatelyDivSection06Phone.value="${member.phone}";
                buyImmediatelyDivSection07Zipcode.value="${member.zipcode}";
                buyImmediatelyDivSection07Address01.value="${member.address}";
            } else{
                buyImmediatelyDivSection05Name.value="";
                buyImmediatelyDivSection06Phone.value="";
                buyImmediatelyDivSection07Zipcode.value="";
                buyImmediatelyDivSection07Address01.value="";
            }
        })
    })
    // 우편번호 체크
    function buyImmediatelyZipCheck() {
        const width = 380;
        const height = 480;
        return new daum.Postcode({
            width: width,
            height: height,
            oncomplete: function(data) {
                const zipcode = document.querySelector('#buyImmediatelyDivSection07Zipcode');
                const address = document.querySelector('#buyImmediatelyDivSection07Address01');
                zipcode.classList.add('focus');
                address.classList.add('focus');
                zipcode.value = data.zonecode;
                address.value = data.address;
            },
            theme: {
                bgColor: '#F28888'
            }
        }).open({
            popupName: '우편번호 검색',
            left: (window.screen.width / 2) - (width / 2),
            top: (window.screen.height / 2) - (height / 2)
        });
    }
</script>
</body>
</html>
