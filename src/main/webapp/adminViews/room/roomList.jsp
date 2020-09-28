<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title></title>
<link rel="stylesheet" href="resources/style/room/style.css">
<!-- 페이징 디자인  -->
<link type="text/css" rel="stylesheet" href="resources/style/review/reviewListBoard.css">
	<link rel="stylesheet" href="resources/admin/css/productListAdmin.css">
<style>
#roomList_wrap{
	margin-bottom: 2%;
}
#room_buttons{
	margin-left: 5%;
}
#roomList_content_p{
	margin-top : 10px;
	margin: 0px;
	padding: 0px;
}
#roomList_content_strong{
	margin-bottom: 5px;
}
#roomList_content_span{
	width: 30%;
	color: red;
}
#roomList_content_span2{
	font-size: 13px;
	color: black;
}
#roomList_content_div{
	display : flex;
	flex-direction : row;
	margin-bottom:3px;
}
#roomList_em{
	font-size: 15px;
}
.roomList_room{
	cursor: pointer;
}
</style>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#insert_button").click(function() {
			window.location.href = 'roomInsert.mdo';	
		});
		$(".roomList_room").click(function() {
			
			const roomnum = $(this).data("no");
			window.location.href = 'roomRead.mdo?ROOM_NO='+roomnum;
		});
	});
</script>
</head>
<body>
<div id="roomList_wrap">
<div id="title" >방 소개</div>
<main>
<div class="event_list">
    <ul>
		<c:forEach var="room" items="${roomList}" varStatus="num">
   		<li>
			<a class="roomList_room" data-no="${room.ROOM_NO}">
        	<div class="img"><img src="${room.ROOM_IMG}" width="271px" height="272px"></div>
	        <div class="info">
    	    	<strong id="roomList_content_strong">${room.ROOM_NAME}</strong>
        	    <p id="roomList_content_p">
            	<c:choose>
	            	<c:when test="${room.ROOM_KIND eq 's'}">
	            		<div id="roomList_content_div">
              				<div id="roomList_content_span">방 종류  </div> <div id="roomList_content_span2">개인방</div> <br>
              			</div>	
            		</c:when>
            		<c:when test="${room.ROOM_KIND eq 'p'}">
	              		<div id="roomList_content_div">
	              			<div id="roomList_content_span">방 종류  </div> <div id="roomList_content_span2" >단체방</div> <br>
            			</div>
            		</c:when>
            	</c:choose>	
            	<c:choose>
	            	<c:when test="${room.ROOM_FOR eq '고양이'}">
              			<div id="roomList_content_div">
              				<div id="roomList_content_span">반려동물  </div> <div id="roomList_content_span2">고양이</div>  <br>
            			</div>
            		</c:when>
            		<c:when test="${room.ROOM_FOR eq '강아지'}">
	              		<div id="roomList_content_div">	
	              			<div id="roomList_content_span">반려동물  </div> <div id="roomList_content_span2">강아지</div> <br>
            			</div>
            		</c:when>
            	</c:choose>	
            	</p>
			</div>
        	</a>
      	</li>	
      	</c:forEach>
	</ul>
</div>
</main>
<div id="room_buttons">
	<div class="btn btn-primary btn-icon-split" id="insert_button" >
  		<span class="icon text-white-50">
        <i class="fas fa-check"></i>
        </span>
		<span class="text">방 등록하기</span>
	</div>
</div>
	<div class="pro_paging" >
		<ul>
			<li class="first"><a href="roomReservationList.mdo" class="reviewList_page01"><span class="hide">첫페이지</span></a></li>
			<li class="prev"><a href="roomReservationList.mdo?page=${navi.startPageGroup-1}" class="reviewList_page01"><span class="hide">이전페이지</span></a></li>
			<c:forEach var="counter" begin="${navi.startPageGroup}" end="${navi.endPageGroup}">
				<c:if test="${page == counter}">
					<a href="roomReservationList.mdo?page=${counter}" style="background-color:lightskyblue ">&nbsp;${counter}</a>
				</c:if>
				<c:if test="${page != counter}">
					<a href="roomReservationList.mdo?page=${counter}" >&nbsp;${counter}</a>
				</c:if>
			</c:forEach>
			<li class="next"><a href="roomReservationList.mdo?page=${navi.endPageGroup+1}" class="reviewList_page01"><span class="hide">다음페이지</span></a></li>
			<li class="last"><a href="roomReservationList.mdo?page=${navi.totalRecordsCount}" class="reviewList_page01"><span class="hide">마지막페이지</span></a></li>
		</ul>
	</div><!-- end paging -->
</div><!-- end roomList_wrap -->
</body>
</html>
