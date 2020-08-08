<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
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
            width: 25%;
        }
        #admin_kindergarden_schedule_date {
            margin-left: 8px;
            width: 25%;
        }
        #kinder_dropdown {
            background-color:deepskyblue;
            font-weight: 0;
            display: inline;
            position: relative;
            left: -18.1%;
            width: 15%;
            font-size: 16px;
        }
    </style>
</head>
<body>
<div class="card mb-4 py-3 border-bottom-info">
    <div class="card-body">
        유치원 달력 관리
    </div>
</div>
<div>
    <div class="form-group">
        <table class="admin_kindergarden_schedule_month">
        <%--  자바스크립트로 넣어줄 부분  --%>
        </table>
    </div>
    <div class="admin_kindergarden_schedule_pm">
        <button id="kinder_dropdown" class="btn btn-primary btn-user" onClick="window.location.href = 'kinderGardenSchedule.mdo?seq=${day.seq - 1}';">이전 시간표</button>
        <input id="admin_kindergarden_schedule_title" type="text" placeholder="저장할 이름을 입력" class="form-control form-control-user" value="${day.title}">
        <input id="admin_kindergarden_schedule_date" type="text" class="form-control form-control-user" value="날짜 : ${day.regDate}" disabled>
        <button class="btn btn-primary btn-user" onClick="plusMonth()">+</button>
        <button class="btn btn-danger btn-user" onClick="minusMonth()">-</button>
    </div>
    <div class="admin_kindergarden_schedule_button">
        <a href="login.html" class="btn btn-info btn-user ">초기화</a>
        <a href="login.html" class="btn btn-success btn-user ">적용</a>
    </div>
</div>
<script>
    for(let i=0;i<4;i++) {
        document.querySelector('.admin_kindergarden_schedule_month').innerHTML +=
            `
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
            </tbody>
            `;
    }
</script>
</body>
</html>
