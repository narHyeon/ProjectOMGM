<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title></title>
<!-- 페이징 디자인  -->
    <link type="text/css" rel="stylesheet" href="resources/style/review/reviewListBoard.css">
    <link rel="stylesheet" href="resources/style/sales/productList.css">
    <link rel="stylesheet" href="resources/style/sales/productList.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$(".roomList_room").click(function() {
			const roomnum = $(this).data("no");
			window.location.href = 'roomRead.do?ROOM_NO='+roomnum;
		});
	});
</script>
<style type="text/css">
.room_title {
		display: flex;
	width: 1196px;
	margin-left: 5%;
	margin-top: 3%;
	height: 70px;
	text-align: center;
	font-size: 33px;
	color: pink;
}
</style>
</head>
<body>
<div id="reviewList_board">
	<span class="room_title">방 소개</span>
    <div class="reviewList_button">
    </div>
    <div class="reviewList_main_sector00">
        <div class="reviewList_main_sector">
            <c:forEach var="room" items="${roomList}" varStatus="num">
                <div class="reviewList_line" data-no="${room.ROOM_NO}">
                    <img src="${room.ROOM_IMG}" class="reviewList_img">
                    <p class="reviewList_text">${room.ROOM_NAME}</p>
                    <p class="reviewList_sub_text">	
                    <c:choose>
						<c:when test="${room.ROOM_KIND eq 's'}">
            				방종류 : 개인방
            			</c:when>
            			<c:when test="${room.ROOM_KIND eq 'p'}">
							방종류 : 단체방
            			</c:when>
                    </c:choose>
					<c:choose>
	            		<c:when test="${room.ROOM_FOR eq '고양이'}">
              				반려동물: 고양이
 		           		</c:when>
        	    		<c:when test="${room.ROOM_FOR eq '강아지'}">
            				반려동물: 강아지
            			</c:when>
            		</c:choose>
            		</p>
                </div>
            </c:forEach>
        </div>
    </div>
	
	<div class="pro_paging">
    	<ul>
            <li class="first"><a href="roomList.do"><span class="hide">첫페이지</span></a></li>
            <li class="prev"><a href="roomList.do?page=${navi.startPageGroup-1}"><span class="hide">이전페이지</span></a></li>
            <c:forEach var="counter" begin="${navi.startPageGroup}" end="${navi.endPageGroup}">
                <c:if test="${page == counter}">
                    <a href="roomList.do?page=${counter}" name="${page}"id="pageNextColorB" style="background-color: lightpink;  padding-right: 0.4%" >&nbsp;&nbsp;${counter}</a>
                </c:if>
                <c:if test="${page != counter}">
                    <a href="roomList.do?page=${counter}" name="${page}"id="pageNextColorB" >&nbsp;&nbsp;${counter}</a>
                </c:if>
            </c:forEach>

            <li class="next"><a href="roomList.do?page=${navi.endPageGroup+1}"><span class="hide">다음페이지</span></a></li>
            <li class="last"><a href="roomList.do?page=${navi.totalRecordsCount}"><span class="hide">마지막페이지</span></a></li>
        </ul>
    </div>
	
</div>
</body>
</html>
