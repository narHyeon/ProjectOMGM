<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        .card-body {
            font-size: 150%;
        }
        .admin_kindergarden_schedule_button {
            display: flex;
            flex-direction: row;
        }
        .admin_kindergarden_schedule_button a {
            margin: 5px;
            width:50%;
        }
        .admin_kindergarden_schedule_month {
            display: flex;
            flex-direction: column;
        }

        .admin_kindergarden_schedule_month tr {
            display: flex;
            flex-direction: row;
            justify-content: space-around;
            text-align: center;
            margin: 10px auto;
        }
        .education_schedule_month_subTitle th, .education_schedule_month_subTitle td {
            width: 100px;
        }
        .education_schedule_month_subTitle td input {
            margin: 0;
        }
    </style>
</head>
<body>
<div class="card mb-4 py-3 border-bottom-primary">
    <div class="card-body">
        유치원 달력 관리
    </div>
</div>
<div>
    <div class="form-group">
        <table class="admin_kindergarden_schedule_month">
            <thead class="education_schedule_title_month">
                <tr>
                    <th>요일</th>
                    <th>월</th>
                    <th>화</th>
                    <th>수</th>
                    <th>목</th>
                    <th>금</th>
                </tr>
            </thead>
            <tbody class="education_schedule_month_tbody">
                <tr class="education_schedule_month_subTitle">
                    <td>구분</td>
                    <td></td>
                    <td></td>
                    <td>1주차</td>
                    <td></td>
                    <td></td>
                </tr>
                <tr class="education_schedule_month_subTitle">
                    <td>오전수업</td>
                    <td><input type="text" class="form-control form-control-user" placeholder="program"></td>
                    <td><input type="text" class="form-control form-control-user" placeholder="program"></td>
                    <td><input type="text" class="form-control form-control-user" placeholder="program"></td>
                    <td><input type="text" class="form-control form-control-user" placeholder="program"></td>
                    <td><input type="text" class="form-control form-control-user" placeholder="program"></td>
                </tr>
                <tr class="education_schedule_month_subTitle">
                    <td>오후수업</td>
                    <td><input type="text" class="form-control form-control-user" placeholder="program"></td>
                    <td><input type="text" class="form-control form-control-user" placeholder="program"></td>
                    <td><input type="text" class="form-control form-control-user" placeholder="program"></td>
                    <td><input type="text" class="form-control form-control-user" placeholder="program"></td>
                    <td><input type="text" class="form-control form-control-user" placeholder="program"></td>
                </tr>
                <tr class="education_schedule_month_subTitle">
                    <td>구분</td>
                    <td></td>
                    <td></td>
                    <td>2주차</td>
                    <td></td>
                    <td></td>
                </tr>
                <tr class="education_schedule_month_subTitle">
                    <td>오전수업</td>
                    <td><input type="text" class="form-control form-control-user" placeholder="program"></td>
                    <td><input type="text" class="form-control form-control-user" placeholder="program"></td>
                    <td><input type="text" class="form-control form-control-user" placeholder="program"></td>
                    <td><input type="text" class="form-control form-control-user" placeholder="program"></td>
                    <td><input type="text" class="form-control form-control-user" placeholder="program"></td>
                </tr>
                <tr class="education_schedule_month_subTitle">
                    <td>오후수업</td>
                    <td><input type="text" class="form-control form-control-user" placeholder="program"></td>
                    <td><input type="text" class="form-control form-control-user" placeholder="program"></td>
                    <td><input type="text" class="form-control form-control-user" placeholder="program"></td>
                    <td><input type="text" class="form-control form-control-user" placeholder="program"></td>
                    <td><input type="text" class="form-control form-control-user" placeholder="program"></td>
                </tr>
                <tr class="education_schedule_month_subTitle">
                    <td>구분</td>
                    <td></td>
                    <td></td>
                    <td>3주차</td>
                    <td></td>
                    <td></td>
                </tr>
                <tr class="education_schedule_month_subTitle">
                    <td>오전수업</td>
                    <td><input type="text" class="form-control form-control-user" placeholder="program"></td>
                    <td><input type="text" class="form-control form-control-user" placeholder="program"></td>
                    <td><input type="text" class="form-control form-control-user" placeholder="program"></td>
                    <td><input type="text" class="form-control form-control-user" placeholder="program"></td>
                    <td><input type="text" class="form-control form-control-user" placeholder="program"></td>
                </tr>
                <tr class="education_schedule_month_subTitle">
                    <td>오후수업</td>
                    <td><input type="text" class="form-control form-control-user" placeholder="program"></td>
                    <td><input type="text" class="form-control form-control-user" placeholder="program"></td>
                    <td><input type="text" class="form-control form-control-user" placeholder="program"></td>
                    <td><input type="text" class="form-control form-control-user" placeholder="program"></td>
                    <td><input type="text" class="form-control form-control-user" placeholder="program"></td>
                </tr>
                <tr class="education_schedule_month_subTitle">
                    <td>구분</td>
                    <td></td>
                    <td></td>
                    <td>4주차</td>
                    <td></td>
                    <td></td>
                </tr>
                <tr class="education_schedule_month_subTitle">
                    <td>오전수업</td>
                    <td><input type="text" class="form-control form-control-user" placeholder="program"></td>
                    <td><input type="text" class="form-control form-control-user" placeholder="program"></td>
                    <td><input type="text" class="form-control form-control-user" placeholder="program"></td>
                    <td><input type="text" class="form-control form-control-user" placeholder="program"></td>
                    <td><input type="text" class="form-control form-control-user" placeholder="program"></td>
                </tr>
                <tr class="education_schedule_month_subTitle">
                    <td>오후수업</td>
                    <td><input type="text" class="form-control form-control-user" placeholder="program"></td>
                    <td><input type="text" class="form-control form-control-user" placeholder="program"></td>
                    <td><input type="text" class="form-control form-control-user" placeholder="program"></td>
                    <td><input type="text" class="form-control form-control-user" placeholder="program"></td>
                    <td><input type="text" class="form-control form-control-user" placeholder="program"></td>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="admin_kindergarden_schedule_button">
        <a href="login.html" class="btn btn-primary btn-user ">초기화</a>
        <a href="login.html" class="btn btn-success btn-user ">적용</a>
    </div>
</div>
</body>
</html>
