<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title></title>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="resources/style/summernote/summernote-lite.css">
<style type="text/css">
#wrap {
	display: flex;
	flex-direction: column;
	width: 60%;
	margin: auto;
}

#head {
	min-width: 60%;
	margin-top: 2%;
	margin-bottom: 2%;
	font-size: 20px;
	padding-bottom: 1%;
	border-bottom: 2px solid #FFABB9;
}

#body {
	display: flex;
	flex-direction: column;
}

#setting {
	display: flex;
	flex-direction: column;
}

.settings {
	display: flex;
	flex-direction: row;
	margin-bottom: 1.5%;
}

.leftsettings {
	display: flex;
	flex-direction: row;
	width: 40%;
}

.rightsettings {
	display: flex;
	flex-direction: row;
	width: 40%;
}

.centersettings {
	display: flex;
	flex-direction: row;
	width: 80%;
}

#title_key {
	width: 20%;
}

.keys {
	width: 33%;
}

.values {
	margin-right: 5%;
}

#title_value {
	width: 100%;
}

#title_input {
	width: 87%;
}

#body {
	margin-bottom: 2%;
}

#leg {
	display: flex;
	flex-direction: row;
	margin-bottom: 2%;
	margin-left: 75%;
	width: 100%;
}

.buttons {
	margin-right: 1.5%;
}

#content {
	display: flex;
	flex-direction: column;
}

#content_key {
	border-bottom: 2px solid #FFABB9;
	padding-bottom: 1%;
	margin-bottom: 1%;
}

#content_value {
	border-bottom: 2px solid #FFABB9;
	padding-bottom: 1%;
	margin-bottom: 1%;
}
</style>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="resources/js/summernote/summernote-lite.js"></script>
<script src="resources/js/summernote/lang/summernote-ko-KR.js"></script>
<script>

	var jqadmin = jQuery.noConflict();
	jqadmin(document).ready(function() {
		jqadmin('#summernote').summernote({
			height : 350, // 에디터 높이
			minHeight : null, // 최소 높이
			maxHeight : null, // 최대 높이
			focus : true, // 에디터 로딩후 포커스를 맞출지여부
			lang : "ko-KR" // 한글 설정
		});
	});
	function goBack() {
		window.location.href = 'event_M.mdo';
	}
	function goDelete() {
		var frm = document.mainfrom;
		frm.action = "deleteCatCareLog.do";
		frm.method = "post";
		frm.submit();
	}
</script>
</head>
<body>
	<form action="updateEvent_M.mdo" method="GET">
		<input type="hidden" name="EVENT_NO" value="${eventInfo.EVENT_NO}">
		<div id="wrap">
			<div id="head">
				<h1>이벤트 공지사항</h1>
			</div>
			<div id="body">
				<div id="setting">
					<div id="setting1" class="settings">
						<div class="leftsettings">
							<div class="keys">
								<p>글 번호</p>
							</div>
							<div class="values">${eventInfo.EVENT_NO}</div>
						</div>
						<div class="leftsettings">
							<div class="keys">
								<p>진행중 마감</p>
							</div>
							<div class="values">${eventInfo.EVENT_STATUS}</div>
						</div>
					</div>
					<div id="setting2" class="settings">
						<div class="leftsettings">
							<div class="keys">
								<p>기간 시작</p>
							</div>
							<div class="values">${eventInfo.EVENT_START}</div>
						</div>
						<div class="rightsettings">
							<div class="keys">
								<p>기간 종료</p>
							</div>
							<div class="values">${eventInfo.EVENT_END}</div>
						</div>
					</div>
					<div id="setting3" class="settings">
						<div class="leftsettings">
							<div class="keys">
								<p>작성일</p>
							</div>
							<div class="values"></div>
						</div>
						<div class="rightsettings">
							<div class="keys">
								<p>최종 수정일</p>
							</div>
							<div class="values"></div>
						</div>
					</div>
					<br />
					<div id="setting5" class="settings">
						<div class="centersettings">
							<div class="keys" id="title_key">
								<h1>제목</h1>
							</div>
							<div class="values" id="title_value">
								<h1>${eventInfo.EVENT_TITLE}</h1>
							</div>
						</div>
					</div>
				</div>
				<div id="content">
					<div id="content_key"></div>
					<div id="content_value">
						<br> ${eventInfo.EVENT_CONTENT} <br>
					</div>
				</div>
				<!-- end content -->
			</div>
			<!-- end body -->
			<div id="leg">
				<input type="submit" value="글 수정" class="buttons" /> <input
					type="button" value="글 삭제" class="buttons" onclick="goDelete()" />
				<input type="button" value="목록 으로" class="buttons"
					onclick="goBack()" />
			</div>
			<!-- end foot -->
		</div>
		<!-- end wrap -->
	</form>
</body>
</html>

