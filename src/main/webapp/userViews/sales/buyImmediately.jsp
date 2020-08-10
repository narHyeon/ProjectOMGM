<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
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
        justify-content: flex-end;
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

    }

</style>
<div id="buyImmediatelyDivSection">
    <div id="buyImmediatelyDivSectionTop">결제하기</div>
    <div id="buyImmediatelyDivSection00">
        <%--    ///////  왼쪽 페이지  ///////////////////////////////////////////////////////////--%>
        <div id="buyImmediatelyDivSection01">
            <div id="buyImmediatelyDivSection03">
                <div id="buyImmediatelyDivSection03Left" style="width: 70%">
                    <p style="margin-top: 5%; font-weight: bold;">상품 이름 : ${feedInfo.feed_name}</p>
                    <p style="margin-top: 2%; font-size: smaller; color: blue">가격 : ${feedInfo.feed_price}</p>
                    <p id="buyImmediatelyDivSection03Left01" style="margin-top: 2%; font-size: smaller; font-weight: bold;"></p>
                    <p style="margin-top: 2%; font-size: smaller; font-weight: bold;">할인 금액 : ${feedInfo.feed_price-feedInfo.feed_discount}</p>
                    <p style="margin-top: 2%; font-size: smaller; font-weight: bold;">할인 적용 금액 : ${feedInfo.feed_discount}</p>
                </div>
                <div id="buyImmediatelyDivSection03Right" >
                    <div style="display: flex; flex-direction: column">

                    </div>
                    <img src="resources/img/product/${feedInfo.feed_img}" style="width: 74%; ;">
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
                <input id="buyImmediatelyDivSection07Address02" style="margin-top: 1.5%; width: 50%; height: 30px;" type="text" placeholder="상세주소" />
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
                    <p style="margin-top: 3%; font-size: 15px; font-weight: bolder">${feedInfo.feed_price}</p>
                    <p style="margin-top: 20%; font-size: 15px; font-weight: bolder">${feedInfo.feed_price-feedInfo.feed_discount}</p>
                    <p style="margin-top: 21%; font-size: 15px; font-weight: bolder" id="buyImmediatelyDivSection02_01_02Use">0</p>
                    <p style="margin-top: 21%; font-size: 15px; font-weight: bolder" id="buyImmediatelyDivSection02_01_02Price">${feedInfo.feed_discount}</p>
                </div>
            </div>
            <div id="buyImmediatelyDivSection02_02" style="margin-top: 9%; margin-bottom: 9%;"><p style="font-weight: bolder; font-size: 25px;">구매혜택</p></div>
            <div id="buyImmediatelyDivSection02_03" style="display: flex; font-weight: lighter; border-bottom: 1px solid lightgrey; font-size: smaller; padding-bottom: 5%;"><p style="margin-right: 3%;">마일리지 : </p><p style="margin-left: 3%;">${feedInfo.feed_point} 구매완료후 적립됩니다</p></div>
            <div id="buyImmediatelyDivSection02_04"  style="margin-top: 9%; border-bottom: 1px solid lightgrey; padding-bottom: 5%; "><p style="font-weight: bolder; margin-bottom: 5%;">결제정보입력</p><p style="font-weight: lighter; font-size: smaller;">결제 수단을 선택하신후 결제하기 버튼을 클릭하세요</p></div>
            <div id="buyImmediatelyDivSection02_05" style="display: flex; justify-content: center; margin-top: 5%; padding-top: 5%; align-items: center;" ><button style="color: white; height: 55px; width: 75px; border-radius: 20%; background-color: deeppink; border: none;">구매하기</button></div>
            <div>
                <script src="https://nsp.pay.naver.com/sdk/js/naverpay.min.js"
                        data-client-id="u86j4ripEt8LRfPGzQ8"
                        data-mode="production"
                        data-merchant-user-key="가맹점 사용자 식별키"
                        data-merchant-pay-key="가맹점 주문 번호"
                        data-product-name="${feedInfo.feed_name}"
                        data-total-pay-amount="1000"
                        data-tax-scope-amount="1000"
                        data-tax-ex-scope-amount="0"
                        data-return-url="사용자 결제 완료 후 결제 결과를 받을 URL">
                </script>
            </div>
        </div>
    </div>
</div>
<script>
    // 마일리지 사용 조건
    function usePoint() {
        const buyImmediatelyDivSection04Mil = document.getElementById("buyImmediatelyDivSection04Mil");
        const totalPrice = ${feedInfo.feed_discount}-buyImmediatelyDivSection04Mil.value;

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

    //수량 가져오기
    function getParameterByName(name) {
        name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
        var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
            results = regex.exec(location.search);
        return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
    }

    var QuantityFeed = getParameterByName("feed_Quantity");
    var QuantityFeedInput = document.getElementById("buyImmediatelyDivSection03Left01");

    QuantityFeedInput.innerHTML="수량 : "+QuantityFeed;

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
