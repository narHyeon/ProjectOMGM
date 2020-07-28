<%--
  Created by IntelliJ IDEA.
  User: Jury
  Date: 2020-07-28
  Time: 오후 2:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Summernote</title>
    <meta charset="UTF-8">
</head>
<body>
<div id="summernote">Hello Summernote</div>

<%--  섬머노트  --%>
<script src="resources/js/summernote/summernote-lite.js"></script>
<script src="resources/js/summernote/lang/summernote-ko-KR.js"></script>

<link rel="stylesheet" href="resources/style/summernote/summernote-lite.css">



<script>
    $(document).ready(function() {
        //여기 아래 부분
        $('#summernote').summernote({
            height: 300,                 // 에디터 높이
            minHeight: null,             // 최소 높이
            maxHeight: null,             // 최대 높이
            focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
            lang: "ko-KR",               // 한글 설정
            placeholder: '최대 2048자까지 쓸 수 있습니다'   //placeholder 설정

        });
    });
</script>
</body>
</html>
