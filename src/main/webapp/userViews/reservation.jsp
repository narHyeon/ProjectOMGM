<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<title>Title</title>
<style type="text/css">
#reservation {
	display: flex;
	flex-direction: column;
	text-align: center;
	padding: 1px;
	align-items: stretch;
	margin: 70px 0;
}

#reservation h1 {
	color: black;
	margin: 30px;
	font-size: 26px;
}

#reservation .reservation_content {
	display: flex;
	flex-direction: row;
	align-items: center;
	justify-content: space-around;
}

#calendar {
	display: flex;
	flex-direction: column;
	min-width: 35%;
}

#reservation h3 {
	color: black;
	margin: 30px;
	font-size: 21px;
}

#calendar #calendar_table {
	margin: 0 auto;
	/*border-radius: 8px;!*모서리 둥글게*!*/
	color: black;
}

#calendar table td {
	vertical-align: middle;
	width: 70px;
	height: 70px;
	text-align: center;
	font-size: 20px;
	font-family: 'noto-sans';
	/*border-radius: 8px;!*모서리 둥글게*!*/
	/*background-color: skyblue;*/
}

#calendar table tr:nth-child(1) td, #calendar table tr:nth-child(2) td {
	background-color: #2b91c8;
	color: white;
}

/*  방 정보  */
#reser_room_info #room_select {
	display: flex;
	flex-direction: row;
	list-style: none;
	flex-wrap: wrap;
}

#reser_room_info #room_select ul {
	display: flex;
	flex-direction: row;
	justify-content: space-around;
	/*flex-wrap: wrap;*/
	margin: 0 auto;
	padding: 0;
}

#reser_room_info #room_select li {
	display: flex;
	flex-direction: column;
	padding: 20px;
}

#reser_room_info #room_select li img {
	width: 100%;
}

#reser_room_info #room_select li p {
	margin-top: 10px;
}

#reser_room_info #room_select li p::after {
	content: ' *예약 가능*';
	color: #2ecc71;
}

#reser_room_info select {
	width: 95%;
	height: 50px;
}

#reser_room_info input {
	width: 95%;
	height: 50px;
	background-color: white;
	border: none;
}

#reser_room_info button {
	width: 95%;
	height: 50px;
	color: white;
	background-color: #2b91c8;
	box-shadow: none;
	border: none;
	margin-bottom: 50px;
}

/* 모바일 환경 */
@media all and (max-width:960px) {
	#reservation .reservation_content {
		display: flex;
		flex-direction: column;
		align-items: center;
		justify-content: space-around;
	}
	#reser_room_info #room_select ul {
		display: flex;
		flex-direction: row;
		flex-wrap: wrap;
	}
	#reser_room_info #room_select ul li {
		padding: 20px;
		width: 40%;
	}
	#reser_room_info #room_select ul li img {
		margin: 0 auto;
	}
}

/*  사료 선택  */
#feed_select {
	display: flex;
	flex-direction: column;
}

#feed_select ul {
	display: flex;
	flex-direction: row;
	justify-content: space-around;
}

#feed_select ul li {
	margin: 20px;
}

#feed_select select {
	margin-top: 20px;
}

#feed_select ul li img {
	max-width: 250px;
	width: 100%;
}

#feed_button {
	display: flex;
	flex-direction: row;
	width: 95%;
	margin: 0 auto;
}

#reser_pickup ul {
	display: flex;
	flex-direction: column;
}

#reser_pickup ul li {
	display: flex;
	flex-direction: row;
	margin: 25px;
}

#reser_pickup ul li select {
	margin: 0;
	height: 30px;
	width: 300px;
}

#reser_pickup ul li input {
	border: 1px solid gray;
	height: 30px;
	width: 300px;
}

