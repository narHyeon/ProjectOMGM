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
    <link rel="stylesheet" href="resources/style/reset.css">
    <link rel="stylesheet" href="resources/style/reviewWrite.css">
</head>
<body>
<h2>글 작성</h2><br><br><br>

<div id="review_write">
    <form method="post" action="/write">
        <input id="title" type="text" name="title" placeholder="제목"/>
        <br><br>
        <textarea id="summernote" name="content"></textarea>
        <input id="writebtn" type="button"  value="글 작성" onclick="goWrite(this.form)"/>
    </form>
</div>

	<%--  섬머노트  --%>
	<script src="resources/js/summernote/summernote-lite.js"></script>
	<script src="resources/js/summernote/lang/summernote-ko-KR.js"></script>


<link rel="stylesheet" href="resources/style/summernote/summernote-lite.css">
<%-- <script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>--%>

<script>
    $(document).ready(function() {
        //여기 아래 부분
        $('#summernote').summernote({
            height: 400,                 // 에디터 높이
            minHeight: null,             // 최소 높이
            maxHeight: null,             // 최대 높이
            focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
            lang: "ko-KR",               // 한글 설정
            placeholder: '최대 2048자까지 쓸 수 있습니다',   //placeholder 설정
            callbacks : {
                onImageUpload : function(files, editor, welEditable) {
                    for (var i = 0; i < files.length; i++) {
                        sendFile(files[i], this);
                    }
                }
            }
        });
    });

    function sendFile(file, el) {
        var form_data = new FormData();
        form_data.append('uploadFile', file);
        $.ajax({
            data : form_data,
            type : "POST",
            url : '/upload.do',
            cache : false,
            contentType : false,
            enctype : 'multipart/form-data',
            processData : false,
            success : function(url) {
                $(el).summernote('insertImage', url, function($image) {
                    $image.css('width', "25%");
                });
            }
        });
    }
</script>
</body>
</html>
