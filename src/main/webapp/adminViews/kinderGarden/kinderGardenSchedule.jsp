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
    </style>
</head>
<body>
    <div class="card mb-4 py-3 border-bottom-primary">
        <div class="card-body">
           유치원 시간표 관리
        </div>
    </div>
    <div>
        <div class="form-group">
            <ul class="admin_kindergarden_schedule_input">
                <li>
                    <label for="admin_kindergarden_schedule_time1">시간</label>
                    <input type="text" id="admin_kindergarden_schedule_time1" class="form-control form-control-user" placeholder="time">
                </li>
                <li>
                    <label for="admin_kindergarden_schedule_time2">교육 내용</label>
                    <input type="text" id="admin_kindergarden_schedule_time2" class="form-control form-control-user admin_kindergarden_schedule_program" placeholder="program">
                </li>
            </ul>
            <ul class="admin_kindergarden_schedule_input">
                <li>
                    <label for="admin_kindergarden_schedule_time3">시간</label>
                    <input type="text" id="admin_kindergarden_schedule_time3" class="form-control form-control-user" placeholder="time">
                </li>
                <li>
                    <label for="admin_kindergarden_schedule_time4">교육 내용</label>
                    <input type="text" id="admin_kindergarden_schedule_time4" class="form-control form-control-user admin_kindergarden_schedule_program" placeholder="program">
                </li>
            </ul>
            <ul class="admin_kindergarden_schedule_input">
                <li>
                    <label for="admin_kindergarden_schedule_time5">시간</label>
                    <input type="text" id="admin_kindergarden_schedule_time5" class="form-control form-control-user" placeholder="time">
                </li>
                <li>
                    <label for="admin_kindergarden_schedule_time6">교육 내용</label>
                    <input type="text" id="admin_kindergarden_schedule_time6" class="form-control form-control-user admin_kindergarden_schedule_program" placeholder="program">
                </li>
            </ul>
            <ul class="admin_kindergarden_schedule_input">
                <li>
                    <label for="admin_kindergarden_schedule_time7">시간</label>
                    <input type="text" id="admin_kindergarden_schedule_time7" class="form-control form-control-user" placeholder="time">
                </li>
                <li>
                    <label for="admin_kindergarden_schedule_time8">교육 내용</label>
                    <input type="text" id="admin_kindergarden_schedule_time8" class="form-control form-control-user admin_kindergarden_schedule_program" placeholder="program">
                </li>
            </ul>
            <ul class="admin_kindergarden_schedule_input">
                <li>
                    <label for="admin_kindergarden_schedule_time9">시간</label>
                    <input type="text" id="admin_kindergarden_schedule_time9" class="form-control form-control-user" placeholder="time">
                </li>
                <li>
                    <label for="admin_kindergarden_schedule_time10">교육 내용</label>
                    <input type="text" id="admin_kindergarden_schedule_time10" class="form-control form-control-user admin_kindergarden_schedule_program" placeholder="program">
                </li>
            </ul>
            <ul class="admin_kindergarden_schedule_input">
                <li>
                    <label for="admin_kindergarden_schedule_time11">시간</label>
                    <input type="text" id="admin_kindergarden_schedule_time11" class="form-control form-control-user" placeholder="time">
                </li>
                <li>
                    <label for="admin_kindergarden_schedule_time12">교육 내용</label>
                    <input type="text" id="admin_kindergarden_schedule_time12" class="form-control form-control-user admin_kindergarden_schedule_program" placeholder="program">
                </li>
            </ul>
            <ul class="admin_kindergarden_schedule_input">
                <li>
                    <label for="admin_kindergarden_schedule_time13">시간</label>
                    <input type="text" id="admin_kindergarden_schedule_time13" class="form-control form-control-user" placeholder="time">
                </li>
                <li>
                    <label for="admin_kindergarden_schedule_time14">교육 내용</label>
                    <input type="text" id="admin_kindergarden_schedule_time14" class="form-control form-control-user admin_kindergarden_schedule_program" placeholder="program">
                </li>
            </ul>
            <ul class="admin_kindergarden_schedule_input">
                <li>
                    <label for="admin_kindergarden_schedule_time15">시간</label>
                    <input type="text" id="admin_kindergarden_schedule_time15" class="form-control form-control-user" placeholder="time">
                </li>
                <li>
                    <label for="admin_kindergarden_schedule_time16">교육 내용</label>
                    <input type="text" id="admin_kindergarden_schedule_time16" class="form-control form-control-user admin_kindergarden_schedule_program" placeholder="program">
                </li>
            </ul>
        </div>
        <div class="admin_kindergarden_schedule_button">
            <a href="login.html" class="btn btn-primary btn-user ">초기화</a>
            <a href="login.html" class="btn btn-success btn-user ">적용</a>
        </div>
    </div>
</body>
</html>
