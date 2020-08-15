<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
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

        #review_title{
            width: 100%;
            height:30px;
        }

        .review_write_button{
            float: right;
            width: 80px;
            background-color: pink;
            color: white;
            border: 1px solid #cb5e6b;
            height: 33px;
            font-weight: 600;
            margin: 10px 0 50px 5px;
        }

        .review_write_button:hover {
            cursor: pointer;
            background-color: #cb5e6b;
        }

        #reviewPwd{
            width: 30%;
            height:30px;
        }
    </style>
    <script language="JavaScript">

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

        const actionForm = document.getElementById("reviewWrite");
        const review_login = document.getElementById("login_id");

        if('${member.id}' === "") {
            alert("로그인이 필요한 서비스입니다.");
            location.replace("reviewListBoard.do");
        } else if('#reviewPwd' === "") {
            alert("비밀번호를 입력해주세요.");
        }

        function writeReview() {
            const pwd = document.querySelector(`#reviewPwd`);
            const title = document.querySelector(`#review_title`);
            const content = document.querySelector(`#summernote`);
            if(pwd.value === '') return false;
            if(title.value === '') return false;
            if(content.value === '') {
                alert('내용을 작성해주세요!')
                return false;
            }
            return true;
        }

    </script>
</head>
<body>

<h2>글수정</h2><br><br><br>

<div id="review_write">
    <form method="post" id="reviewWrite" action="insertReviewBoard.do" name="forms" onsubmit="return writeReview()">
        <span id=review_box><input type="password"  name="pwd"  id="reviewPwd" placeholder="비밀번호를 입력해주세요." required/></span>
        <br><br>
        <input type="hidden" name="id"  id="login_id" placeholder="ID" value="${member.id}"/>
            <input id="review_title" type="text" name="title" placeholder="제목" required value="${vo.title}"/>
            <br><br>
        <div id="review_content">
            <textarea id="summernote" name="review_content">${vo.content}</textarea>
        </div><!-- end content -->
        <button class="review_write_button" type="button" onclick="window.location.href = 'reviewListBoard.do';">목록으로</button>
        <button class="review_write_button" type="submit">글 수정</button>

    </form>
</div>
</body>
</html>
