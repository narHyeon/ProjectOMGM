<<<<<<< HEAD:src/main/webapp/adminViews/event/event_M.jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
=======
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
>>>>>>> 9aa0e7d462240c01c13265b8547014802c3857b9:src/main/webapp/adminViews/event/event.jsp
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
<<<<<<< HEAD:src/main/webapp/adminViews/event/event_M.jsp
	<div id="title" >Notice & Event</div>
<main>
  <div class="event_list">
    <ul>
    <c:forEach var="eventlist" items="${EventList}" varStatus="num">
      <li>
        <a href="">
          <div class="img">${eventlist.EVENT_CONTENT}</div>
          <em>${eventlist.EVENT_STATUS}</em>
          <div class="info">
            <strong>${eventlist.EVENT_TITLE}</strong>
            <p>
              <span>Ïù¥Î≤§Ìä∏Í∏∞Í∞Ñ</span>
              ${eventlist.EVENT_START} ${eventlist.EVENT_END}
            </p>
          </div>
        </a>
      </li>
      </c:forEach>
      <li>
        <a href="">
          <div class="img"><img src="resources/img/event/dog.jpg" alt=""></div>
          <em>anything</em>
          <div class="info">
            <strong>Ï†úÎ™©</strong>
            <p>
              <span>Ïù¥Î≤§Ìä∏Í∏∞Í∞Ñ</span>
              ex)ÎÇ†Ïßú
            </p>
          </div>
        </a>
      </li>
      <li>
        <a href="">
          <div class="img"><img src="resources/img/event/dog2.webp" alt=""></div>
          <em>1</em>
          <div class="info">
            <strong>ÏßÑÌñâÏ§ë</strong>
            <p>
              <span>Ïù¥Î≤§Ìä∏Í∏∞Í∞Ñ</span>
             	ÎÇ†Ïßú
            </p>
          </div>
        </a>
      </li>
      <li>
        <a href="">
          <div class="img"><img src="resources/img/event/dog3.webp" alt=""></div>
          <em>1</em>
          <div class="info">
            <strong>1</strong>
            <p>
              <span>1</span>
             1
            </p>
          </div>
        </a>
      </li>
      <li>
        <a href="">
          <div class="img"><img src="resources/img/event/dog.jpg" alt=""></div>
          <em>1</em>
          <div class="info">
            <strong>1</strong>
            <p>
              <span>1</span>
             1
            </p>
          </div>
        </a>
      </li>
      <li>
        <a href="">
          <div class="img"><img src="resources/img/event/dog1.webp" alt=""></div>
          <em>123</em>
          <div class="info">
            <strong></strong>
            <p>
              <span></span>
              
            </p>
          </div>
        </a>
      </li>
     
    </ul>
    <input type="button" value="Í∏Ä Ïì∞Í∏∞" onclick="goWrite()">
  </div>

  <div class="paging">
    <ul>
      <li class="first"><a href=""><span class="hide">Ï≤´ÌéòÏù¥ÏßÄ</span></a></li>
      <li class="prev"><a href=""><span class="hide">Ïù¥Ï†ÑÌéòÏù¥ÏßÄ</span></a></li>
      <li><a href="" class="on">1</a></li>
      <li><a href="">2</a></li>
      <li class="next"><a href=""><span class="hide">Îã§ÏùåÌéòÏù¥ÏßÄ</span></a></li>
      <li class="last"><a href=""><span class="hide">ÎßàÏßÄÎßâÌéòÏù¥ÏßÄ</span></a></li>
    </ul>
  </div>
=======
	<div id="title">Notice & Event</div>
	<main>
		<div class="event_list">
			<ul>
				<li><a href="">
						<div class="img">
							<img src="resources/img/event/dog-s.webp" alt="">
						</div> <em>ing</em>
						<div class="info">
							<strong>ø¿π¶∞°π¶ «¡∑Œ¡ß∆Æ ¿Ã∫•∆Æ!</strong>
							<p>
								<span>¿Ã∫•∆Æ±‚∞£</span> 2020.7.30 ~ 2020.9.3
							</p>
						</div>
				</a></li>
				<li><a href="">
						<div class="img">
							<img src="resources/img/event/dog.jpg" alt="">
						</div> <em>anything</em>
						<div class="info">
							<strong>¡¶∏Ò</strong>
							<p>
								<span>¿Ã∫•∆Æ±‚∞£</span> ex)≥Ø¬•
							</p>
						</div>
				</a></li>
				<li><a href="">
						<div class="img">
							<img src="resources/img/event/dog2.webp" alt="">
						</div> <em>1</em>
						<div class="info">
							<strong>¡¯«‡¡ﬂ</strong>
							<p>
								<span>¿Ã∫•∆Æ±‚∞£</span> ≥Ø¬•
							</p>
						</div>
				</a></li>
				<li><a href="">
						<div class="img">
							<img src="resources/img/event/dog3.webp" alt="">
						</div> <em>1</em>
						<div class="info">
							<strong>1</strong>
							<p>
								<span>1</span> 1
							</p>
						</div>
				</a></li>
				<li><a href="">
						<div class="img">
							<img src="resources/img/event/dog.jpg" alt="">
						</div> <em>1</em>
						<div class="info">
							<strong>1</strong>
							<p>
								<span>1</span> 1
							</p>
						</div>
				</a></li>
				<li><a href="">
						<div class="img">
							<img src="resources/img/event/dog1.webp" alt="">
						</div> <em>123</em>
						<div class="info">
							<strong></strong>
							<p>
								<span></span>

							</p>
						</div>
				</a></li>

			</ul>
		</div>

		<div class="paging">
			<ul>
				<li class="first"><a href=""><span class="hide">√π∆‰¿Ã¡ˆ</span></a></li>
				<li class="prev"><a href=""><span class="hide">¿Ã¿¸∆‰¿Ã¡ˆ</span></a></li>
				<li><a href="" class="on">1</a></li>
				<li><a href="">2</a></li>
				<li class="next"><a href=""><span class="hide">¥Ÿ¿Ω∆‰¿Ã¡ˆ</span></a></li>
				<li class="last"><a href=""><span class="hide">∏∂¡ˆ∏∑∆‰¿Ã¡ˆ</span></a></li>
			</ul>
		</div>
>>>>>>> 9aa0e7d462240c01c13265b8547014802c3857b9:src/main/webapp/adminViews/event/event.jsp


	</main>
</body>
</html>

