<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<c:forEach items="${result}" var="item">
    ${item}
</c:forEach>

<button onclick="goo()">전송</button>
<script>
    function goo() {
        window.location.href = '${google_url}';
    }
</script>
</body>
</html>
