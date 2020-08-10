<%--
  Created by IntelliJ IDEA.
  User: Jury
  Date: 2020-07-28
  Time: 오후 2:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Summernote</title>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="resources/style/summernote/summernote-lite.css">

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="resources/js/summernote/summernote-lite.js"></script>
<script src="resources/js/summernote/lang/summernote-ko-KR.js"></script>
<script>
    $(document).ready(function() {
        $('#summernote').summernote({
            height: 400,                 // 에디터 높이
            minHeight: null,             // 최소 높이
            maxHeight: null,             // 최대 높이
            focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
            lang: "ko-KR",               // 한글 설정
            placeholder: '최대 2048자까지 쓸 수 있습니다'   //placeholder 설정

        });
    });
</script>
</head>
<body>
	<h2
		style="text-align: center; padding-top: 50px; font-size: 25px; color: #F28888; font-weight: bold;">글작성</h2>
	<br>
	<br>
	<br>
	<div style="width: 60%; margin: auto;">
		<form method="post" action="/write">
			<input style="width: 100%; height: 30px;" type="text" name="title"
				placeholder="제목" /> <br> <br>
			<textarea id="summernote" name="content"></textarea>
			<input
				style="float: right; padding: 4px 13px; background-color: #F28888; border: none; color: white; font-weight: bold;"
				type="button" value="글 작성" onclick="goWrite(this.form)" />
		</form>
	</div>

</body>
</html>