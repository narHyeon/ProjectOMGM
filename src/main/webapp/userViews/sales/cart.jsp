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
    <script src="resources/admin/js/productInquiry.js" defer></script>



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
        padding: 3px;
        border-radius: 4%;
        background: powderblue;
        color: white;
        position: absolute;


    }
    .right-align_basketrowcmd {
        padding-left: 42vw;
        padding-top: 2%;
    }
</style>

<div class="header">
    <h1 style="padding-left: 50%; padding-top: 50px;">장바구니</h1>
</div>
<div id="cart_list">
    <div style="display: flex; margin-top: 2%; margin-bottom: 2%;">
        <%--        <p style="margin">장난감 코드</p>--%>
    </div>
    <div class="cart_container">
        <span class="cart_col">이미지</span>
        <span class="cart_col">상품명</span>
        <span class="cart_col">가격</span>
        <span class="cart_col">수량</span>
        <span class="cart_col">합계</span>
        <span class="cart_col">삭제</span>
        <c:forEach var="FeedList" items="${FeedList}">
            <div class="cart_item" >
<%--                <span class="name"><fmt:formatDate value="${FeedList.feed_inStock}" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate></span>--%>
                <a href="productDeleteUpdate.mdo?feed_code=${FeedList.feed_code}"><img style="width: 151px; height: 151px; margin-top: 2%; margin-bottom: 0.5% padding-left:2%;"src="resources/img/product/${FeedList.feed_img}"></a>
                <span class="cart_info">${FeedList.feed_name}</span>
                <span class="cart_info">${FeedList.feed_price}</span>
                <span class="cart_info">${FeedList.feed_stock}</span>
                <span class="cart_info">${FeedList.feed_price}${FeedList.feed_stock}</span>
                <span class="cart_info" id="basketcmd"><a href="#" class="abutton">삭제</a></span>
                </tr>
            </div>
        </c:forEach>
    </div>
    <!-- "장바구니 기능 버튼" -->
    <div class="right-align_basketrowcmd">
        <a href="#" class="abutton">선택상품삭제</a>
<%--        <a href="#" class="abutton">장바구니비우기</a>--%>
    </div>

</div>

</body>
</html>
