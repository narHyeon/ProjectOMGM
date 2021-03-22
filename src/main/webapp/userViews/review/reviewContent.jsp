<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>Title</title>
<style>
#review_content {
	margin: 100px 5%;
	font-family: 'noto-sans';
}

#review_content img {
	width: 70% !important;
}

#review_content h1 {
	font-size: 26px;
	margin: 30px 0;
	font-weight: 600;
	color: #333;
}

#review_content button {
	width: 100px;
	background-color: pink;
	color: white;
	border: 1px solid #cb5e6b;
	height: 25px;
	font-weight: 600;
}
#review_content button:hover {
	cursor: pointer;
	background-color: #cb5e6b;
}

#review_content .review_content_head {
	width: 100%;
	border-top: 2px solid #219af7;
	background-color: white;
	border-bottom: 1px solid pink;
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
	text-align: center;
}

.review_content_button {
	border-top: 2px solid pink;
	padding: 5px;
	text-align: right;
}

.review_content_prne {
	margin-top: 30px;
	border-top: 2px solid #a94442 !important;
}

.review_content_prne:hover {
	cursor: pointer;
}

.review_content_reply {
	display: flex;
	flex-direction: column;
	padding: 10px;
	margin-top: 20px;
	border-top: 1px solid pink;
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

#review_content_reply_content div p:nth-child(3) {
	margin-left: 20px;
	font-size: 13px;
	font-weight: 500;
	color: #777;
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
				<td>${review.formatDate}</td>
			</tr>
			<tr>
				<td>아이디</td>
				<td>${review.id}</td>
				<td>조회수 : ${review.cnt}</td>
			</tr>
		</table>
		<div class="review_content_body">${review.content}</div>
		<div class="review_content_button">
			<button onclick="fixedReview()">글 수정</button>
			<button onclick="deleteReview()">글 삭제</button>
			<button onclick="reviewList()">목록</button>
		</div>


		<%--  댓글  --%>
		<h3 id="review_content_reply_content_title">댓글</h3>
		<div id="review_content_reply_content">

			<c:forEach var="rv" items="${reply}">
				<div>
					<p>${rv.id} : </p>
					<p>${rv.content}</p>
					<p>${rv.formatDate}</p>
					<c:if test="${member.id == rv.writer}">
						<p><button style="height:20px;" value="${rv.seq}" onClick="deleteReply()">삭제</button></p>
					</c:if>
				</div>
			</c:forEach>
		</div>

		<%--  댓글 달기  --%>
		<div class="review_content_reply">
			<div>
				<label for="review_content_reply_name">이름</label>
				<input id="review_content_reply_name" type="text">
			</div>
			<textarea name="" id="review_content_reply_text" cols="15" rows="5"></textarea>
			<button type="submit" id="review_content_reply_button"
				onclick="addReply()">댓글쓰기</button>
		</div>

		<%-- 목차 --%>
		<table class="review_content_head review_content_prne">
			<tr onclick="nextContent('${review.nextTitle}')">
				<td>이전</td>
				<td>${review.nextTitle}</td>
				<td>${review.formatNextDate}</td>
			</tr>
			<tr onclick="prevContent('${review.prevTitle}')">
				<td>다음</td>
				<td>${review.prevTitle}</td>
				<td>${review.formatPrevDate}</td>
			</tr>
		</table>
	</div>
	<form id="review_throw" action="reviewContent.do"></form>
	<script>
        function sendData(id,content) {
            const xhr = new XMLHttpRequest();

            xhr.open('POST', 'reviewContentReply.do',true);
            xhr.setRequestHeader('Content-type', 'application/json');

            let writer;

            if('${member.id}' === '') {
            	writer = Math.random()
			} else {
            	writer = '${member.id}';
			}

            const data = { id: id, content: content, boardSeq: ${review.seq}, writer: writer};
            xhr.send(JSON.stringify(data));
        }

        function addReply() {
            const id = document.querySelector('#review_content_reply_name');
            const content = document.querySelector('#review_content_reply_text');
			const date = new Date();
			const dateStr = String(date);

			function dowPick(item) {
				switch(item) {
					case 'Jan': return 1;
					case 'Feb': return 2;
					case 'Mar': return 3;
					case 'Apr': return 4;
					case 'May': return 5;
					case 'Jun': return 6;
					case 'Jul': return 7;
					case 'Aug': return 8;
					case 'Sep': return 9;
					case 'Oct': return 10;
					case 'Nov': return 11;
					case 'Dec': return 12;
				}
			}
			const dateArr = dateStr.split(' ');
			const month = dowPick(dateArr[1]);
			const timeArr = dateArr[4].split(':');
			const time = timeArr[0] + ':' + timeArr[1];

			document.querySelector('#review_content_reply_content').innerHTML += `
                <div>
                    <p>`+id.value+` : </p>
                    <p>`+content.value+`</p>
					<p>날짜 : `+dateArr[3]+`-`+month+`-`+dateArr[2]+`, `+time+`</p>
                </div>
            `;
            sendData(id.value,content.value);
            id.value = '';
            content.value = '';
        }

        function reviewList() {
        	window.location.href = 'reviewListBoard.do';
		}

		function prevContent(prev) {
        	if(prev === '없음') {
        		swal('마지막 페이지입니다.');
        		return;
			}
			const el = document.querySelector('#review_throw');
			el.innerHTML = '<input type=hidden name=seq value='+(${review.prevSeq})+'>';
			el.submit();
		}

		function nextContent(next) {
			if(next === '없음') {
				swal('마지막 페이지입니다.');
				return;
			}
			const el = document.querySelector('#review_throw');
			el.innerHTML = '<input type=hidden name=seq value='+(${review.nextSeq})+'>';
			el.submit();
		}

		function fixedReview() {
			swal({
				text: '비밀번호를 입력해주세요!',
				content: 'input',
				buttons: ['취소','확인']
			}).then(boo => {
				if(boo === '${review.pwd}') window.location.href = 'fixedReview.do?seq=${review.seq}';
				else swal('비밀번호가 다릅니다!');
			});
		}
		function deleteReview() {
			swal({
				text: '비밀번호를 입력해주세요!',
				content: 'input',
				buttons: ['취소','확인']
			}).then(boo => {
				if(boo === '${review.pwd}') window.location.href = 'deleteReview.do?seq=${review.seq}';
				else swal('비밀번호가 다릅니다!');
			});
		}

		function deleteReply() {
        	const seq = event.target.value;
        	const parent = event.target.parentNode.parentNode;
			const xhr = new XMLHttpRequest();

			xhr.onload = () => {
				if(xhr.status === 200) {
					swal('댓글이 삭제되었습니다!');
					parent.remove();
				}
			}

			xhr.open('POST', 'deleteReply.do',true);
			xhr.setRequestHeader('Content-type', 'application/json');

			const data = { seq: seq };
			xhr.send(JSON.stringify(data));
		}
    </script>
</body>
</html>
