<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>Title</title>
<style>
#review_content {
	margin: 100px 5%;
	font-family: 'noto-sans';
}

#review_content h1 {
	font-size: 26px;
	margin: 30px 0;
	font-weight: 600;
	color: #333;
}

#review_content button {
	width: 100px;
	border: 1px solid gray;
}

#review_content .review_content_head {
	width: 100%;
	border-top: 2px solid #219af7;
	border-bottom: 1px solid gray;
	border-collapse: collapse;
	text-align: center;
	font-size: 12px;
	font-weight: 600;
}

#review_content .review_content_head td {
	border: 1px solid gray;
	border-right: 0;
	border-left: 0;
	padding: 10px 5px;
}

#review_content .review_content_head td:nth-child(1) {
	background-color: rgba(206, 206, 233, 0.18);
	width: 10%;
}

#review_content .review_content_head td:nth-child(2) {
	width: 68%;
}

.review_content_body {
	padding: 30px;
}

.review_content_button {
	text-align: right;
}

.review_content_prne {
	margin-top: 30px;
	border-top: 2px solid #a94442 !important;
}

.review_content_reply {
	display: flex;
	flex-direction: column;
	padding: 10px;
}

#review_content_reply_content_title {
	font-size: 21px;
	font-weight: 600;
	margin: 10px;
}

.review_content_reply div {
	display: flex;
	flex-direction: row;
	margin: 10px;
}

.review_content_reply div input, .review_content_reply div label {
	font-size: 16px;
	font-weight: 600;
	margin-right: 10px;
}

.review_content_reply textarea {
	margin: 10px;
	resize: none;
}

#review_content_reply_button {
	align-self: flex-end;
	margin-right: 10px;
}

/* 댓글 관련*/
#review_content_reply_content div {
	display: flex;
	flex-direction: row;
	margin-top: 20px;
	padding: 0 20px;
}

#review_content_reply_content div p {
	margin: 5px;
	font-size: 14px;
	font-weight: 500;
}

@media all and (max-width: 768px) {
	#review_content {
		margin: 100px 0;
	}
	.review_content_reply div input {
		width: 150px;
	}
}
</style>
</head>
<body>

	<div id="review_content">

		<h1>Review</h1>

		<table class="review_content_head">
			<tr>
				<td>제목</td>
				<td>${review.title}</td>
				<td>${review.regDate}</td>
			</tr>
			<tr>
				<td>대표이미지</td>
				<td>${review.imgRef}</td>
				<td>${review.id}</td>
			</tr>
		</table>
		<div class="review_content_body">
			${review.content}
		</div>
		<hr>
		<div class="review_content_button">
			<button onclick="reviewList()">목록</button>
		</div>


		<%--  댓글  --%>
		<h3 id="review_content_reply_content_title">댓글</h3>
		<div id="review_content_reply_content">

			<c:forEach var="rv" items="${reply}">
				<div>
					<p>${rv.id} : </p>
					<p>${rv.content}</p>
				</div>
			</c:forEach>
		</div>

		<%--  댓글 달기  --%>
		<div class="review_content_reply">
			<div>
				<label for="review_content_reply_name">이름</label> <input
					id="review_content_reply_name" type="text"> <label
					for="review_content_reply_pass">패스워드</label> <input
					id="review_content_reply_pass" type="text">
			</div>
			<textarea name="" id="review_content_reply_text" cols="15" rows="5"></textarea>
			<button type="submit" id="review_content_reply_button"
				onclick="addReply()">댓글쓰기</button>
		</div>

		<%-- 목차 --%>
		<table class="review_content_head review_content_prne">
			<tr onclick="prevContent('${review.prevTitle}')">
				<td>이전</td>
				<td>${review.prevTitle}</td>
				<td>${review.prevDate}</td>
			</tr>
			<tr onclick="nextContent('${review.nextTitle}')">
				<td>다음</td>
				<td>${review.nextTitle}</td>
				<td>${review.nextDate}</td>
			</tr>
		</table>
	</div>
	<form id="review_throw" action="reviewContent.do"></form>
	<script>
        function sendData(id,pwd,content) {
            const xhr = new XMLHttpRequest();

            xhr.open('POST', 'reviewContentReply.do',true);
            xhr.setRequestHeader('Content-type', 'application/json');
            const data = { id: id, pwd: pwd, content: content, boardSeq: ${review.seq} };
            xhr.send(JSON.stringify(data));
        }

        function addReply() {
            const id = document.querySelector('#review_content_reply_name');
            const pwd = document.querySelector('#review_content_reply_pass');
            const content = document.querySelector('#review_content_reply_text');
            document.querySelector('#review_content_reply_content').innerHTML += `
                <div>
                    <p>`+id.value+` : </p>
                    <p>`+content.value+`</p>
                </div>
            `;
            sendData(id.value,pwd.value,content.value);
            id.value = '';
            pwd.value = '';
            content.value = '';
        }

        function reviewList() {
        	window.location.href = 'reviewListBoard.do';
		}

		function prevContent(prev) {
        	if(prev === '없음') {
        		alert('마지막 페이지입니다.');
        		return;
			}
			const el = document.querySelector('#review_throw');
			el.innerHTML = '<input type=hidden name=seq value='+(${review.prevSeq})+'>';
			el.submit();
		}

		function nextContent(next) {
			if(next === '없음') {
				alert('마지막 페이지입니다.');
				return;
			}
			const el = document.querySelector('#review_throw');
			el.innerHTML = '<input type=hidden name=seq value='+(${review.nextSeq})+'>';
			el.submit();
		}
    </script>
</body>
</html>
