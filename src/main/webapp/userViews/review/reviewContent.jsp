<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
        #review_content button{
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
            background-color: rgba(206,206,233,0.18);
            width:10%;
        }
        #review_content .review_content_head td:nth-child(2) {
            width:75%;
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
            margin:10px;
        }
        .review_content_reply div {
            display: flex;
            flex-direction: row;
            margin:10px;
        }
        .review_content_reply div input, .review_content_reply div label {
            font-size: 16px;
            font-weight: 600;
            margin-right:10px;
        }
        .review_content_reply textarea {
            margin:10px;
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
        #review_content_reply_content div p{
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
                <td>귀여움 잔뜩!</td>
                <td>2020-07-27 14:00</td>
            </tr>
            <tr>
                <td>대표이미지</td>
                <td>IMG_9507.jpg (file size 106KB)</td>
                <td>yongjuri</td>
            </tr>
        </table>
        <div class="review_content_body">
            비가오는날 `건대입구 2번출구 엔젤리너스 지하에서 메인 프로젝트 작업을 하고 있다.<br>
            대기번호 230번 영수증에는 엔젤리너스 지하의 와이파이 비밀번호가 적혀있다.<br>
            비가오는날 건대입구 2번출구 엔젤리너스 지하에서 메인 프로젝트 작업을 하고 있다.<br>
            대기번호 230번 영수증에는 엔젤리너스 지하의 와이파이 비밀번호가 적혀있다.<br>
            비가오는날 건대입구 2번출구 엔젤리너스 지하에서 메인 프로젝트 작업을 하고 있다.<br>
            대기번호 230번 영수증에는 엔젤리너스 지하의 와이파이 비밀번호가 적혀있다.<br>
            비가오는날 건대입구 2번출구 엔젤리너스 지하에서 메인 프로젝트 작업을 하고 있다.<br>
            대기번호 230번 영수증에는 엔젤리너스 지하의 와이파이 비밀번호가 적혀있다.<br>
            비가오는날 건대입구 2번출구 엔젤리너스 지하에서 메인 프로젝트 작업을 하고 있다.<br>
            대기번호 23`0번 영수증에는 엔젤리너스 지하의 와이파이 비밀번호가 적혀있다.<br>
        </div>
        <hr>
        <div class="review_content_button">
            <button>목록</button>
        </div>


        <%--  댓글  --%>
        <h3 id="review_content_reply_content_title">댓글</h3>
        <div id="review_content_reply_content"></div>

        <%--  댓글 달기  --%>
        <form action="">
            <div class="review_content_reply">
                <div>
                    <label for="review_content_reply_name">이름</label>
                    <input id="review_content_reply_name" type="text">
                    <label for="review_content_reply_pass">패스워드</label>
                    <input id="review_content_reply_pass" type="text">
                </div>
                <textarea name="" id="" cols="15" rows="5"></textarea>
                <button type="submit" id="review_content_reply_button" onclick="addReply()">댓글쓰기</button>
            </div>
        </form>

        <%-- 목차 --%>
        <table class="review_content_head review_content_prne">
            <tr>
                <td>이전</td>
                <td>귀여움 뿜뿜!</td>
                <td>2020-07-27 12:00</td>
            </tr>
            <tr>
                <td>다음</td>
                <td>세상에 존예</td>
                <td>2020-07-27 17:00</td>
            </tr>
        </table>
    </div>
    <script>
        function sendData() {
            const xhr = new XMLHttpRequest();

            xhr.open('POST', 'test.do',true);
            xhr.setRequestHeader('Content-type', 'application/json');
            const data = { seq: 3, title: 'JavaScript', writer: 'Park', cnt: 5000};
            xhr.send(JSON.stringify(data));
        }
        function addReply() {

            const name = document.querySelector('#review_content_reply_name').value;
            const pass = document.querySelector('#review_content_reply_pass').value;
            document.querySelector('#review_content_reply_content').innerHTML += `
                <div>
                    <p>`+name+` : </p>
                    <p>좋은 글 잘 봤습니다. ㅎㅎ</p>
                </div>
            `;
        }
    </script>
</body>
</html>
