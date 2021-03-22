<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: YongSun Jang
  Date: 2020-07-28
  Time: 오후 2:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link type="text/css" rel="stylesheet" href="resources/style/review/reviewListBoard.css">
    <link rel="stylesheet" href="resources/admin/css/productListAdmin.css">
    <title>reviewList_board</title>
</head>
<body>
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-info">이용 후기</h6>
    </div>
    <div class="card-body">
        <div id="memberTable" class="table-responsive">
            <div>
<div id="reviewList_board">
    <%--    <div class="reviewList_header">--%>
    <%--        <h3 class="main_head_text">오묘가묘</h3>--%>
    <%--    </div>--%>

    <div class="reviewList_button" style="border: none">
        <%--        <div class="reviesList_text_div">--%>
        <%--        <input type="text" class="reviewList_text" >--%>
        <%--        </div>--%>
        <form action="adminReview.mdo" method="post">
            <table border="1">
                <tr>
                    <td>
                        <select name="searchCondition" class="select_search">
                            <option value="TITLE">제목</option>
                            <option value="CONTENT">내용</option>
                        </select>
                        <input type="text" name="searchKeyword" class="text_input"/>
                        <input type="submit" value="검색" class="submit_button" style="background-color: lightskyblue; border: none"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
    <div class="reviewList_main_sector00">
        <div class="reviewList_main_sector" >
            <c:forEach var="list" items="${reviewList}">
                <div class="reviewList_line" onclick="getReview(${list.seq})">
                    <img src="${list.imgRef}" class="reviewList_img">
                    <p class="reviewList_text">${list.title}</p>
                    <p class="reviewList_sub_text">${list.regDate}</p>
                </div>
            </c:forEach>
        </div>
    </div>

    <div class="pro_paging">
        <ul>
            <li class="first"><a href="adminReview.mdo"><span class="hide">첫페이지</span></a></li>
            <li class="prev"><a href="adminReview.mdo?page=${page.cnt-1}"><span class="hide">이전페이지</span></a></li>
            <c:forEach var="counter" begin="${navi.startPageGroup}" end="${navi.endPageGroup}">
                <c:if test="${page.cnt == counter}">
                    <a href="adminReview.mdo?page=${counter}"  style="background-color:lightskyblue; padding-right: 0.5%" >&nbsp;&nbsp;${counter}</a>
                </c:if>
                <c:if test="${page.cnt != counter}">
                    <a href="adminReview.mdo?page=${counter}" >&nbsp;&nbsp;${counter}</a>
                </c:if>
            </c:forEach>
            <li class="next"><a href="adminReview.mdo?page=${page.cnt+1}"><span class="hide">다음페이지</span></a></li>
            <li class="last"><a href="adminReview.mdo?page=${navi.endPageGroup}"><span class="hide">마지막페이지</span></a></li>
        </ul>
    </div>
</div>
<form id="review_throw" action="reviewContent.mdo"></form>
            </div>
        </div>
    </div>
</div>

<script>
    function changeColor(counter){
        let value = document.getElementsByClassName('reviewList_page').value();
        console.log(1);
        if(counter === 1) {
            let color = document.getElementsByClassName('reviewList_page');
            color.style = 'backgroundColor: #FFFFFF';
        }
    }

    function getReview(seq) {
        const el = document.querySelector('#review_throw');
        el.innerHTML = '<input type=hidden name=seq value='+seq+'>';
        el.submit();
    }

    function reviewWrite() {
        window.location.href = 'reviewWrite.mdo';
    }
</script>
</body>
</html>
