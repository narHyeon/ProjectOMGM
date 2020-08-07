<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        <%--   교육 시간표    --%>
        .education_schedule {
            margin: 50px 0;
            font-family: 'noto-sans';
            line-height: 30px;
            text-align: center;
            display: flex;
            flex-direction: column;

            font-weight: 600;
            color: #555;
            letter-spacing: -1px;
        }
        .education_schedule_title {
            margin: 20px;
            font-size: 26px;
        }
        .education_schedule table {
            margin: 30px auto;
            width: 80%;
            text-align: center;
            /*font-size: 12px;*/

            font-weight: 600;
            color: #444;
            letter-spacing: -1px;
        }
        .education_schedule th {
            border-top: 1px solid gray;
            padding: 10px;
            background-color: #F28888;
            font-size: 13px;
        }
        .education_schedule tr {
            border-bottom: 1px solid gray;
        }
        .education_schedule tr td{
            /*padding: 10px;*/
            font-size: 12px;
        }

        <%--   월간 스케쥴    --%>
        .education_schedule_month_subTitle {
            background-color: pink;
        }

    /*  버튼 옵션 관련  */
        .kinderGarden_reservation_option {
            display: flex;
            flex-direction: column;
            margin: 0 auto;
            width: 80%
        }
        .kinderGarden_reservation_option select {
            width: 100%;
            height: 50px;
        }
        .kinderGarden_reservation_option button {
            width: 100%;
            height: 50px;
            border: none;
            background-color: #2b91c8;
            color: white;
        }
    </style>
</head>
<body>
<%-- 유치원 월간 스케쥴 --%>
<div class="education_schedule">
    <div class="education_schedule_title">
        <h3>유치원 예약</h3>
    </div>
    <table>
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
        <tbody class="education_schedule_month_tbody"></tbody>
    </table>
    <div class="kinderGarden_reservation_option">
        <select>
            <option value="">1주차</option>
            <option value="">2주차</option>
            <option value="">3주차</option>
            <option value="">4주차</option>
        </select>
        <select>
            <option value="">오전</option>
            <option value="">오후</option>
            <option value="">오전/오후</option>
        </select>
        <button>유치원 예약</button>
    </div>
</div>
<script>
    document.addEventListener("DOMContentLoaded", function(){
        for(let i=1; i<=4; i++) {
            document.querySelector('.education_schedule_month_tbody').innerHTML +=
                '<tr  class="education_schedule_month_subTitle">\n' +
                '                    <td>구분</td>\n' +
                '                    <td></td>\n' +
                '                    <td></td>\n' +
                '                    <td>'+i+'주차</td>\n' +
                '                    <td></td>\n' +
                '                    <td></td>\n' +
                '                </tr>\n' +
                '                <tr>\n' +
                '                    <td>오전수업</td>\n' +
                '                    <td>맞춤교육</td>\n' +
                '                    <td>하우스</td>\n' +
                '                    <td>목줄/하네스</td>\n' +
                '                    <td>장난감 놀이</td>\n' +
                '                    <td>타겟</td>\n' +
                '                </tr>\n' +
                '                <tr>\n' +
                '                    <td>오후교육</td>\n' +
                '                    <td>맞춤교육</td>\n' +
                '                    <td>바디터치</td>\n' +
                '                    <td>기다려</td>\n' +
                '                    <td>스킨쉽</td>\n' +
                '                    <td>산책매너</td>\n' +
                '                </tr> ';
        };
    });
</script>
</body>
</html>