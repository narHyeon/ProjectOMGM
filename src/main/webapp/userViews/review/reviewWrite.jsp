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
    <link rel="stylesheet" href="resources/style/review/reviewWrite.css">
</head>
<body>
<h2>글 작성</h2><br><br><br>

<div id="review_write">
    <form method="post" action="insertReviewBoard.do">
        <input type="text" name="id" placeholder="ID"/>
        <input id="title" type="text" name="title" placeholder="제목"/>
        <br><br>
        <textarea id="summernote" name="content"></textarea>
        <button id="writebtn" type="submit">글 작성</button>
<%--        <input id="writebtn" type="button"  value="글 작성" onclick="goWrite(this.form)"/>--%>
    </form>
</div>

	<%--  섬머노트  --%>
	<script src="resources/js/summernote/summernote-lite.js"></script>
	<script src="resources/js/summernote/lang/summernote-ko-KR.js"></script>


<link rel="stylesheet" href="resources/style/summernote/summernote-lite.css">

<script>

    // 서머노트 초기화
    $('#summernote').val("${board_data.BOARD_CONTENT}");
    $('#summernote').summernote({
        placeholder: '최대 500자 작성 가능합니다.',
        height: 300,
        lang: 'ko-KR',
        callbacks: {
            onImageUpload: function(files, editor, welEditable) {
                for(var i = files.length -1; i>=0; i--) {
                    sendFile(files[i], this);
                }
            }
        }
    });

        //여기 아래 부분
        $('#summernote').summernote({
            height: 400,                 // 에디터 높이
            minHeight: null,             // 최소 높이
            maxHeight: null,             // 최대 높이
            focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
            lang: "ko-KR",               // 한글 설정
            placeholder: '최대 2048자까지 쓸 수 있습니다',   //placeholder 설정
            callbacks: {	//여기 부분이 이미지를 첨부하는 부분
                onImageUpload: function (files) {
                    uploadSummernoteImageFile(files[0], this);
                }
            }
        });


        /**
         * 이미지 파일 업로드
         */
        function uploadSummernoteImageFile(file, editor) {
            data = new FormData();
            data.append("file", file);
            $.ajax({
                data : data,
                type : "POST",
                url : "/uploadSummernoteImageFile",
                contentType : false,
                processData : false,
                success : function(data) {
                    //항상 업로드된 파일의 url이 있어야 한다.
                    $(editor).summernote('insertImage', data.url);
                }
            });
        }
        $("#summernote").on('drop',function(e){
            for(i=0; i< e.originalEvent.dataTransfer.files.length; i++){
                uploadSummernoteImageFile(e.originalEvent.dataTransfer.files[i],$("#summernote")[0]);
            }
            e.preventDefault();
        })


</script>
</body>
</html>
