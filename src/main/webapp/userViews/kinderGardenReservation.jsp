<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            width: 59%;
            text-align: center;
            /*font-size: 12px;*/

            font-weight: 600;
            color: #444;
            letter-spacing: -1px;
        }
        .education_schedule table:nth-child(1) {
            width: 37%;
        }
        .education_schedule table:nth-child(1) tbody tr td{
            padding: 13.6px 0;
        }
        .education_schedule th {
            border-top: 1px solid gray;
            /*padding: 10px;*/
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

        #education_reservation_schedule {
            display: flex;
            flex-direction: row;
            width: 80%;
            margin: 0 auto;
        }

        .kinderGarden_reservation_option button {
            cursor: pointer;
        }

        .kinderGarden_reservation_option select {
            cursor: pointer;
            width: 50%;
        }

        #reservation_confirm {
            display: flex;
            flex-direction: column;
            margin: 0 auto;
            margin-bottom: 50px;
        }

        @media all and (max-width: 810px) {
            #education_reservation_schedule {
                display: flex;
                flex-direction: column;
                width: 95%;
                margin: 0 auto;
            }
            .education_schedule table {
                margin: 30px auto;
                width: 100%;
                text-align: center;
                /*font-size: 12px;*/

                font-weight: 600;
                color: #444;
                letter-spacing: -1px;
            }
            .education_schedule table:nth-child(1) {
                width: 100%;
            }
            .education_schedule table:nth-child(1) tbody tr td{
                padding: 0;
            }
            .kinderGarden_reservation_option {
                display: flex;
                flex-direction: column;
                margin: 0 auto;
                width: 95%;
            }
            #kinder_reser_input {
                display: flex;
                flex-direction: column !important;
            }
        }

        .kinderGarden_reservation_option div {
            display: flex;
            flex-direction: row;
            justify-content: space-between;
        }

        #kinder_reser_input {
            display: flex;
            flex-direction: row;
        }
        #kinder_reser_input ul {
            width: 100%;
        }
        #kinder_reser_input ul li{
            display: flex;
            flex-direction: row;
            width: 100%;
            margin: 10px 0;
        }
        #kinder_reser_input ul li input{
            padding: 5px;
            margin-left: auto;
            margin-right: 10px;
            width: 70%;
        }
        #kinder_reser_input ul:nth-child(2) li {
            display: flex;
            flex-direction: column;
            height: 100%;
        }
        #kinder_reser_input textarea{
            padding: 5px;
            min-height: 100px;
            width: 100%;
            height: 100%;
            resize: none;
            margin-bottom: 20px;
        }

        #reservation_confirm input {
            font-family: 'noto-sans';
            line-height: 30px;
            padding: 5px;
            font-weight: 600;
            color: #555;
            letter-spacing: -1px;
            font-size: 16px;
            border: none;
        }

        #reservation_confirm input:focus {outline:none;}

        #kinder_reser_zipcode input {
            width:50%;
        }

    </style>
