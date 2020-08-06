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

        .admin_kindergarden_schedule_program {
            width: 750px;
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
    </style>
    <script src="resources/admin/js/kinderGarden/kinderGardenSchedule.js" defer></script>
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
            <button class="btn btn-primary btn-user" onClick="plusTime()">+</button>
            <button class="btn btn-danger btn-user" onClick="minusTime()">-</button>
        </div>
        <div class="admin_kindergarden_schedule_button">
            <a href="login.html" class="btn btn-info btn-user ">초기화</a>
            <a href="login.html" class="btn btn-success btn-user ">적용</a>
        </div>
    </div>
</body>
</html>
