<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title></title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="resources/style/summernote/summernote-lite.css">
    <link rel="stylesheet" href="resources/style/review/reviewWrite.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="resources/js/summernote/summernote-lite.js"></script>
    <script src="resources/js/summernote/lang/summernote-ko-KR.js"></script>
    <style>
        h2{
            text-align: center;
            padding-top:50px;
            font-size:25px;
            color: #F28888;
            font-weight:bold;
        }

        #review_write{
            width: 60%;
            margin: auto;
        }

        #title{
            width: 100%;
            height:30px;
        }

        #writebtn{
            float: right;
            padding: 7px 15px;
            background-color: #F28888;
            border: none;
            color:white;
            font-weight:bold;
            margin-bottom: 70px;
        }

    </style>
    <script>
        $(document).ready(function() {
            $('#summernote').summernote({
                height : 400, // 에디터 높이
                minHeight : null, // 최소 높이
                maxHeight : null, // 최대 높이
                focus : true, // 에디터 로딩후 포커스를 맞출지 여부
                lang : "ko-KR", // 한글 설정
                placeholder : '최대 2048자까지 쓸 수 있습니다' //placeholder 설정
            });
            $('#summernote').summernote('code', '${careInfo.CATCARELOG_CONTNET}');
        });
        function goBack() {
            window.history.go(-1);
        }
    </script>
</head>
<body>

<h2>글작성</h2><br><br><br>

<div id="review_write">
<form method="post" action="insertReviewBoard.do">
    <input type="hidden" name="id" placeholder="ID" value="${member.id}"/>
        <input id="title" type="text" name="title" placeholder="제목"/>
        <br><br>
    <div id="content">
        <textarea id="summernote" name="content"></textarea>
    </div><!-- end content -->
    <button id="writebtn" type="submit">글 작성</button>

</form>
</div>
</body>
</html>