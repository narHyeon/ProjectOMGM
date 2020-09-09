<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
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
    <script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
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
            width:172px;
            float:left;
            margin-left:4%;
            margin-right: 20px;
            margin-bottom:3%;
        }
        .order_img_border{
            padding-left: 5%;
            margin-top: 5%;
        }
        .myOrder_list{
            border: solid 1.5px #9da0a5;
            width:70vw;
            height:311px;
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
        #myOrder_div{
            font-size:30px;
            font-weight: 900;
            padding-left:1%;
            padding-top:30px;
        }
        #orderView_div{
            padding-top:70px;
            padding-left:15.2%;
            padding-bottom:1%;
            font-weight:900;
            font-size:21px;
            color:#6b6d7d
        }

        @media screen and (max-width: 480px) {
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
                width:134px;
                float:left;
                margin-left:4%;
                margin-right: 20px;
                margin-bottom:3%;
            }
            .order_img_border{
                padding-left: 5%;
                margin-top: 5%;
            }
            .myOrder_list{
                border: solid 1.5px #9da0a5;
                width:70vw;
                height: 78vw;
                margin: 0 auto;
                padding-bottom:53px;
            }
            .order_pro{
                font-size:17px;
                padding-left:10px;
                color: #6c757d;
                font-weight: 700;
            }
            .order_Info{
                padding-bottom: 30px;
            }
            .myorderInfo{
                font-size: 17px;
                font-weight: 800;
            }
            .myorderBtn{
                padding-top: 44px;
                margin-left: 7%;
                margin-top: 43%;
            }
            #myorderReview{
                width: 90%;
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
                width: 90%;
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
            #myOrder_div{
               font-size:20px;
                font-weight: 900;
                padding-left:1%;
                padding-top:30px;
            }
            #orderView_div{
               padding-top:70px;
                padding-left:15.2%;
                padding-bottom:1%;
                font-weight:900;
                font-size:18px;
                color:#6b6d7d
            }
        }

    </style>
</head>
<body>
<h6 style="  display:flex; padding-left: 15%; padding-top:117px; font-size:28px; font-weight:900;  margin: 0 auto; ">주문내역<span style="font-size: 15px; padding-top: 1%;
            padding-left: 0.5%;">지난 3년간의 주문 내역 조회가 가능합니다.</span></h6>
<%--<div><h1 style=" padding-left: 55%;">지난 3년간의 주문 내역 조회가 가능합니다.</h1></div>--%>
<hr id="orderList_hr" size="5" color="pink" style="width:70%; margin: 0 auto; margin-top:31px;">
<%--<div class="orderInfo">--%>
<%--    <c:forEach items="" var="orderView" varStatus="status">--%>
<%--        <c:if test="${status.first}">--%>
<%--            <p><span>주문자</span>주리</p>--%>
<%--            <p><span>수령인</span>주리</p>--%>
<%--            <p><span>주소</span>(동대문구) 답십리</p>동--%>
<%--            <p><span>가격</span><fmt:formatNumber pattern="###,###,###" value="500000000"/> 원</p>--%>
<%--        </c:if>--%>

<%--    </c:forEach>--%>
<%--</div>--%>

<ul class="orderView">
    <c:forEach var="myOrder" items="${myOrder}" >
        <div id="orderView_div">${myOrder.order_date}</div>

        <li class="myOrder_list">

                <div id="myOrder_div">
                    <span style="margin-left:4%; margin-top:20px;" class="order_name" value="${myOrder.order_name}">[OMGMALL] ${myOrder.order_name}</span><br/>
                    <hr size="1" width="93%" color="#9da0a5" style="margin: 0 auto; margin-top:26px; margin-bottom: 30px; ">
                    <img id="order_img"  src="../../resources/img/product/${myOrder.order_img}"/>
                    <div style="float:left; padding-top:44px;"><span class="order_pro">주문번호</span><span  class="myorderInfo">   ${myOrder.order_no}</span><br/>
                        <span class="order_pro">최종 가격 </span><span class="myorderInfo">  ${myOrder.order_price}</span><br/>
                    <span class="order_pro">주문상태</span><span class="myorderInfo">   ${myOrder.order_state}</span></div>
                    <div class="myorderBtn"><a href="/reviewWrite.do"><button id="myorderReview" type="button"> 후기쓰기</button></a>
                    <button id="myorderChat" type="button" onclick="modal('${myOrder.order_receiver},${myOrder.order_id},${myOrder.order_address},${myOrder.order_price}')" value="${myOrder.order_date}" > 주문상세보기 </button></div>
                </div>
        </li>
    </c:forEach>

</ul>
<script language="JavaScript">

    function modal(receiver, id, address, price) {

        swal('주문자:'+ id + '수령인:'+ receiver + address + price );


    }
</script>
</body>
</html>