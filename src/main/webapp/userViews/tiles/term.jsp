<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>약관</title>
</head>
<style>
#term {
	border: 2px solid pink;
	width: 95%;
	margin: auto;
	text-align: center;
	padding: 10px;
	font-family: 정선동강;
	color: #2c3e50;
	font-size: 90%;
}

#term_btn {
	display: block;
	width: 200px;
	height: 30px;
	margin: 30px auto;
	background-color: pink;
	border: 0;
	outline-color: orange;
	color: white;
}
</style>
<body>
	<div id="term">
		<h1>${termTitle.title}</h1>
		<tiles:insertAttribute name="content" />
		<button id="term_btn" onclick="window.close()">약관 확인</button>
	</div>
</body>
</html>
