<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Jury
  Date: 2020-08-03
  Time: 오후 6:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<head>
    <style>
        #order_table input {
            width: 100%;
            border: none;
        }
        .del_btn {
            display: flex;
            flex-direction: row;
        }
        .del_btn_schedule_button a {
            margin: 5px;
            width:50%;
        }


        <!-- 모달창-->

             #m-wrap {
                 display: flex;
                 height: 700px;
                 width: 60%;
                 margin-left: 23%;
                 flex-direction: column;


             }

        #m-head {
            min-width: 60%;
            margin-right: 15%;
            margin-top: 2%;
            margin-left: 15%;
            margin-bottom: 2%;
            font-size: 20px;
            padding-bottom: 1%;
            border-bottom: 2px solid #FFABB9;
            text-align: center;
            margin-bottom:50px;
        }
        #m-bar {
            display: flex;
            height: 60px;
            width: 100%;
            margin-bottom: 1%;
        }

        #m-bar1 {
            display: flex;
            height: 60px;
            width: 100%;
            margin-bottom: 1%;
        }

        #m-bar2 {
            display: flex;
            height: 60px;
            width: 100%;
            margin-bottom: 1%;
        }

        #m-bar3 {
            display: flex;
            height: 60px;
            width: 100%;
            margin-bottom: 1%;
        }

        #m-bar4 {
            display: flex;
            height: 200px;
            width: 100%;
            margin-bottom: 1%;
        }

        #m-bar-content{background-color:white; margin-left:5%;  margin-top:-0.5%; width:70%; height:50%; border: 1px solid #FFABB9;}
        #m-bar-content1{background-color:white; margin-left:5%;  width:70%; height:50%; }
        #m-bar-content2{background-color:white; margin-left:5%;  width:70%; height:50%; }
        #m-bar-content3{background-color:white; margin-left:5%;  width:70%; height:50%; }
        #m-bar-content4{background-color:white; margin-left:5%;  width:70%; height:50%; }
        #m-bar-content5{background-color:white; margin-left:5%;  width:70%; height:50%; }
        #m-bar-content6{background-color:white; margin-left:5%;  width:70%; height:50%; }

        #m-selectstyle{border: 1px solid #FFABB9; padding:0.5%;  border-radius:3%;}
        #m-inputstyle{border: 1px solid #FFABB9; border-radius:3%; padding:0.5%;}
        #m-inputstylephone{border: 1px solid #FFABB9; border-radius:3%; padding:0.5%; margin-right:1%; margin-left:1%; width:15%;}
        #m-inputstylemail{border: 1px solid #FFABB9; border-radius:3%; padding:0.5%; margin-right:1%; margin-left:1%; width:30%;}
        #m-textareastyle{border: 1px solid #FFABB9; padding:0.5%; margin-right:1%; margin-left:1%; width:100%; height:100%;}
        #modalstyle{border: 2px solid #e2e2e2; color:black; font-size:13px;margin-right:2%; width:100px;}


        /* detail */
        input[id*="popup"] {display:none;}
        input[id*="popup"] ~ div {position:fixed;top:0;left:0;width:100%;height:100%;z-index:100;}
        input[id*="popup"] ~ div > div {position:absolute;top:50%;left:50%;transform:translate(-50%,-50%);background:#fff;z-index:2;}
        /*input[id*="popup"] ~ div > div > label {position:absolute;top:0%;right:0%;transform:translate(40%,-40%);padding:20px;background:#dd5347;border-radius:100%;z-index:1;}*/
        input[id*="popup"] ~ div > label {position:absolute;top:0;left:0;width:100%;height:100%;background:rgba(0,0,0,.9);z-index:1;}

        input[id*="popup"] ~ div {opacity:0;visibility:hidden;transition:all 1s;}
        input[id*="popup"]:checked ~ div {opacity:1;visibility:visible;}

    </style>
</head>
<body>
<!-- DataTales Example -->
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-info">주문현황</h6>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="order_table" width="100%" cellspacing="0">
                <thead>
                <tr>
                    <th>주문번호</th>
                    <th>주문자ID</th>
                    <th>주문날짜</th>
                    <th>전화번호</th>
                    <th>주문상태</th>
                    <th>결제금액</th>
                    <th>상세보기</th>
                    <th>삭제</th>
                </tr>
                </thead>
                <tbody>
                <form action="/productOrderDelete.mdo">
                    <c:forEach var="order" items="${order}">
                        <input type="hidden" name="order_no" value="${order.order_no}">
                        <tr>
                            <th>${order.order_no}</th>
                            <th>${order.order_id}</th>
                            <th>${order.order_date}</th>
                            <th>${order.order_phone}</th>
                            <th>${order.order_state}</th>
                            <th>${order.order_price}</th>
                            <th><button onclick="detail(event)" type="button" class="btn btn-info btn-update">상세보기</button></th>
                            <th><button type="submit" class="btn btn-info btn-delete">삭제</button></th>
                        </tr>
                    </c:forEach>
                </form>
                </tbody>
            </table>
        </div>
    </div>
</div>

<div>
<%-- login --%>
<input type="checkbox" id="detail_popup">
<div>
    <div>
        <label for="detail_popup"></label>
        <form action="login.lo" class="detail-form">
            <h1 style="font-weight:700;">주문상세</h1>

            <div class="txtbox">
                <label>주문번호 : </label><br>
                <input type="text" id="proPrice" class="title" /><br><br>
            </div>

            <div class="txtbox">
                <label>주문날짜 : </label><br>
                <input type="text" id="proPrice" class="title" /><br><br>
            </div>

            <div class="txtbox">
                <label>주문자ID : </label><br>
                <input type="text" id="proPrice" class="title" /><br><br>
            </div>

            <table class="table table-bordered" id="order_table" width="100%" cellspacing="0">
                <thead>
                <tr>
                    <th>주문번호</th>
                    <th>주문자ID</th>
                    <th>주문날짜</th>
                    <th>전화번호</th>
                    <th>주문상태</th>
                    <th>결제금액</th>
                    <th>상세보기</th>
                    <th>삭제</th>
                </tr>
                </thead>
                <tbody>
                <form action="/productOrderDelete.mdo">
                    <c:forEach var="order" items="${order}">
                        <input type="hidden" name="order_no" value="${order.order_no}">
                        <tr>
                            <th>${order.order_no}</th>
                            <th>${order.order_id}</th>
                            <th>${order.order_date}</th>
                            <th>${order.order_phone}</th>
                            <th>${order.order_state}</th>
                            <th>${order.order_price}</th>
                            <th><button onclick="detail(event)" type="button" class="btn btn-info btn-update">상세보기</button></th>
                            <th><button type="submit" class="btn btn-info btn-delete">삭제</button></th>
                        </tr>
                    </c:forEach>
                </form>
                </tbody>
            </table>



            <div class="txtbox">
                <label>전화번호 : </label><br>
                <input type="text" id="proPrice" class="title" /><br><br>
            </div>

            <div class="txtbox">
                <label>받는사람 : </label><br>
                <input type="text" id="proPrice" class="title" /><br><br>
            </div>

            <div class="txtbox">
                <label>우편번호 : </label><br>
                <input type="text" id="proPrice" class="title" /><br><br>
            </div>

            <div class="txtbox">
                <label>배달지주소 : </label><br>
                <input type="text" id="proPrice" class="title" /><br><br>
            </div>


        </form>
    </div>
    <label for="detail_popup"></label>
</div>
</div>

<script>
    // 로그인 버튼
    function detail(event) {
        event.preventDefault();
        document.querySelector('#detail_popup').checked = true;
    }
</script>

</body>
</html>