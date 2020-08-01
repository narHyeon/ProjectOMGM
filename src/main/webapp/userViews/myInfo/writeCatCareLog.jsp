<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Summernote</title>
<meta charset="UTF-8">
<link rel="stylesheet"	href="resources/style/summernote/summernote-lite.css">
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
	<div style="width: 60%; margin: auto;">
		<form method="post" action="writeReView.do">
			<div>
			제목 <input type="text" name="title"/>
			</div>
			<div>
			작성자 <input type="text" name="writer"/>
			</div>
			<textarea id="summernote" name="content"></textarea>
			<input type="submit" value="글 작성"/>
		</form>
	</div>
</body>
</html>