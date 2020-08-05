<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%--
  Created by IntelliJ IDEA.
  User: YongSun Jang
  Date: 2020-08-03
  Time: 오후 11:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>사료 상품조회</title>
<%--    <link type="text/css" rel="stylesheet" href="resources/admin/css/productInquiry.css">--%>
    <script src="resources/admin/js/productInquiry.js" defer></script>


<%--    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.4/pagination.css" />--%>
</head>
<body>
<style>
    #productInquiry_searchbox {
        display: flex;
        flex-direction: column;
    }
    .item {
        display: flex;
        height: 15%;
    }
    .name {
        display: table-cell;
        vertical-align: center;
        justify-content: center;
        padding-top: 4.5%;
        text-align: center;
        width: 150px;
        /*border: 1px solid black;*/
    }
    .name01 {
        display: table-cell;
        vertical-align: center;
        justify-content: center;
        text-align: center;
        width: 150px;
        border-bottom: 1px solid black;
    }
</style>
<a href="productInquiryToy.mdo">장난감 상품 조회</a>

<div id="productInquiry_searchbox">
    <div class="header">
        <h1>사료 상품 조회</h1>
        <input onkeyup="filter()" type="text" id="value" placeholder="Type to Search">
    </div>

    <div class="container">
        <span class="name01">장난감 이미지</span>
        <span class="name01">장난감 코드</span>
        <span class="name01">장난감 이름</span>
        <span class="name01">장난감 입고날짜</span>
        <span class="name01">장난감 남은 기간</span>
        <span class="name01">장난감 가격</span>
        <span class="name01">장난감 할인가</span>
        <span class="name01">장난감 제고</span>
        <c:forEach var="feedList" items="${feedList}">
            <div class="item">
                <a href="productDeleteUpdateFeed.mdo?feed_code=${feedList.feed_code}"><img style="width: 135px; height: 135px; margin-top: 2%; margin-bottom: 0.5%"src="resources/img/product/${feedList.feed_img}"></a>
                <span class="name">${feedList.feed_code}</span>
                <span class="name">${feedList.feed_name}</span>
                <span class="name"><fmt:formatDate value="${feedList.feed_instock}" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate></span>
                <span class="name">d - ${feedList.feed_expiration}</span>
                <span class="name">${feedList.feed_price}원</span>
                <span class="name">${feedList.feed_discount}원</span>
                <span class="name">${feedList.feed_stock}개</span>
            </div>
        </c:forEach>
    </div>

</div>

</body>
</html>
