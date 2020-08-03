<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link type="text/css" rel="stylesheet" href="resources/admin/css/productInquiry.css">
    <script src="resources/admin/js/productInquiry.js" defer></script>


    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.4/pagination.css" />
</head>
<body>
<a href="productInquiryToy.mdo">장난감 상품 조회</a>

<div id="productInquiry_searchbox">
    <div class="header">
        <h1>사료 상품 조회</h1>
        <input onkeyup="filter()" type="text" id="value" placeholder="Type to Search">
    </div>

    <div class="container">
        <c:forEach var="feedList" items="${feedList}">
            <div class="item">
                <img style="width: 100%; height: auto;"src="resources/img/product/${feedList.feed_img}">
                    <%--            <span class="icon">A</span>--%>
                <span class="name">${feedList.feed_name}</span>
            </div>
        </c:forEach>
    </div>

</div>

</body>
</html>
