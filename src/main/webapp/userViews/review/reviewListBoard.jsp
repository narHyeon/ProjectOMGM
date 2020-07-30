<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: YongSun Jang
  Date: 2020-07-28
  Time: 오후 2:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
    <link type="text/css" rel="stylesheet" href="resources/style/review/reviewListBoard.css">
    <title>reviewList_board</title>
</head>
<body>

<div id="reviewList_board">
<%--    <div class="reviewList_header">--%>
<%--        <h3 class="main_head_text">오묘가묘</h3>--%>
<%--    </div>--%>
    <div class="reviewList_head_sub_text">
        <p class="reviewList_sub_text">
            오묘가묘는 아이가 너~무나 좋아하는 환경조성을 통해 아이들의 행복과 정서함양에 모든 초점을 극대화한<br>
            <b>"아이 중심의 리얼 반려동물 프리미엄 펫파크"입니다.</b>
            <br><br>
            <span class="reviewList_span">오묘가묘와 함께 하세요♡</span>
            주인의 세심한 선택이 아이에게 특별한 행복으로 각인됩니다.
        </p>
    </div>
    <div class="reviewList_button">
<%--        <div class="reviesList_text_div">--%>
<%--        <input type="text" class="reviewList_text" >--%>
<%--        </div>--%>
        <form action="reviewListBoard.do" method="post">
            <table border="1">
                <tr>
                    <td>
                        <select name="searchCondition" class="select_search">
                            <option value="TITLE" >제목</option>
                            <option value="CONTENT" >내용</option>
                        </select>
                        <input type="text" name="searchKeyword" class="text_input" />
                        <input type="submit" value="검색" class="submit_button"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
    <div class="reviewList_main_sector00">
        <div class="reviewList_main_sector">
            <c:forEach var="list" items="${reviewList}">
                <div class="reviewList_line">
                    <img src="${list.imgRef}" class="reviewList_img">
                    <p class="reviewList_text">${list.title}</p>
                    <p class="reviewList_sub_text">${list.regDate}</p>
                </div>
            </c:forEach>
        </div>
    </div>
    <div class="reviewList_button00">
        <button class="button">글쓰기</button>
    </div>
</div>

</body>
</html>
