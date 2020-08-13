<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">

</head>
<body>
<input type="text" id="msg" />
<input type="button" id="btnSend" value="submit"/>
<div id="messageArea"></div>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.1.5/sockjs.min.js"></script>
<script type="text/javascript">
    var ws = new WebSocket("ws://localhost:8080/echo.lo");


    ws.onopen = function () {
        console.log('Info: connection opened.');
        setTimeout( function(){ connect(); }, 1000); // retry connection!!
    };


    ws.onmessage = function (event) {
        console.log(event.data+'\n');
    };


    ws.onclose = function (event) { console.log('Info: connection closed.'); };
    ws.onerror = function (event) { console.log('Info: connection closed.'); };

    $('#btnSend').on('click', function(evt) {
        evt.preventDefault();
        if (socket.readyState !== 1) return;
        let msg = $('input#msg').val();
        ws.send(msg);
    });

</script>
</body>
</html>