</head>
<body>
<img style="position:sticky;top:0;width:100%;" src="resources/img/kinderGarden/유치원 사진.jpg" alt="">
<%-- 유치원 월간 스케쥴 --%>
<div class="education_schedule">
    <div class="education_schedule_title">
        <h3>유치원 예약</h3>
    </div>
    <div id="education_reservation_schedule">
        <table>
            <thead>
            <tr>
                <th>시간</th>
                <th>교육 내용</th>
            </tr>
            </thead>
            <c:forEach var="row" items="${dayRow}">
                <tr>
                    <td>${row.time}</td>
                    <td>${row.program}</td>
                </tr>
            </c:forEach>
        </table>
        <table>
            <c:forEach items="${monthRow}" var="month" varStatus="status">
                <thead class="education_schedule_title_month">
                <tr>
                    <th>요일</th><th>월</th><th>화</th><th>수</th><th>목</th><th>금</th>
                </tr>
                </thead>
                <tbody class="education_schedule_month_tbody">
                <tr class="education_schedule_month_subTitle">
                    <td>구분</td><td></td><td></td><td>${status.count}주차</td><td></td><td></td>
                </tr>
                <tr>
                    <td>오전교육</td>
                    <td>${month.mondayAM}</td>
                    <td>${month.tuesdayAM}</td>
                    <td>${month.wednesdayAM}</td>
                    <td>${month.thursdayAM}</td>
                    <td>${month.fridayAM}</td>
                </tr>
                <tr>
                    <td>오후교육</td>
                    <td>${month.mondayPM}</td>
                    <td>${month.tuesdayPM}</td>
                    <td>${month.wednesdayPM}</td>
                    <td>${month.thursdayPM}</td>
                    <td>${month.fridayPM}</td>
                </tr>
                </tbody>
            </c:forEach>
        </table>
    </div>
    <div class="kinderGarden_reservation_option">
        <div>
            <select>
                <c:forEach items="${day}" var="day">
                    <option value="${day.formatDate} (1주일 코스) 선택">${day.formatDate} (1주일 코스) 선택</option>
                </c:forEach>
            </select>
            <select>
                <option value="픽업서비스">픽업서비스</option>
                <option value="문자알림 서비스">문자알림 서비스</option>
                <option value="픽업서비스 + 문자알림 서비스">픽업서비스 + 문자알림 서비스</option>
                <option value="선택 안함">선택 안함</option>
            </select>
        </div>
        <div id="kinder_reser_input">
            <ul>
                <li><p>보호자명:</p><input type="text" placeholder="이름" required autocomplete=off  value="${member.name}"></li>
                <li><p>반려동물:</p><input type="text" placeholder="반려동물 종" required autocomplete=off  value="먼치킨"></li>
                <li><p>반려동물 나이:</p><input type="text" placeholder="나이" required autocomplete=off  value="3살"></li>
                <li><p>전화번호:</p><input type="text" placeholder="010-0000-0000" required autocomplete=off value="${member.phone}"></li>
            </ul>
            <ul>
                <li><p>기타 반려동물 관련사항 작성 :</p><textarea type="text" placeholder="효과적인 서비스 추천을 위해 반려견 이름, 중성화 여부, 문제 행동 등 자세한 사항 작성"></textarea></li>
            </ul>
        </div>
        <button onClick="reservation()">유치원 예약</button>
    </div>
</div>

</body>
<c:if test="${member != null}">
    <script>
        const member = '${member.id}';
    </script>
</c:if>
<c:if test="${member == null}">
    <script>
        const member = 'null';
    </script>
</c:if>
<script>
    function reservation() {
        if(member === 'null') {
            alert('로그인을 먼저 해주세요!');
            return;
        }
        const course = document.querySelector('.kinderGarden_reservation_option select:nth-child(1)');
        const service = document.querySelector('.kinderGarden_reservation_option select:nth-child(2)');
        const courseValue = course.options[course.selectedIndex].value;
        const serviceValue = service.options[service.selectedIndex].value;

        const name = document.querySelector('#kinder_reser_input ul li:nth-child(1) input').value;
        const animalSpecies = document.querySelector('#kinder_reser_input ul li:nth-child(2) input').value;
        const animalAge = document.querySelector('#kinder_reser_input ul li:nth-child(3) input').value;
        const phone = document.querySelector('#kinder_reser_input ul li:nth-child(4) input').value;
        const etc = document.querySelector('#kinder_reser_input textarea').value;

        let price = 100000;

        document.querySelector('#education_reservation_schedule').innerHTML =
            ` <div id="reservation_confirm">
                    <p>예약 : `+courseValue+`</p>
                    <p>서비스 : `+serviceValue+`</p>
                    <p>보호자명 : `+name+`</p>
                    <p>반려동물 : `+animalSpecies+`</p>
                    <p>반려동물 나이 : `+animalAge+`</p>
                    <p>전화번호 : `+phone+`</p>
                    <p>이메일 : <input type="text" value="${member.email}"></p>
                    <p id="kinder_reser_zipcode">우편번호 : <input type="text" value="${member.zipcode}"></p>
                    <p>주소 : <input type="text" value="${member.address}"></p>
                    <p>기타 반려동물 관련사항 : `+etc+`</p>
                    <br>
                    <p>가격 : `+price+`원</p>
                </div> `;

        payment = {
            name : courseValue,
            price : price,
            email : '${member.email}',
            buyer_name : name,
            phone : phone,
            zipcode : '${member.zipcode}',
            address : '${member.address}',
        };

        document.querySelector('.kinderGarden_reservation_option').innerHTML =
            ` <div class="kinderGarden_reservation_option" style="flex-direction: row">
                    <button style="width:50%; background-color: #F15F5F" onClick="window.location.reload()">취소</button>
                    <button style="width:50%;" onClick="kinderPay()">결제</button>
                </div> `;
    }

    let payment = {};

    function kinderPay() {
        kakaoPay(payment,'main.do');
    }
</script>
</html>
