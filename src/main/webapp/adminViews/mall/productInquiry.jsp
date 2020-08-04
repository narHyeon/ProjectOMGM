<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link type="text/css" rel="stylesheet" href="resources/admin/css/productInquiry.css">
    <script src="resources/admin/js/productInquiry.js" defer></script>


    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.4/pagination.css" />
</head>
<body>


    <a href="productInquiryFeed.mdo">사료 상품 조회</a>

<div id="productInquiry_searchbox">
    <div class="header">
        <h1>장난감 상품 조회</h1>
        <input onkeyup="filter()" type="text" id="value" placeholder="Type to Search">
    </div>

    <div class="container">
        <c:forEach var="toyList" items="${toyList}">
        <div class="item">
            <a href="productDeleteUpdate.mdo?toy_code=${toyList.toy_code}"><img style="width: 100%; height: auto;"src="resources/img/product/${toyList.toy_img}"></a>

            <span class="name">${toyList.toy_name}</span>
        </div>
        </c:forEach>
    </div>

</div>

</body>
</html>
