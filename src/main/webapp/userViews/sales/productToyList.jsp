<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: Jury
  Date: 2020-07-31
  Time: 오후 2:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko" class="pro_html">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <title></title>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8/jquery.min.js"></script>
    <link rel="stylesheet" href="resources/style/sales/productList.css">
    <script src="https://kit.fontawesome.com/844385d242.js" crossorigin="anonymous"></script>
    <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
    <style>
        .search { padding: 20px 0; text-align: center; font-size: 0;}
        .search * { margin: 0 5px; height: 53px; border: 1px solid #ccc;}
        .search select { width: 30%;height: 41px;font-size: 16px;}
        .search #searchKeywordToy { width: 38%;height: 41px;font-size: 16px;}
        .search #submit { width: 22%;height: 41px;border-color: #F28888;color:white; background: #F28888; cursor: pointer;}
        /*.search button { width:150px; border: none; background: #ed1846; color:#fff;}*/

    </style>
</head>
<body class="proList_body">
<div class="slider_img">
    <div class="slider_slide" style="background-image: url(resources/img/mall/OMGMALL.jpg);"></div>
    <div class="slider_slide" style="background-image: url(resources/img/mall/mall1.jpg);"></div>
    <div class="slider_slide" style="background-image: url(resources/img/mall/mall2.jpg);"></div>
    <a class="slider_prev" onclick="button_click(-1)">&#10094</a>
    <a class="slider_next" onclick="button_click(1)">&#10095</a>
</div>
<main class="proList_main">
    <h2>ALL PRODUCT</h2>
    <div class="category"  >
        <a href="getMallFeedList.do"><button  >사료</button></a>
        <button style="color: deeppink">장난감</button>
    </div>

    <div class="event_list">
        <div style="display: flex; justify-content: flex-end; margin-right: 13.3%;
                                margin-bottom: 1.5%; margin-top: 3%">
            <form action = "getMallToyList.do" method="post">
                <table border="1">
                    <tr>
                        <td class="search">
                            <select name="searchConditionToy">
                                <option value="TOY_NAME" >상품 이름</option>
                                <option value="TOY_INFO">상품 정보</option>
                            </select>
                            <input id="searchKeywordToy" type="text" name="searchKeywordToy"/>
                            <input id="submit" type="submit" value="검색"/>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
        <ul>
            <form action="productDetail.do" class="product_form">
                <c:forEach var="toyList" items="${ToyList}">
                    <li class="pro_Li" style="padding-left:5%;">
                        <a href="getMallToyOneInfoSales.do?toy_code=${toyList.toy_code}">
                            <div><img src="resources/img/product/${toyList.toy_img}" class="img" alt=""></div>
                            <div class="menu" style="display: none;">
                                <em>NEW</em>
                            </div>
                            <div class="info">
                                <strong>${toyList.toy_name}</strong>
                                <p style="font-size: 18px; color:#F28888;">${toyList.toy_discount}원</p>
                                    <%--                                <p>--%>
                                    <%--                                    <span><fmt:formatDate value="${toyList.toy_inStock}" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate></span>--%>
                                    <%--                                </p>--%>
                            </div>
                        </a>
                    </li>
                </c:forEach>

            </form>
        </ul>
    </div>
    <div class="pro_paging">
        <ul>
            <li class="first"><a href="getMallToyList.do"><span class="hide">첫페이지</span></a></li>
            <li class="prev"><a href="getMallToyList.do?page=${navi.startPageGroup-1}"><span class="hide">이전페이지</span></a></li>
            <c:forEach var="counter" begin="${navi.startPageGroup}" end="${navi.endPageGroup}">
                <c:if test="${page.page == counter}">
                    <a href="getMallToyList.do?page=${counter}"style="background-color: lightpink; padding-right: 0.4%" >&nbsp;&nbsp;${counter}</a>
                </c:if>
                <c:if test="${page.page != counter}">
                    <a href="getMallToyList.do?page=${counter}" >&nbsp;&nbsp;${counter}</a>
                </c:if>
            </c:forEach>
            <li class="next"><a href="getMallToyList.do?page=${navi.endPageGroup + 1}"><span class="hide">다음페이지</span></a></li>
            <li class="last"><a href="getMallToyList.do?page=${navi.totalRecordsCount}"><span class="hide">마지막페이지</span></a></li>
        </ul>
    </div>
    <%--    <div class="pro_paging">--%>
    <%--        <ul>--%>
    <%--            <li class="first"><a href=""><span class="hide">첫페이지</span></a></li>--%>
    <%--            <li class="prev"><a href=""><span class="hide">이전페이지</span></a></li>--%>
    <%--            <li><a href="" class="on">1</a></li>--%>
    <%--            <li><a href="">2</a></li>--%>
    <%--            <li class="next"><a href=""><span class="hide">다음페이지</span></a></li>--%>
    <%--            <li class="last"><a href=""><span class="hide">마지막페이지</span></a></li>--%>
    <%--        </ul>--%>
    <%--    </div>--%>

</main>

<script>
    <%--  이미지 슬라이더  --%>
    let currSlide = 1;
    showSlide(currSlide);

    function button_click(num){
        showSlide((currSlide += num));
    }
    function showSlide(num){
        const slides = document.querySelectorAll(".slider_slide");
        if(num>slides.length){
            currSlide =1;
        }if(num<1){
            currSlide = slides.length;
        }
        for(let i=0; i<slides.length; i++){
            slides[i].style.display="none";
        }slides[currSlide -1].style.display="block";

    }

    //top버튼
    $(function() {
        $(window).scroll(function() {
            if ($(this).scrollTop() > 200) {
                $('#MOVE_TOP_BTN').fadeIn();
            } else {
                $('#MOVE_TOP_BTN').fadeOut();
            }
        });

        $("#MOVE_TOP_BTN").click(function() {
            $('.pro_html, .proList_body').animate({
                scrollTop : 0
            }, 200);
            return false;
        });
    });
    //상품상태출력
    if ($('.toyname').text() != '') { $('.menu').show(); }

</script>
</body>
</html>
