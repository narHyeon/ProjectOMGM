<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>채팅 서비스</title>
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

    <!-- 부가적인 테마 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

    <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
    <%--    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>--%>


</head>
<body>
<input  style="margin-top:70px;" type="text" id="nickname" class="form-inline" placeholder="닉네임을 입력해주세요" required autofocus>
<button class = "btn btn-primary" id = "name">확인</button>
<div id = "chatroom" style = "width:400px; height: 300px; border:1px solid; background-color : gray"></div>
<input type = "text" id = "message" style = "height : 30px; width : 340px" placeholder="내용을 입력하세요" autofocus>
<button class = "btn btn-primary" id = "send">전송</button>

<script>
    var webSocket;
    var nickname;
    document.getElementById("name").addEventListener("click", function(){
        nickname = document.getElementById("nickname").value;
        document.getElementById("nickname").style.display="none";
        document.getElementById("name").style.display="none";
        connect();
    })
    document.getElementById("send").addEventListener("click",function(){
        send();
    })
    function connect(){
        webSocket = new WebSocket("ws://ec2-52-78-159-138.ap-northeast-2.compute.amazonaws.com/OMGM/chat.lo");
        webSocket.onopen = onOpen;
        webSocket.onclose = onClose;
        webSocket.onmessage = onMessage;

    }
    function disconnect(){
        webSocket.send(nickname + "님이 퇴장하셨습니다");
        webSocket.close();
    }
    function send(){
        console.log(webSocket.readyState);
        msg = document.getElementById("message").value;
        webSocket.send(nickname + " : " + msg);
        document.getElementById("message").value = "";
    }
    function onOpen(){
        console.log(webSocket.readyState);

        webSocket.send(nickname + "님이 입장하셨습니다.");
    }
    function onMessage(e){
        data = e.data;
        chatroom = document.getElementById("chatroom");
        chatroom.innerHTML = chatroom.innerHTML + "<br>" + data;
    }
    function onClose(){
        console.log('접속 끊켰다');
    }
</script>
</body>
</html>
