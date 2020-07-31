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
    <title>상품조회</title>
    <link type="text/css" rel="stylesheet" href="resources/admin/css/productInquiry.css">
    <script src="resources/admin/js/productInquiry.js" defer></script>


    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.4/pagination.css" />
</head>
<body>
<div id="productInquiry_searchbox">
    <div class="header">
        <h1>상품 조회</h1>
        <input onkeyup="filter()" type="text" id="value" placeholder="Type to Search">
    </div>

    <div class="container">
        <div class="item">
            <img src="resources/admin/img/appleImg.jpg">
<%--            <span class="icon">A</span>--%>
            <span class="name">Apple</span>
        </div>

        <div class="item">
            <img src="resources/admin/img/appleImg.jpg">
<%--            <span class="icon">O</span>--%>
            <span class="name">Orange</span>
        </div>

        <div class="item">
            <img src="resources/admin/img/appleImg.jpg">
<%--            <span class="icon">M</span>--%>
            <span class="name">Mandarin</span>
        </div>

        <div class="item">
            <img src="resources/admin/img/appleImg.jpg">
<%--            <span class="icon">S</span>--%>
            <span class="name">Strawberry</span>
        </div>

        <div class="item">
            <img src="resources/admin/img/appleImg.jpg">
<%--            <span class="icon">W</span>--%>
            <span class="name">Watermelon</span>
        </div>

        <div class="item">
            <img src="resources/admin/img/appleImg.jpg">
<%--            <span class="icon">G</span>--%>
            <span class="name">Grape</span>
        </div>

        <div class="item">
            <img src="resources/admin/img/appleImg.jpg">
<%--            <span class="icon">P</span>--%>
            <span class="name">Pear</span>
        </div>

        <div class="item">
            <img src="resources/admin/img/appleImg.jpg">
<%--            <span class="icon">C</span>--%>
            <span class="name">Cherry</span>
        </div>
    </div>
</div>

</body>
</html>
