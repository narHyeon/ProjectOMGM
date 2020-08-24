<%--
  Created by IntelliJ IDEA.
  User: Jury
  Date: 2020-08-20
  Time: 오후 7:52
  To +change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        #orderList_hr{
           display: flex;
           margin-top: 50px;
        }
        .orderInfo{
            display: flex;
            justify-content:space-around ;
            align-items: center;
        }
        #order_img{
            width:200px;
        }
        .order_img_border{
            padding-left: 5%;
            margin-top: 5%;
        }
        .myOrder_list{
            border: solid 1.5px #9da0a5;
            width:70vw;
            height:25%;
            margin: 0 auto;
            padding-bottom:53px;
        }
        .order_pro{
            font-size:20px;
            padding-left:10px;
            color: #6c757d;
            font-weight: 700;
        }
        .order_Info{
            padding-bottom: 30px;
        }
        .myorderInfo{
            font-size: 20px;
            font-weight: 800;
        }
        .myorderBtn{
            padding-top: 44px;
            margin-left: 81%;
            /*margin-top: -139px;*/
            /*margin-bottom:78px;*/
        }
        #myorderReview{
            display: block;
            width: 75%;
            font-size: 15px;
            padding: 6px;
            border:2px solid lightpink ;
            outline-color: lightpink;
            margin-bottom: 12px;
            background: lightpink;
            color:white;
            cursor: pointer;
        }
        #myorderChat{
            width: 75%;
            font-size: 15px;
            color: pink;
            padding: 6px;
            outline-color: lightpink;
            border:2px solid lightpink ;
            background: white;
            cursor: pointer;
        }
        .orderView{
            padding-bottom: 4%;

        }
    </style>
</head>
<h6 style="  display:flex; padding-left: 15%; padding-top:117px; font-size:28px; font-weight:900;  margin: 0 auto; ">주문내역<span style="font-size: 15px; padding-top: 1%;
            padding-left: 0.5%;">지난 3년간의 주문 내역 조회가 가능합니다.</span></h6>
<%--<div><h1 style=" padding-left: 55%;">지난 3년간의 주문 내역 조회가 가능합니다.</h1></div>--%>
<hr id="orderList_hr" size="5" color="pink" style="width:70%; margin: 0 auto; margin-top:31px;">
<div class="orderInfo">
<%--    <c:forEach items="" var="orderView" varStatus="status">--%>

<%--        <c:if test="${status.first}">--%>
<%--            <p><span>주문자</span>주리</p>--%>
<%--            <p><span>수령인</span>주리</p>--%>
<%--            <p><span>주소</span>(동대문구) 답십리</p>동--%>
<%--            <p><span>가격</span><fmt:formatNumber pattern="###,###,###" value="500000000"/> 원</p>--%>
<%--        </c:if>--%>

<%--    </c:forEach>--%>
</div>

<ul class="orderView">
<%--    <c:forEach items="${orderView}" var="orderView">--%>
        <div style="padding-top:37px; padding-left:15.2%; padding-bottom:1%; font-weight:900; font-size:22px; color:#6b6d7d">2020.08.22(15시 30분)</div>
        <li class="myOrder_list">
<%--            <hr size="5" width="95%" color="pink" style="margin: 0 auto; margin-top:70px;">--%>
<%--            <div class="order_img_border">--%>
<%--            <img id="order_img" src="../../resources/img/roomIntroduction/03.jpg" />--%>
<%--            </div>--%>

                <div style="font-size:30px; font-weight: 900; padding-left:1%; padding-top:30px;">
                    <span style="margin-left:4%; margin-top:20px;">[사료]</span> 사료1<br/>
                    <hr size="1" width="93%" color="#9da0a5" style="margin: 0 auto; margin-top:26px; margin-bottom: 30px; ">
                    <img id="order_img" style=" float:left; margin-left:4%; margin-right: 20px;"  src="../../resources/img/roomIntroduction/03.jpg"/>
                    <div style="float:left; padding-top:44px;"><span class="order_pro">주문번호</span><span class="myorderInfo">   11111121515565</span><br/>
                    <span class="order_pro">최종 가격 <fmt:formatNumber pattern="###,###,###" value="50000"/></span><span class="myorderInfo">  50000원</span><br/>
                    <span class="order_pro">주문상태</span><span class="myorderInfo">   배송완료</span></div>
                    <div class="myorderBtn"><button id="myorderReview" type="button"> 후기쓰기</button>
                    <button id="myorderChat" type="button"> 1:1 문의 </button></div>
                </div>
        </li>

<%--    </c:forEach>--%>
</ul>
</body>
</html>