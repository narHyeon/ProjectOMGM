<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js" defer></script>
<script src="resources/js/footer.js" defer></script>
</head>
<body>
	<!-- footer part -->
	<footer id="foot">
		<ul id="footSection1">
			<div id="footDiv">
				<img id="footLogo" src="resources/img/자산%201.png" alt="">
			</div>
			<div>
				<li id="footTitle">{{title}}</li>
				<li class="footValue">대표 : {{name}}</li>
				<li class="footValue">사업자 번호 : {{companyNumber}}</li>
				<li class="footValue">주소 : {{address}}</li>
				<li class="footValue">전화번호 : {{phoneNumber}}</li>
				<li class="footValue"><a class="footInfo" href="#"
					@click="footTerm" name="사이트 도움말">사이트 도움말</a>
				<div class="footInfo bar">|</div> <a class="footInfo" href="#"
					@click="footTerm" name="사이트 이용약관">사이트 이용약관</a>
				<div class="footInfo bar">|</div> <a class="footInfo" href="#"
					@click="footTerm" name="사이트 운영원칙">사이트 운영원칙</a>
				<div class="footInfo bar">|</div> <a class="footInfo" href="#"
					@click="footTerm" name="개인정보취급방침">개인정보취급방침</a>
				<div class="footInfo bar">|</div> <a class="footInfo" href="#"
					@click="footTerm" name="책임의 한계와 법적고지">책임의 한계와 법적고지</a>
				<div class="footInfo bar">|</div> <a class="footInfo" href="#"
					@click="footTerm" name="게시중단요청서비스">게시중단요청서비스</a>
				<div class="footInfo bar">|</div> <a class="footInfo" href="#"
					@click="footTerm" name="고객센터">고객센터</a></li>
			</div>
			<div id="sns">
				<img class="snsIcon" src="resources/img/자산%2017.png" alt=""> <img
					class="snsIcon" src="resources/img/자산%2018.png" alt=""> <img
					class="snsIcon" src="resources/img/자산%2019.png" alt="">
			</div>
		</ul>
		<ul id="footSection2">
			<p>copyrights © 오묘가묘 살자, 즐거운 하루 All Rights Reserved.</p>
		</ul>
	</footer>
</body>
</html>
