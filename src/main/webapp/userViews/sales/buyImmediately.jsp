<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

        padding-right: 9%;
        padding-left: 9%;
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
        margin-bottom: 7%;
        margin-left: 3%;
        background-color: lightgray;
        width: 30%;
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
        #buyImmediatelyDivSection02{
            display: flex;
            flex-direction: column;
            margin-top: 2%;
            margin-bottom: 7%;
            margin-left: 3%;
            background-color: lightgray;
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
                    <p style="margin-top: 5%; font-weight: bold;">상품 이름</p>
                    <p style="margin-top: 2%; font-size: smaller; color: blue">가격</p>
                    <p style="margin-top: 2%; font-size: smaller; font-weight: bold;">수량</p>
                    <p style="margin-top: 2%; font-size: smaller; font-weight: bold;">할인 금액</p>
                    <p style="margin-top: 2%; font-size: smaller; font-weight: bold;">할인 적용 금액</p>
                </div>
                <div id="buyImmediatelyDivSection03Right" >
                    <img src="resources/img/product/사료04.jpg" style="width: 74%; ;">
                </div>
            </div>
            <div id="buyImmediatelyDivSection04">
                <p style="margin-top: 3%; font-weight: bold">마일리지 사용</p>
                <input type="number" style="margin-top: 1.5%; height: 30px;" placeholder=" 0 ">
                <p style="margin-bottom: 1.5%; margin-top: 1.5%; font-size: smaller; color: gray">( 사용가능 마일리지 : 300 )</p>
            </div>
            <div id="buyImmediatelyDivSection05">
                <p style="font-weight: bold;">구매자 정보</p>
                <p style="margin-top: 3%">구매자 이름</p>
                <input type="text" />
                <p>입금하신 이름과 동일해야 합니다</p>
            </div>
            <div id="buyImmediatelyDivSection06">
                <p>연락처("-" 생략)</p>
                <input type="number" />
            </div>
            <div id="buyImmediatelyDivSection07">
                <button id="buyImmediatelyDivSection07Button" onclick="buyImmediatelyZipCheck()" >주소검색</button>
                <input id="buyImmediatelyDivSection07Zipcode" type="text" placeholder="우편번호" required autocomplete=off/>
                <input id="buyImmediatelyDivSection07Address01" type="text" placeholder="주소1" required autocomplete=off/>
                <input id="buyImmediatelyDivSection07Address02" type="text" placeholder="상세주소" />
            </div>
        </div>
        <%--    ///////  오른쪽 페이지  ///////////////////////////////////////////////////////////--%>
        <div id="buyImmediatelyDivSection02">
            <div id="buyImmediatelyDivSection02_01" style="display: flex">
                <div id="buyImmediatelyDivSection02_01_01" style="display: flex;flex-direction: column">
                    <p>상품금액</p>
                    <p>할인금액</p>
                    <p>마일리지 사용</p>
                    <p>최종결제금액</p>
                </div>
                <div id="buyImmediatelyDivSection02_01_02" style="display: flex;flex-direction: column">
                    <p>40,000원</p>
                    <p>-0원</p>
                    <p>-0원</p>
                    <p>40000원</p>
                </div>
            </div>
            <div id="buyImmediatelyDivSection02_02"><p>구매혜택</p></div>
            <div id="buyImmediatelyDivSection02_03" style="display: flex;"><p>마일리지</p><p>400 구매완료후 적립됩니다</p></div>
            <div id="buyImmediatelyDivSection02_04"><p>결제정보입력</p><p>결제 수단을 선택하신후 결제하기 버튼을 클릭하세요</p></div>
            <div id="buyImmediatelyDivSection02_05" ><button>구매하기</button></div>
        </div>
    </div>
</div>
<script>
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
