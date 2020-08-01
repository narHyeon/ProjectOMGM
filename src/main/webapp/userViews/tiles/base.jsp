<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=0.25, maximum-scale=5, user-scalable=no">
<title>오묘가묘 - HOME</title>
<link rel="stylesheet" href="resources/style/reset.css" />
<link rel="stylesheet" href="resources/style/solid.css">
<link rel="stylesheet" href="resources/style/sidebar.css">
<link rel="stylesheet" href="resources/style/footer.css">
<link rel="stylesheet" href="resources/style/button.css">
<link rel="stylesheet" href="resources/style/header.css">
<link rel="shortcut icon" href="resources/img/자산%208.png">
<link
	href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@600&display=swap"
	rel="stylesheet">
<style>
#base {
	overflow: hidden;
	display: flex;
	flex-direction: column;
	align-content: stretch;
}
</style>
</head>
<body>
	<div id="base">
		<div>
			<tiles:insertAttribute name="header" />
		</div>
		<div style="min-height:500px;">
			<tiles:insertAttribute name="body" />
		</div>
		<div>
			<tiles:insertAttribute name="footer" />
		</div>
	</div>
</body>
</html>
