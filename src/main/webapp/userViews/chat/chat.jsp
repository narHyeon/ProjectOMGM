<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<input type="text" id="msg">
<button id="btnSend">클릭</button>

<script>
    var ws = new WebSocket("ws://localhost:8080/echo");

    ws.onopen = function () {
        console.log('Info: connection opened.');
        setTimeout( function(){ connect(); }, 1000); // retry connection!!
    };

    ws.onmessage = function (event) {
        console.log(event.data+'\n');
    };

    ws.onclose = function (event) { console.log('Info: connection closed.'); };
    ws.onerror = function (err) { console.log('Info: error'); };

    document.querySelector('#btnSend').addEventListener('click', function(evt) {
        evt.preventDefault();
        if (socket.readyState !== 1) return;
        let msg = document.querySelector('#msg').value;
        ws.send(msg);
    });

</script>
</body>
</html>
