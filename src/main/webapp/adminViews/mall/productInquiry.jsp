<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%--
  Created by IntelliJ IDEA.
  User: YongSun Jang
  Date: 2020-07-31
  Time: 오전 9:16
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
        padding-top: 5.5%;
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

    <a href="productInquiryFeed.mdo">사료 상품 조회 이동</a>

<div id="productInquiry_searchbox">
    <div class="header">
        <h1>장난감 상품 조회</h1>
        <input onkeyup="filter()" type="text" id="value" placeholder="Type to Search">
    </div>
    <div style="display: flex; justify-content: flex-end; padding-right: 10%; margin-bottom: -2%;">
        <a href="productRegister.mdo"><button class="btn btn-primary">상품 등록하기</button></a>
    </div>
    <div style="display: flex; margin-top: 2%; margin-bottom: 2%;">
<%--        <p style="margin">장난감 코드</p>--%>
   </div>
    <div class="container">
        <span class="name01">장난감 이미지</span>
        <span class="name01">장난감 코드</span>
        <span class="name01">장난감 이름</span>
        <span class="name01">장난감 입고날짜</span>
        <span class="name01">장난감 가격</span>
        <span class="name01">장난감 할인가</span>
        <span class="name01">장난감 제고</span>
        <c:forEach var="toyList" items="${toyList}">
        <div class="item" >

            <a href="productDeleteUpdate.mdo?toy_code=${toyList.toy_code}"><img style="width: 151px; height: 151px; margin-top: 2%; margin-bottom: 0.5%"src="resources/img/product/${toyList.toy_img}"></a>

            <span class="name">${toyList.toy_code}</span>
                <span class="name">${toyList.toy_name}</span>
                <span class="name"><fmt:formatDate value="${toyList.toy_instock}" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate></span>
                <span class="name">${toyList.toy_price}원</span>
                <span class="name">${toyList.toy_discount}원</span>
                <span class="name">${toyList.toy_stock}개</span>
            </tr>
        </div>
        </c:forEach>

    </div>

</div>

</body>
</html>
