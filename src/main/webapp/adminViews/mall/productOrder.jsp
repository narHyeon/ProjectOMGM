<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%--
  Created by IntelliJ IDEA.
  User: Jury
  Date: 2020-08-03
  Time: 오후 6:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<%--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />--%>
<%--<link rel="stylesheet" href="productOrder.css">--%>
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

        .productOrderField{
            padding-left: 50px;
            padding-top: 20px;
        }
        .productOrderField th{
            font-weight: bold;
        }
        .productOrder_col{
            padding-left: 20px;
        }
        .productOrder_col th{
            font-weight: bold;
        }
        .table_table_bordered{
            padding-bottom: 20px;
            padding-top: 20px;
        }
        .admin_room_button{
            margin: 0 auto;
            padding-left: 1300px;
            position: absolute;
            top:10px;
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
        input[id*="popup"] ~ div > div {position:absolute;top:50%;left:50%;transform:translate(-50%,-50%);background:#fff;z-index:2; width:600px; height:700px; }
        /*input[id*="popup"] ~ div > div > label {position:absolute;top:0%;right:0%;transform:translate(40%,-40%);padding:20px;background:#dd5347;border-radius:100%;z-index:1;}*/
        input[id*="popup"] ~ div > label {position:absolute;top:0;left:0;width:100%;height:100%;background:rgba(0,0,0,.9);z-index:1;}

        input[id*="popup"] ~ div {opacity:0;visibility:hidden;transition:all 1s;}
        input[id*="popup"]:checked ~ div {opacity:1;visibility:visible;}
        
    /*     페이지 네이션*/
        .kinderGarden_pagination1 {
            display: flex;
            flex-direction: row;
            justify-content: center;
        }
        .kinderGarden_pagination1 ul{
            display: flex;
            flex-direction: row;
        }
    </style>

</head>
<body>
<!-- DataTales Example -->
<div style="width:100%; height:800px; overflow:auto">
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-info">주문현황</h6>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered table-hover" id="order_table" width="100%" cellspacing="0">
                <thead>
                <tr class="productOrder_col">
                    <th>주문번호</th>
                    <th>주문날짜</th>
                    <th>주문자ID</th>
                    <th>전화번호</th>
                    <th>수신인</th>
                    <th>주소</th>
                    <th>주문수량</th>
                    <th>결제금액</th>
                    <th>배송메모</th>
                    <th>주문상태</th>
                    <th>발송처리</th>
                </tr>
                </thead>
                    <tbody id="reser_confirm_tbody111">
                        <c:forEach var="order" items="${order}" >
                            <tr class="order_feild${order.order_no}">
                                <th id="orderNO">${order.order_no}</th>
                                <th>${order.order_date}</th>
                                <th>${order.order_id}</th>
                                <th>${order.order_phone}</th>
                                <th>${order.order_receiver}</th>
                                <th>${order.order_address}</th>
                                <th id="orderDATE">${order.order_quantity}</th>
                                <th>${order.order_price}</th>
                                <th>${order.order_memo}</th>
                                <th id="orderState">${order.order_state}</th>
                                <th><a href="#" onclick="sendData(${order.order_no})" class="btn btn-success btn-user">발송처리</a></th>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
        </div>
    </div>
    <%--  pagination --%>
    <div class="kinderGarden_pagination1">
        <ul class="paginate_button page-item previous disabled"> <a href="#" class="page-link"  onclick="paging(event,tbody1,currentPage1-1,prev1,next1,pageCount1,1)">Prev</a> </ul>
        <ul></ul>
        <ul class="paginate_button page-item next"> <a href="#" class="page-link"  onclick="paging(event,tbody1,currentPage1+1,prev1,next1,pageCount1,1)">Next</a> </ul>
    </div>
</div>
</div>

    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="resources/admin/js/productOrder/proOrder.js"></script>
    <script type="text/javascript">
        // 페이지네이션 관련
        let tbody1; // 페이지네이션 몸체
        let page1; // 페이지 블럭 몸체
        let contentCount1 = 0; // 페이지 총 수
        let pageCount1 = 0; // 그룹 총 수

        let currentPage1 = 1; // 현재 페이지

        const prev1 = document.querySelector('.kinderGarden_pagination1 ul:nth-child(1)');
        const next1 = document.querySelector('.kinderGarden_pagination1 ul:nth-child(3)');

        // 초기화 작업
        window.addEventListener('DOMContentLoaded', () => {
            tbody1 = document.querySelectorAll('#reser_confirm_tbody111 tr');

            tbody1.forEach((item,index) => {
                contentCount1++;
                if(index >= 5) item.style.display = 'none';
            });

            page1 = document.querySelector('.kinderGarden_pagination1 ul:nth-child(2)');
            pageCount1 = Math.ceil(contentCount1/5); // 올림


            pagination(page1,pageCount1,1,currentPage1);
        });

        // 페이징 처리
        function paging(event,tbody,count,prev,next,pageCount,num) {
            event.preventDefault();
            if(num === 1) currentPage1 = count;
            else currentPage2 = count;

            pagePick(event.target.parentNode.parentNode,count);

            tbody.forEach((item,index) => {
                index++;
                if((5*count)-5 < index && index <= 5*count) item.style.display = '';
                else item.style.display = 'none';
                if(count === 1) {
                    prev.classList.toggle('disabled',true);
                    next.classList.toggle('disabled',false);
                } else if(count === pageCount) {
                    next.classList.toggle('disabled',true);
                    prev.classList.toggle('disabled',false);
                } else {
                    prev.classList.toggle('disabled',false);
                    next.classList.toggle('disabled',false);
                }
            });
        }

        // 페이지그룹 생성
        function pagination(page,count,index,current) {
            for(let i=1; i<=count; i++) {
                page.innerHTML += `
                <li class="paginate_button page-item">
                    <a class="page-link" href="#" onclick="paging(event,tbody`+index+`,`+i+`,prev`+index+`,next`+index+`,`+count+`,`+index+`)">`+i+`</a>
                </li>`;
                if(i === current) pagePick(page,1);
            }
        }

        // 페이지 그룹 색상 변경
        function pagePick(target,count) {
            target.querySelectorAll(`li`).forEach((item,index) => {
                if(count === index+1) item.classList.toggle('active',true);
                else item.classList.toggle('active',false);
            });
        }
        <%--        //행 눌렀을때 order_no값 불러오기--%>
        <%--        $(document).ready(function(){--%>
        <%--            $("#order_table tr").click(function(){--%>
        <%--                    $(this).find("#orderNO").each(function(){--%>
        <%--                            swal($(this).html());--%>
        <%--                    });--%>
        <%--            });--%>
        <%--        });--%>


        //3초 후 배송상태(배송완료) 변경&ndash;%&gt;--%>
        function update(no) {
           location.href = "stateSuccess.mdo?order_no="+no;
        }

    </script>

</body>

</html>
