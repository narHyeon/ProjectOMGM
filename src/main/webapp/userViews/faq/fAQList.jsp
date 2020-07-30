<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
<title>FLAT DESIGN - 문의사항</title>
<link rel="stylesheet" type="text/css" href="resources/style/faq/faq.css">
<link rel="stylesheet" type="text/css" href="resources/style/faq/faq2.css">
<link rel="shortcut icon" href="images/favicon/favicon.ico">
<link rel="apple-touch-icon-precomposed"
	href="images/icon/flat-design-touch.png">
<script src="js/jquery.min.js"></script>
<script src="js/flat.min.js"></script>
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<script type="text/javascript">
      $(document).ready(function(){
         $(".sub").hide();
     <c:forEach var="faq" items="${fAQList}" varStatus="num">
         $("#main${num.count}").click(function(){
            $("#sub${num.count}").slideToggle("fast");
         });
     </c:forEach>    
      });
   </script>
<style type="text/css">
#FAQ_Search {
	display: flex;
	flex-direction: row;
	flex-grow: 20%;
	margin-bottom: 1%;
}
ahover {
	position: relative;
	float: left;
	display: block;
	width: 100%;
	z-index: 999;
	background: #ccc;
}
ahover:hover {
	background: #444;
	color: #fff;
}
.line {
	display: flex;
	flex-direction: column;
	width: 100%;
	height: 20px;
	margin-bottom: 0.5%;
}
.ul-1 {
	width: 100%;
	border-top: 1px solid #e2e2e2;
	border-bottom: 1px solid #e2e2e2;
	border-right: 1px solid #e2e2e2;
	justify-content: space-around;
}
.liststyle {
	list-style-type: none;
	float: left;
	border-left: 1px solid #e2e2e2;
	color: gray;
	font-size: 12px;
	font: 정선동강;
	padding-left: 1%;
	padding-right: 1%;
}
.main1:hover {
	cursor: pointer;
}
#category {
	border: 1px solid #ffffff;
	background-color: white;
	cursor: pointer;
}
</style>
</head>
<body>
	<div id="wrap">
		<section class="content_section">
			<div class="content_row_1">
				<div id="FAQ_Search">
					<h1>FAQ</h1>
				</div>
				<div class="line">
					<ul class="ul-1">
						<c:forEach var="category" items="${categoryList}">
						<li class="liststyle">
							<form action="fAQList.do" method="post">
								<input type="hidden" name="FAQ_CATEGORYNUM" value="${category.CATEGORY_NO}">
								<input type="submit" value="${category.CATEGORY_NAME}" id="category">
							</form>
						</li>
						</c:forEach>
						<li class="liststyle">
							<form action="fAQList.do" method="get">
								<input type="submit" value="전체보기" id="category">
							</form>
						</li>
					</ul>
				</div>
				<br>
				<table class="board_table">
					<thead>
						<tr>
							<th>번호</th>
							<th>내용</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="faq" items="${fAQList}" varStatus="num">
							<tr class="main1" id="main${num.count}">
								<td>${num.count}</td>
								<td>${faq.FAQ_ASK}</td>
							</tr>
							<tr class="sub" id="sub${num.count}">
								<td id="sub1">답변</td>
								<td id="sub1">${faq.FAQ_ANSWER}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</section>
	</div>
</body>
</html>