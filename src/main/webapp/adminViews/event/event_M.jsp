<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Notice & Event</title>
<link rel="stylesheet" href="resources/style/event/default1.css">
<link rel="stylesheet" href="resources/style/event/style1.css">

<style>
#insert_button {
	width: 100px;
	height: 100px;
	border-radius: 66%;
	border: 1px solid black;
	display: block;
}
</style>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
function goWrite() {
	window.location.href = 'eventWrite_M.mdo';
}
</script>
</head>
<body>
	<div id="title" >Notice & Event</div>
<main>
  <div class="event_list">
    <ul>
    <c:forEach var="eventlist" items="${EventList}" varStatus="num">
      <li>
        <a href="getEvent_M.mdo?EVENT_NO=${eventlist.EVENT_NO}" >
     	 <div class="img"><img src="${eventlist.EVENT_IMG}"></div>
          <em>${eventlist.EVENT_STATUS}</em>
          <div class="info">
            <strong>${eventlist.EVENT_TITLE}</strong>
            <p>
              <span>이벤트 기간</span>
              ${eventlist.EVENT_START} ${eventlist.EVENT_END}
            </p>
          </div>
        </a>
      </li>
      </c:forEach>
      
    </ul>
    <input type="button" value="글 쓰기" onclick="goWrite()">
  </div>

  <div class="paging">
    <ul>
      <li class="first"><a href=""><span class="hide">이전페이지</span></a></li>
      <li class="prev"><a href=""><span class="hide">다음페이지</span></a></li>
      <li><a href="" class="on">1</a></li>
      <li><a href="">2</a></li>
      <li class="next"><a href=""><span class="hide">다음페이지</span></a></li>
      <li class="last"><a href=""><span class="hide">다음페이지</span></a></li>
    </ul>
  </div>


	</main>
</body>
</html>