#reser_pickup ul li p {
	align-self: center;
	width: 100px;
}
</style>
</head>
<body>
	<div id="reservation">
		<h1>예약 페이지</h1>
		<div class="reservation_content">
			<div id="calendar">
				<!--            <h3>예약</h3>-->
				<table id="calendar_table">
					<tr>
						<!-- label은 마우스로 클릭을 편하게 해줌 -->
						<td onclick="prevCalendar()"><label><</label></td>
						<td id="calendar_table_ym" colspan="5">yyyy년 m월</td>
						<td onclick="nextCalendar()"><label>></label></td>
					</tr>
					<tr>
						<td>일</td>
						<td>월</td>
						<td>화</td>
						<td>수</td>
						<td>목</td>
						<td>금</td>
						<td>토</td>
					</tr>
				</table>
			</div>
			<div id="reser_room_info">
				<h3>방 정보</h3>
				<div id="room_select">
					<ul>
						<li><img src="resources/img/main_image.jpg" alt="">
							<p>
								1방 정보<br>
							</p></li>
						<li><img src="resources/img/main_image.jpg" alt="">
							<p>
								2방 정보<br>
							</p></li>
						<li><img src="resources/img/main_image.jpg" alt="">
							<p>
								3방 정보<br>
							</p></li>
						<li><img src="resources/img/main_image.jpg" alt="">
							<p>
								4방 정보<br>
							</p></li>
					</ul>
					<ul>
						<li><img src="resources/img/main_image.jpg" alt="">
							<p>
								5방 정보<br>
							</p></li>
						<li><img src="resources/img/main_image.jpg" alt="">
							<p>
								6방 정보<br>
							</p></li>
						<li><img src="resources/img/main_image.jpg" alt="">
							<p>
								7방 정보<br>
							</p></li>
						<li><img src="resources/img/main_image.jpg" alt="">
							<p>
								8방 정보<br>
							</p></li>
					</ul>
				</div>
				<span id="reser_input"></span> <label> <select>
						<option value="">방을 선택하세요</option>
						<option value="1">1방</option>
						<option value="2">2방</option>
						<option value="3">3방</option>
						<option value="4">4방</option>
						<option value="5">5방</option>
						<option value="6">6방</option>
						<option value="7">7방</option>
						<option value="8">8방</option>
				</select>
				</label>
				<button onclick="roomSelect()">방 선택</button>
			</div>
		</div>
	</div>
	<script type="text/javascript">
    let today = new Date();//오늘 날짜//내 컴퓨터 로컬을 기준으로 today에 Date 객체를 넣어줌
    let date = new Date();//today의 Date를 세어주는 역할
    function prevCalendar() {//이전 달
        // 이전 달을 today에 값을 저장하고 달력에 today를 넣어줌
        //today.getFullYear() 현재 년도//today.getMonth() 월  //today.getDate() 일
        //getMonth()는 현재 달을 받아 오므로 이전달을 출력하려면 -1을 해줘야함
        today = new Date(today.getFullYear(), today.getMonth() - 1, today.getDate());
        buildCalendar(); //달력 cell 만들어 출력
    }

    function nextCalendar() {//다음 달
        // 다음 달을 today에 값을 저장하고 달력에 today 넣어줌
        //today.getFullYear() 현재 년도//today.getMonth() 월  //today.getDate() 일
        //getMonth()는 현재 달을 받아 오므로 다음달을 출력하려면 +1을 해줘야함
        today = new Date(today.getFullYear(), today.getMonth() + 1, today.getDate());
        buildCalendar();//달력 cell 만들어 출력
    }
    function buildCalendar(){//현재 달 달력 만들기
        let doMonth = new Date(today.getFullYear(),today.getMonth(),1);
        //이번 달의 첫째 날,
        //new를 쓰는 이유 : new를 쓰면 이번달의 로컬 월을 정확하게 받아온다.
        //new를 쓰지 않았을때 이번달을 받아오려면 +1을 해줘야한다.
        //왜냐면 getMonth()는 0~11을 반환하기 때문
        let lastDate = new Date(today.getFullYear(),today.getMonth()+1,0);
        //이번 달의 마지막 날
        //new를 써주면 정확한 월을 가져옴, getMonth()+1을 해주면 다음달로 넘어가는데
        //day를 1부터 시작하는게 아니라 0부터 시작하기 때문에
        //대로 된 다음달 시작일(1일)은 못가져오고 1 전인 0, 즉 전달 마지막일 을 가져오게 된다
        let tbCalendar = document.querySelector('#calendar_table');
        //날짜를 찍을 테이블 변수 만듬, 일 까지 다 찍힘
        let tbCalendarYM = document.querySelector('#calendar_table_ym');
        //테이블에 정확한 날짜 찍는 변수
        //innerHTML : js 언어를 HTML의 권장 표준 언어로 바꾼다
        //new를 찍지 않아서 month는 +1을 더해줘야 한다.
        tbCalendarYM.innerHTML = today.getFullYear() + "년 " + (today.getMonth() + 1) + "월";

        /*while은 이번달이 끝나면 다음달로 넘겨주는 역할*/
        while (tbCalendar.rows.length > 2) {
            //열을 지워줌
            //기본 열 크기는 body 부분에서 2로 고정되어 있다.
            tbCalendar.deleteRow(tbCalendar.rows.length-1);
            //테이블의 tr 갯수 만큼의 열 묶음은 -1칸 해줘야지
            //30일 이후로 담을달에 순서대로 열이 계속 이어진다.
        }
        let row;
        row = tbCalendar.insertRow();
        //테이블에 새로운 열 삽입//즉, 초기화
        let cnt = 0;// count, 셀의 갯수를 세어주는 역할
        // 1일이 시작되는 칸을 맞추어 줌
        for (let i=0; i<doMonth.getDay(); i++) {
            /*이번달의 day만큼 돌림*/
            let cell = row.insertCell();//열 한칸한칸 계속 만들어주는 역할
            cnt = cnt + 1;//열의 갯수를 계속 다음으로 위치하게 해주는 역할
            // cell.bgColor = 'skyblue';
            if(new Date(today.getFullYear(),today.getMonth(),i) < new Date()) cell.bgColor = 'skyblue'; // 오늘보다 과거는 하늘색 처리
        }
        /*달력 출력*/
        for (let i=1; i<=lastDate.getDate(); i++) {
            //1일부터 마지막 일까지 돌림
            let cell = row.insertCell();//열 한칸한칸 계속 만들어주는 역할
            cell.innerHTML = i;//셀을 1부터 마지막 day까지 HTML 문법에 넣어줌
            cnt = cnt + 1;//열의 갯수를 계속 다음으로 위치하게 해주는 역할
            if(new Date(today.getFullYear(),today.getMonth(),i) < new Date()) cell.bgColor = 'skyblue'; // 오늘보다 과거는 하늘색 처리
            else cell.addEventListener('click',cellSelect(cell,new Date(today.getFullYear(),today.getMonth(),i))); // 오늘보다 미래에 예약가능한날 표시
            if (cnt % 7 === 1) {/*일요일 계산*/
                //1주일이 7일 이므로 일요일 구하기
                //월화수목금토일을 7로 나눴을때 나머지가 1이면 cnt가 1번째에 위치함을 의미한다
                cell.innerHTML = "<p style='color:rgba(245,48,66,0.68)'>" + i + "</p>"
                //1번째의 cell에만 색칠
            } else if (cnt%7 === 0){/* 1주일이 7일 이므로 토요일 구하기*/
                //월화수목금토일을 7로 나눴을때 나머지가 0이면 cnt가 7번째에 위치함을 의미한다
                cell.innerHTML = "<p style='color:#2b91c8'>" + i + "</p>"
                //7번째의 cell에만 색칠
                row = tbCalendar.insertRow();
                //토요일 다음에 올 셀을 추가
            }
            /*오늘의 날짜에 노란색 칠하기*/
            if (today.getFullYear() === date.getFullYear()
                && today.getMonth() === date.getMonth()
                && i === date.getDate()) {
                //달력에 있는 년,달과 내 컴퓨터의 로컬 년,달이 같고, 일이 오늘의 일과 같으면
                cell.bgColor = 'pink';//셀의 배경색을 노랑으로
            } else {
                // cell.bgColor = 'skyblue';
            }
        }
    }

    function cellSelect(cell,today) {
        let cellState = false;
        const reserInput = document.querySelector('#reser_input');
        let text = today.getMonth() + '월' + today.getDate() + '일 ';
        const regx = new RegExp(text);

        return function() {
            if(!cellState) {
                cell.bgColor = '#F28888';
                cellState = true;
                reserInput.textContent += text;
            } else {
                cell.bgColor = 'white';
                cellState = false;
                reserInput.textContent = reserInput.innerHTML.replace(regx,'');
            }
        }
    }

    buildCalendar();// 달력 생성

    // 방선택 버튼 클릭시 고양이 식단 선택창
    function roomSelect() {
        document.querySelector('#reser_room_info').innerHTML = `
            <div id="feed_select">
                <h3>식단 선택</h3>
                <ul>
                    <li><img src="resources/img/main_image.jpg" alt=""><p>좋아하는 식단 베스트1</p></li>
                    <li><img src="resources/img/main_image.jpg" alt=""><p>좋아하는 식단 베스트2</p></li>
                </ul>
                <ul>
                    <li><img src="resources/img/main_image.jpg" alt=""><p>좋아하는 식단 베스트1</p></li>
                    <li><img src="resources/img/main_image.jpg" alt=""><p>좋아하는 식단 베스트2</p></li>
                </ul>
            </div>
            <select>
                <option value="">식단 베스트1</option>
                <option value="">식단 베스트2</option>
                <option value="">식단 베스트3</option>
                <option value="">식단 베스트4</option>
                <option value="">선택 안함</option>
            </select>
            <div id="feed_button" >
                <button style="background-color: pink;" onclick="window.location.reload()">뒤로</button>
                <button onclick="feedSelect()">다음</button>
            </div>
        `;
    }

    // 식단선택 버튼 클릭시 장난감 선택 창
    function feedSelect() {
        document.querySelector('#reser_room_info').innerHTML = `
            <div id="feed_select">
                <h3>장난감 선택</h3>
                <ul>
                    <li><img src="resources/img/main_image.jpg" alt=""><p>좋아하는 장난감 베스트1</p></li>
                    <li><img src="resources/img/main_image.jpg" alt=""><p>좋아하는 장난감 베스트2</p></li>
                </ul>
                <ul>
                    <li><img src="resources/img/main_image.jpg" alt=""><p>좋아하는 장난감 베스트1</p></li>
                    <li><img src="resources/img/main_image.jpg" alt=""><p>좋아하는 장난감 베스트2</p></li>
                </ul>
            </div>
            <select>
                <option value="">장난감 베스트1</option>
                <option value="">장난감 베스트2</option>
                <option value="">장난감 베스트3</option>
                <option value="">장난감 베스트4</option>
                <option value="">선택안함</option>
            </select>
            <div id="feed_button" >
                <button style="background-color: pink;" onclick="roomSelect()">뒤로</button>
                <button onclick="pickupSelect()">다음</button>
            </div>
        `;
    }

    // 장난감 선택 버튼 클릭시 장난감 선택 창
    function pickupSelect() {
        document.querySelector('#reser_room_info').innerHTML = `
            <div id="feed_select">
                <h3>픽업서비스 선택</h3>
                <div id="reser_pickup">
                    <ul>
                        <li>
                            <p>시간 선택</p>
                            <select>
                                <option value="">08:00</option>
                                <option value="">09:00</option>
                                <option value="">10:00</option>
                                <option value="">11:00</option>
                                <option value="">12:00</option>
                                <option value="">13:00</option>
                                <option value="">14:00</option>
                                <option value="">15:00</option>
                                <option value="">16:00</option>
                                <option value="">17:00</option>
                                <option value="">18:00</option>
                                <option value="">19:00</option>
                                <option value="">20:00</option>
                                <option value="">21:00</option>
                            </select>
                        </li>
                        <li>
                            <p>주소</p> <input type="text">
                        </li>
                        <li>
                            <p>주소2</p> <input type="text">
                        </li>
                    </ul>
                    <ul>
                        <li><p>도착예정시간 </p></li>
                        <li><p>예상요금</p></li>
                    </ul>
                </div>
            </div>
            <select>
                <option value="">픽업 서비스 신청</option>
                <option value="">선택안함</option>
            </select>
            <div id="feed_button" >
                <button style="background-color: pink;" onclick="feedSelect()">뒤로</button>
                <button onclick="roomSelect()">다음</button>
            </div>
        `;
    }
    // pickupSelect();
</script>
</body>
</html>

