<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        .admin_kindergarden_schedule_button {
            display: flex;
            flex-direction: row;
        }
        .admin_kindergarden_schedule_button a {
            margin: 5px;
            width:50%;
        }
        .admin_kindergarden_schedule_input {
            display: flex;
            flex-direction: row;
        }
        .admin_kindergarden_schedule_input li {
            width: 47%;
            display: flex;
            flex-direction: row;
            margin:10px;
            text-align: center;
        }
        .admin_kindergarden_schedule_input li label {
            margin: 0 10px;
            width: 100px;
            align-self: center;
        }

        .admin_kindergarden_schedule_time {
            width: 70%;
        }

        .admin_kindergarden_schedule_program {
            /*width: 60%;*/
        }
        .card-body {
            font-size: 150%;
        }
        .admin_kindergarden_schedule_pm {
            text-align: right;
            margin: 5px;
        }
        .admin_kindergarden_schedule_pm button {
            max-height: 38px;
            width:7%;
            font-size: 18px;
            font-weight: 700;
        }
        .admin_kindergarden_schedule_pm input {
            display: inline;
            position: relative;
            right: 10%;
            width: 50%;
        }
    </style>
</head>
<body>
    <div class="card mb-4 py-3 border-bottom-info">
        <div class="card-body">
           유치원 시간표 관리
        </div>
    </div>
    <div>
        <div class="form-group" id="admin_kindergarden_schedule_day">
        <%--  자바스크립트로 넣어준다.  --%>
        </div>
        <div class="admin_kindergarden_schedule_pm">
            <input id="admin_kindergarden_schedule_title" type="text" placeholder="저장할 이름을 입력" class="form-control form-control-user" value="${day.title}">
            <button class="btn btn-primary btn-user" onClick="plusTime()">+</button>
            <button class="btn btn-danger btn-user" onClick="minusTime()">-</button>
        </div>
        <div class="admin_kindergarden_schedule_button">
            <a href="#" class="btn btn-info btn-user" onclick="window.location.reload()">초기화</a>
            <a href="#" class="btn btn-success btn-user" onClick="addSchedule()">적용</a>
        </div>
    </div>
    <script src="resources/admin/js/kinderGarden/kinderGardenSchedule.js"></script>
    <c:if test="${day != null}">
        <c:forEach items="${dayRow}" var="row">
            <script>
                plusTime('${row.time}','${row.program}'); // 컬럼 추가
            </script>
        </c:forEach>
    </c:if>
</body>
</html>
