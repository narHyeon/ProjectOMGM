<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
<<<<<<< HEAD
<title></title>
<link rel="stylesheet" type="text/css" href="resources/style/faq.css">
<link rel="stylesheet" type="text/css" href="resources/style/faq2.css">
=======
<title>FLAT DESIGN - 문의사항</title>
<link rel="stylesheet" type="text/css" href="resources/style/faq/faq.css">
<link rel="stylesheet" type="text/css" href="resources/style/faq/faq2.css">
>>>>>>> 497d70079fe6bcbf96fcb0969973392e6eef20d5
<link rel="shortcut icon" href="images/favicon/favicon.ico">
<link rel="apple-touch-icon-precomposed"
	href="images/icon/flat-design-touch.png">
<style type="text/css">
* {
	padding: 0;
}

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
}

#liststyle {
	list-style-type: none;
	float: left;
	border-left: 1px solid #e2e2e2;
	padding: 0.5%;
	color: gray;
	font-size: 12px;
	font: 정선동강;
	padding-left: 2%;
	padding-right: 2%;
}

#thead1 {
	color: #fff;
	background: pink;
}

#thead2 {
	color: #fff;
	background: #21F0A1;
}

.service_kind {
	color: #347F77;
}

#tbody-style {
	padding: 0;
}


#td_example {
	
}

#tabletle {
	display: flex;
	width: 1000px;
	height: 90px;
}

#product-count {
	display: flex;
	height: 60px;
}

#product_img {
	display: flex;
	width: 80px;
	height: 80px;
	padding: 0px;
	max-width: 80px;
	max-height: 80px;
}

#ul-style {
	padding: 10px;
	width: 70%;
}

#li-style {
	margin: 6px;
	font-size: 15px;
}

#tabletle-1 {
	display: flex;
	width: 120px;
	height: 60px;
	background-color: red;
}

#ptag-1 {
	padding: 0;
}

#banner {background:black; height:50px; width:50px;}
</style>
</head>
<body>
	<div id="wrap">
		<div id="banner"></div>
		<section class="content_section">
			<div class="content_row_1">
				<div id="FAQ_Search">
					<h1 class="service_kind">주문 내역 조회</h1>
				</div>
				<hr style="border: solid 1px #pink;">
				
				<table class="board_table">
					<thead id="thead1">
						<tr>
							<th id="t1">주문번호</th>
							<th id="t2">상품정보</th>
							<th id="t3">주문 일자</th>
							<th id="t4">주문금액(수량)</th>

						</tr>
					</thead>
					<tbody>
						<tr>
							<td id="td_example">

								<div id="product-count"></div>
							</td>

							<td id="td_example">
								<div id="tabletle">
									<a href="#"> <img src="resources/img/intro_image.jpg"
										id="product_img">
									</a>
									<ul id="ul-style">
										<li id="li-style">오묘가묘</li>
										<li id="li-style">강아지상품1</li>
										<li id="li-style">옵션:</li>
									</ul>
								</div>
							</td>
							<td id="td_example"></td>
							<td id="td_example"></td>

						</tr>

					</tbody>
				</table>
			</div>
		</section>
	</div>
</body>
</html>