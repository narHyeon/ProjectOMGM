<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
            height:330px;
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
            padding-top: 42px;
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
            margin-bottom: 12px;
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
        #myorderUpdate{
            width: 75%;
            font-size: 15px;
            color: pink;
            padding: 6px;
            outline-color: lightpink;
            border:2px solid lightpink ;
            background: white;
            cursor: pointer;
        }

        @media screen and (max-width: 800px) {
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
                height: 44%;
                margin: 0 auto;
                padding-bottom:10px;
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
                padding-top: 43px;
                margin-left: 7%;
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
                margin-bottom: 12px;
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
            #myorderUpdate{
                width: 90%;
                font-size: 15px;
                color: pink;
                padding: 6px;
                outline-color: lightpink;
                border:2px solid lightpink ;
                background: white;
                cursor: pointer;
            }
        }
    </style>
</head>
<body>
<h6 style="  display:flex; padding-left: 15%; padding-top:117px; font-size:28px; font-weight:900;  margin: 0 auto; ">주문내역<span style="font-size: 15px; padding-top: 1%;
            padding-left: 0.5%;">지난 3년간의 주문 내역 조회가 가능합니다.</span></h6>
<hr id="orderList_hr" size="5" color="pink" style="width:70%; margin: 0 auto; margin-top:31px;">

<ul class="orderView">
    <c:if test="${!empty myOrder}">
        <c:forEach var="myOrder" items="${myOrder}">

            <div id="orderView_div">
                <fmt:formatDate
                        value="${myOrder.order_date}" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate>
            </div>

            <li class="myOrder_list">

                <div id="myOrder_div">
                    <span style="display:inline-block; width: 80%; white-space:nowrap; overflow: hidden; text-overflow: ellipsis; margin-left:4%; margin-top:20px;" class="order_name" value="${myOrder.order_name}">[OMGMALL] ${myOrder.order_name}</span><br/>
                    <hr size="1" width="93%" color="#9da0a5" style="margin: 0 auto; margin-top:26px; margin-bottom: 30px; ">
                    <img id="order_img"  src="resources/img/product/${fn:split(myOrder.order_img,',')[0]}"/>
                    <div style="float:left; padding-top:44px;"><span class="order_pro">주문번호</span><span  class="myorderInfo">   ${myOrder.order_no}</span><br/>
                        <span class="order_pro">최종 가격 </span><span class="myorderInfo">  ${myOrder.order_price}</span><br/>
                        <span class="order_pro">주문상태</span><span class="myorderInfo" id="status">   ${myOrder.order_state}</span></div>
                    <div class="myorderBtn">
                        <c:if test="${myOrder.order_state != '배송중'}">
                            <a href="/reviewWrite.do"><button id="myorderReview" type="button"> 후기쓰기</button></a>
                        </c:if>
                        <c:if test="${myOrder.order_state == '배송완료'}">
                        <button id="myorderChat" type="button" onclick="modal1('${member.id}','${myOrder.order_no}','${myOrder.order_state}','${myOrder.order_receiver}','${myOrder.order_zipcode}','${myOrder.order_address}','${myOrder.order_price}','${myOrder.order_phone}')" > 주문상세보기 </button></div>
                    </c:if>
                    <c:if test="${myOrder.order_state != '배송완료'}">
                    <button id="myorderChat" type="button" onclick="modal2('${member.id}','${myOrder.order_no}','${myOrder.order_state}','${myOrder.order_receiver}','${myOrder.order_zipcode}','${myOrder.order_address}','${myOrder.order_price}','${myOrder.order_phone}')" > 주문상세보기 </button></div>
                </c:if>

                </div>
            </li>
        </c:forEach>
    </c:if>
    <div style="text-align: center; font-weight: lighter; margin-top: 5%;">
        <c:if test="${empty myOrder}">
            구매하신 물품이 없습니다.
        </c:if>
    </div>
</ul>
<script >

    function modal1(ido,no,status,receiver, zipcode, address, price,phone) {

        swal({
            title: "주문상세정보",
            text: '\n수령인:' + receiver + '\n우편번호' + zipcode + '\n주소:' + address + '\n전화번호:' + phone + '\n최종가격:' + price,
            buttons: {
                update: {
                    text: '교환/반품',
                    value: true
                },
                confirm: {
                    text: '확인',
                    value: false
                }
            }
        }).then(function (value) {
            if (value) {
                console.log("교환/반품");
                swal({
                    title: "교환/반품처리를 신속히 처리해드리겠습니다.",
                    icon: "warning",
                    buttons: {
                        update1: {
                            text: '교환',
                            value: true
                        },
                        update2: {
                            text: '반품',
                            value: false
                        }
                    },
                    dangerMode: true
                }).then((willDelete) => {
                    if (willDelete) {
                        swal({
                            title: "교환처리를 진행합니다.",
                            icon: "warning",
                            buttons: {
                                update1: {
                                    text: '네',
                                    value: true
                                },
                                update2: {
                                    text: '아니요',
                                    value: false
                                }
                            },
                            dangerMode: true
                        }).then((willDelete) => {
                            if (willDelete) {
                                window.location = "/myOrderExchange.do?order_no=" + no + "&&id=" + ido;
                                swal("교환처리가 되었습니다.", {
                                    icon: "success",
                                });

                            } else {
                                // window.location = "/myOrderUpdate.do?order_no=" + no + "&&id=" + ido;
                                // swal("반품처리가 되었습니다.", {
                                //     icon: "success"
                                // });
                            }
                        });
                    }else{
                        swal({
                            title: "반품처리를 진행합니다.",
                            icon: "warning",
                            buttons: {
                                update1: {
                                    text: '네',
                                    value: true
                                },
                                update2: {
                                    text: '아니요',
                                    value: false
                                }
                            },
                            dangerMode: true
                        }).then((willDelete) => {
                            if (willDelete) {
                                window.location = "/myOrderUpdate.do?order_no=" + no + "&&id=" + ido;
                                swal("반품처리가 되었습니다.", {
                                    icon: "success"
                                });

                            } else {

                            }
                        });
                    }
                });
            }
        });
    }

    function modal2(ido,no,status,receiver, zipcode, address, price,phone) {

        swal({
            title: "주문상세정보",
            text: '\n수령인:' + receiver + '\n우편번호' + zipcode + '\n주소:' + address + '\n전화번호:' + phone + '\n최종가격:' + price,
            buttons: {

                confirm: {
                    text: '확인'
                }
            }
        });
    }

</script>
</body>
</html>