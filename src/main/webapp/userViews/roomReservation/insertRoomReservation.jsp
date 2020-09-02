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
	margin: 50px 0;
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
	padding: 0px;
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
	width : 25%;
	padding: 20px;
	margin-bottom: 3%;
}

#reser_room_info #room_select li img {
	width: 100%;
	height: 100%;
}

#reser_room_info #room_select li p {
	margin-top: 10px;
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

.reservation_sunday {
	color: rgba(245, 48, 66, 0.68);
}

.reservation_saturday {
	color: #2b91c8;
}

.reservation_dates {
	height: 100%;
	cursor: pointer;
	background-color: 
}
#reservation_selectedopton{
	color: #FF7737;
	font-size: 18px;
}
#reservationy{
	color: #2ecc71;
}
#reservationn{
	color: #FF3737;
}
</style>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.27.0/moment.min.js"></script>



<script type="text/javascript">
	$(document).ready(function(){
		var todayid
		/* 오늘날자에 해당하는 td안의 div의 id 얻어오는거 */
		$(".reservation_dates").each(function() {
			const bgcol = $(this).parent().css("background-color");
			if (bgcol =='rgb(255, 192, 203)') {
				todayid = $(this).attr("id");				
			};
		});
		
		/* 날자 선택했을때*/
		$(".reservation_dates").click(function() {
			const year = $(this).data('year');				
			const month = $(this).data('month');
			const day = $(this).data('day');
			let stayDay = new Date();
			stayDay = moment(year+"-"+month+"-"+day).format('YYYYMMDD');
			const parent_td = $(this).parent();
			const tdcol = parent_td.css("background-color");
			const thiscol = $(this).css("background-color");
			if (tdcol!='rgb(135, 206, 235)') {
				$('.reservation_dates').each(function() {
					if (($(this).parent().css("background-color") !='rgb(135, 206, 235)') && ($(this).parent().css("background-color") !='rgb(255, 192, 203)')) {
						$(this).css("background-color","white");
						};
						if ($(this).parent().css("background-color") =='rgb(255, 192, 203)') {
							$(this).css("background-color","");
						};
					});
					$(this).css("background-color","#F28888");
					
					$("#reser_input").html(year+"년"+month+"월"+day+"일");
					$("#reser_input").data("year", year);
					$("#reser_input").data("month", month);
					$("#reser_input").data("day", day);
					$("#reservation_selectedopton").html(year+"년"+month+"월"+day+"일");
					$("#reservation_selectedopton").data("roomreservation_strstayday", stayDay);
				}else {
					alert('지난 날자는 선택할수 없습니다.');	
				};
				$.ajax({
    				url: '/omyogamyo/ajaxinsertRoomReservation.do',
    				method: 'post',
    				data: {
    					year:$("#reser_input").data("year"),
    					month:$("#reser_input").data("month"),
    					day:$("#reser_input").data("day")
    				},
    				dataType: "json",
    				success: function(data) {
    					
    					$("#room_select").html("");
    					let countUl = 0;
    					data.forEach(function(e,i) {
    						if (i%4==0) {
    							const toInsert1 = "<ul></ul>";
    							$("#room_select").append(toInsert1);
    							countUl ++;
    						}
    					});
    					let ulArray = new Array();
    					for (var i = 0; i < countUl; i++) {
    						const ulnum = i+1;
    						const ul = $("#room_select > ul:nth-child("+ulnum+")");
    						ulArray.push(ul);
						};
						for (var j = 0; j < ulArray.length; j++) {
							data.forEach(function(e,i) {
								const mox = i/4;
								let reservationYN = "";
								if (e.room_RESERVATIONYN == "Y") {
									reservationYN = "<div id='reservationy'>*예약 가능*</div>";
								}else {
									reservationYN = "<div id='reservationn'>*예약 불가*</div>";
								}
								if ((j<=mox)&&(mox<(j+1))) {
													
								const toInsert2 =
									"<li> <img src="
	        						+ e.room_IMG + 
	    							"><p>" 
	    							+ e.room_NAME +
	    							"<br></p>"
	    							+ reservationYN +
									"</li>";
								ulArray[j].append(toInsert2);
								}
							});
						}/*end for UlArray */
						data.forEach(function(e,i) {
							
							const defaultOption = "<option value='0'>방을 선택하세요</option>";
							if (i==0) {
								$("#reservation_roomselect").html("");
								$("#reservation_roomselect").append(defaultOption);	
							}
							if (e.room_RESERVATIONYN == "Y") {
								const roomOption = 
								"<option value='"
								+ e.room_NO + 
								"' data-roomprice='"
								+ e.room_PRICE+ 
								"' data-roomsalerate='"
								+ e.room_SALERATE+
								"'>"
								+ e.room_NAME + 
								"</option>";
								$("#reservation_roomselect").append(roomOption);
							}
						});
    				},/*end success*/
    				error: function(err) {
    					alert('예약정보 불러오기에 실패하셧습니다.');
    				}
    			});
			});
		/*오늘날자 자동으로 선택해주는 기능*/
		$("#"+todayid+"").click();
		/* 날자 선택 안하고 방 선택할려시 유효성 검사*/  
		$("#reservation_roomselect").change(function() {
			if ($("#reser_input").html()=='') {
				alert("예약하실 날자를 선택해 주세요");
				$(this).val(0);
			};
		});
	});
	function endReservation() {
		
		const pickuptime = $("#pickup_time").val();
		const pickupaddress = $("#pickup_address").val();
		const pickupphone = $("#pickup_phone").val();
		const pickupyn = $("#pickup_yn").val();
		
		
		if (pickupyn =="Y") {
			if (pickupaddress=="" || pickupphone=="") {
				alert("픽업정보를 입력해주세요");
			}else {
				$("#reservation_selectedopton").data("roomreservation_pickuptime",pickuptime);
				$("#reservation_selectedopton").data("roomreservation_pickupaddress",pickupaddress);
				$("#reservation_selectedopton").data("roomreservation_pickupphonenum",pickupphone);	
				$("#reservation_selectedopton").data("roomreservation_pickupyn",pickupyn);
				const data = $("#reservation_selectedopton").data();
				const datakey = new Array(); 
				const datavalue = new Array();
				let urlparam = "";
				for(var i in data){
					datakey.push(i.toUpperCase());
					datavalue.push(data[i]);
				};
				for (var i = 0; i < datakey.length; i++) {
					urlparam += datakey[i] + "=" + datavalue[i];
					if (i==(datakey.length-1)) {
						
					}else {
						urlparam += "&" ;
					}
				};
				window.location.href = 'insertPayRoomReservation.do?'+urlparam;
			}
		}else {
			$("#reservation_selectedopton").data("roomreservation_pickupyn",pickupyn);
			const data = $("#reservation_selectedopton").data();
			const datakey = new Array(); 
			const datavalue = new Array();
			let urlparam = "";
			for(var i in data){
				datakey.push(i.toUpperCase());
				datavalue.push(data[i]);
			};
			for (var i = 0; i < datakey.length; i++) {
				urlparam += datakey[i] + "=" + datavalue[i];
				if (i==(datakey.length-1)) {
					
				}else {
					urlparam += "&" ;
				}
			};
			window.location.href = 'insertPayRoomReservation.do?'+urlparam;
		}
		
		
	};
</script>
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
			<div>
			<div id="reservation_selectedopton"></div>
			<div id="reser_room_info">
				<h3><span id="reser_input"></span>의 방 정보</h3>
				<div id="room_select">
				</div>
				<label>
				<select id="reservation_roomselect">
						<option value="0">방을 선택하세요</option>
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
        $(".reservation_dates").off();
        /*start 기능*/
        $(".reservation_dates").click(function() {
			const year = $(this).data('year');				
			const month = $(this).data('month');
			const day = $(this).data('day');
			const stayDay = moment(year+"-"+month+"-"+day).format('YYYY MM DD');
			const parent_td = $(this).parent();
			const tdcol = parent_td.css("background-color");
			const thiscol = $(this).css("background-color");
			if (tdcol!='rgb(135, 206, 235)') {
				$('.reservation_dates').each(function() {
					if (($(this).parent().css("background-color") !='rgb(135, 206, 235)') && ($(this).parent().css("background-color") !='rgb(255, 192, 203)')) {
						$(this).css("background-color","white");
						};
						if ($(this).parent().css("background-color") =='rgb(255, 192, 203)') {
							$(this).css("background-color","");
						};
					});
					$(this).css("background-color","#F28888");
					
					$("#reser_input").html(year+"년"+month+"월"+day+"일");
					$("#reser_input").data("year", year);
					$("#reser_input").data("month", month);
					$("#reser_input").data("day", day);
					$("#reservation_selectedopton").html(year+"년"+month+"월"+day+"일");
					$("#reservation_selectedopton").data("roomreservation_strstayday", stayDay);
				}else {
					alert('지난 날자는 선택할수 없습니다.');	
				};
				$.ajax({
    				url: '/omyogamyo/ajaxinsertRoomReservation.do',
    				method: 'post',
    				data: {
    					year:$("#reser_input").data("year"),
    					month:$("#reser_input").data("month"),
    					day:$("#reser_input").data("day")
    				},
    				dataType: "json",
    				success: function(data) {
    					$("#room_select").html("");
    					let countUl = 0;
    					data.forEach(function(e,i) {
    						if (i%4==0) {
    							const toInsert1 = "<ul></ul>";
    							$("#room_select").append(toInsert1);
    							countUl ++;
    						}
    					});
    					let ulArray = new Array();
    					for (var i = 0; i < countUl; i++) {
    						const ulnum = i+1;
    						const ul = $("#room_select > ul:nth-child("+ulnum+")");
    						ulArray.push(ul);
						};
						for (var j = 0; j < ulArray.length; j++) {
							data.forEach(function(e,i) {
								const mox = i/4;
								let reservationYN = "";
								if (e.room_RESERVATIONYN == "Y") {
									reservationYN = "<div id='reservationy'>*예약 가능*</div>";
								}else {
									reservationYN = "<div id='reservationn'>*예약 불가*</div>";
								}
								if ((j<=mox)&&(mox<(j+1))) {
									
								const toInsert2 =
									"<li> <img src="
	        						+ e.room_IMG + 
	    							"><p>" 
	    							+ e.room_NAME +
	    							"<br></p>"
	    							+ reservationYN +
									"</li>";
								ulArray[j].append(toInsert2);
								}
							});
						}/*end for UlArray */
						data.forEach(function(e,i) {
							
							const defaultOption = "<option value='0'>방을 선택하세요</option>";
							if (i==0) {
								$("#reservation_roomselect").html("");
								$("#reservation_roomselect").append(defaultOption);	
							}
							if (e.room_RESERVATIONYN == "Y") {
								const roomOption = 
								"<option value='"
								+ e.room_NO + 
								"' data-roomprice='"
								+ e.room_PRICE+ 
								"' data-roomsalerate='"
								+ e.room_SALERATE+
								"'>"
								+ e.room_NAME + 
								"</option>";
								$("#reservation_roomselect").append(roomOption);
							}
						});
    				},/*end success*/
    				error: function(err) {
    					alert('예약정보 불러오기에 실패하셧습니다.');
    				}
    			});
			});
        /*end 기능*/
    };

    function nextCalendar() {//다음 달
        // 다음 달을 today에 값을 저장하고 달력에 today 넣어줌
        //today.getFullYear() 현재 년도//today.getMonth() 월  //today.getDate() 일
        //getMonth()는 현재 달을 받아 오므로 다음달을 출력하려면 +1을 해줘야함
        today = new Date(today.getFullYear(), today.getMonth() + 1, today.getDate());
        buildCalendar();//달력 cell 만들어 출력
        $(".reservation_dates").off();
        /*start 기능*/
        $(".reservation_dates").click(function() {
			const year = $(this).data('year');				
			const month = $(this).data('month');
			const day = $(this).data('day');
			const stayDay = moment(year+"-"+month+"-"+day).format('YYYY MM DD');
			const parent_td = $(this).parent();
			const tdcol = parent_td.css("background-color");
			const thiscol = $(this).css("background-color");
			if (tdcol!='rgb(135, 206, 235)') {
				$('.reservation_dates').each(function() {
					if (($(this).parent().css("background-color") !='rgb(135, 206, 235)') && ($(this).parent().css("background-color") !='rgb(255, 192, 203)')) {
						$(this).css("background-color","white");
						};
						if ($(this).parent().css("background-color") =='rgb(255, 192, 203)') {
							$(this).css("background-color","");
						};
					});
					$(this).css("background-color","#F28888");
					
					$("#reser_input").html(year+"년"+month+"월"+day+"일");
					$("#reser_input").data("year", year);
					$("#reser_input").data("month", month);
					$("#reser_input").data("day", day);
					$("#reservation_selectedopton").html(year+"년"+month+"월"+day+"일");
					$("#reservation_selectedopton").data("roomreservation_strstayday", stayDay);
				}else {
					alert('지난 날자는 선택할수 없습니다.');	
				};
				$.ajax({
    				url: '/omyogamyo/ajaxinsertRoomReservation.do',
    				method: 'post',
    				data: {
    					year:$("#reser_input").data("year"),
    					month:$("#reser_input").data("month"),
    					day:$("#reser_input").data("day")
    				},
    				dataType: "json",
    				success: function(data) {
    					$("#room_select").html("");
    					let countUl = 0;
    					data.forEach(function(e,i) {
    						if (i%4==0) {
    							const toInsert1 = "<ul></ul>";
    							$("#room_select").append(toInsert1);
    							countUl ++;
    						}
    					});
    					let ulArray = new Array();
    					for (var i = 0; i < countUl; i++) {
    						const ulnum = i+1;
    						const ul = $("#room_select > ul:nth-child("+ulnum+")");
    						ulArray.push(ul);
						};
						for (var j = 0; j < ulArray.length; j++) {
							data.forEach(function(e,i) {
								const mox = i/4;
								let reservationYN = "";
								if (e.room_RESERVATIONYN == "Y") {
									reservationYN = "<div id='reservationy'>*예약 가능*</div>";
								}else {
									reservationYN = "<div id='reservationn'>*예약 불가*</div>";
								}
								if ((j<=mox)&&(mox<(j+1))) {
									
								const toInsert2 =
									"<li> <img src="
	        						+ e.room_IMG + 
	    							"><p>" 
	    							+ e.room_NAME +
	    							"<br></p>"
	    							+ reservationYN +
									"</li>";
								ulArray[j].append(toInsert2);
								}
							});
						}/*end for UlArray */
						data.forEach(function(e,i) {
							
							const defaultOption = "<option value='0'>방을 선택하세요</option>";
							if (i==0) {
								$("#reservation_roomselect").html("");
								$("#reservation_roomselect").append(defaultOption);	
							}
							if (e.room_RESERVATIONYN == "Y") {
								const roomOption = 
								"<option value='"
								+ e.room_NO + 
								"' data-roomprice='"
								+ e.room_PRICE+ 
								"' data-roomsalerate='"
								+ e.room_SALERATE+
								"'>"
								+ e.room_NAME + 
								"</option>";
								$("#reservation_roomselect").append(roomOption);
							}
						});
    				},/*end success*/
    				error: function(err) {
    					alert('예약정보 불러오기에 실패하셧습니다.');
    				}
    			});
			});
        /*end 기능*/
    };
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
            let datayear = lastDate.getFullYear();
            let datamonth = lastDate.getMonth() +1;
            let cell = row.insertCell();//열 한칸한칸 계속 만들어주는 역할
            cnt = cnt + 1;//열의 갯수를 계속 다음으로 위치하게 해주는 역할
            if(new Date(today.getFullYear(),today.getMonth(),i) < new Date()) {
            	cell.bgColor = 'skyblue'};
           
            	if (cnt % 7 === 1) {/*일요일 계산*/
                    //1주일이 7일 이므로 일요일 구하기
                    //월화수목금토일을 7로 나눴을때 나머지가 1이면 cnt가 1번째에 위치함을 의미한다
                    cell.innerHTML = "<div class='reservation_dates reservation_sunday' id='reservation_date"+i+"'data-year='"+datayear+"' data-month='"+datamonth+"' data-day='"+i+"'>" + i + "</div>"
                    //1번째의 cell에만 색칠
                } else if (cnt%7 === 0){/* 1주일이 7일 이므로 토요일 구하기*/
                    //월화수목금토일을 7로 나눴을때 나머지가 0이면 cnt가 7번째에 위치함을 의미한다
                    cell.innerHTML = "<div class='reservation_dates reservation_saturday' id='reservation_date"+i+"'data-year='"+datayear+"' data-month='"+datamonth+"' data-day='"+i+"'>" + i + "</div>"
                    //7번째의 cell에만 색칠
                    row = tbCalendar.insertRow();
                    //토요일 다음에 올 셀을 추가
                }else {
                	cell.innerHTML = "<div class='reservation_dates reservation_weekday' id='reservation_date"+i+"'data-year='"+datayear+"' data-month='"+datamonth+"' data-day='"+i+"'>" + i + "</div>";
    			}

            
            /*오늘의 날짜에 분홍색 칠하기*/
            if (today.getFullYear() === date.getFullYear()
                && today.getMonth() === date.getMonth()
                && i === date.getDate()) {
                //달력에 있는 년,달과 내 컴퓨터의 로컬 년,달이 같고, 일이 오늘의 일과 같으면
                cell.bgColor = 'pink';//셀의 배경색을 분홍으로
            } 
            
            
        }
    }

    buildCalendar();// 달력 생성

    // 방선택 버튼 클릭시 고양이 식단 선택창 으로 바뀌는 함수
    function roomSelect() {
    	if ($("#reservation_roomselect").val()!=0) {
    		if ($("#reservation_selectedopton").data("roomreservation_roomno") == null) {
        		const roomno = $("#reservation_roomselect").val();
        		const roomname = $("#reservation_roomselect option:selected").text();
        		const roomprice = $("#reservation_roomselect option:selected").data("roomprice");
        		const roomsalerate = $("#reservation_roomselect option:selected").data("roomsalerate");
        		const beforeinfo = $("#reservation_selectedopton").html();
        		$("#reservation_selectedopton").html(beforeinfo + "→" + roomname);
        		$("#reservation_selectedopton").data("roomreservation_roomno",roomno); 
        		$("#reservation_selectedopton").data("roomreservation_roomname",roomname);
        		$("#reservation_selectedopton").data("room_price",roomprice);
        		$("#reservation_selectedopton").data("room_salerate",roomsalerate);
    		}else {
    			const removeinfo = $("#reservation_selectedopton").data("roomreservation_foodname");
        		const beforeinfo = $("#reservation_selectedopton").html();
        		$("#reservation_selectedopton").html(beforeinfo.replace("→" + removeinfo +"",""));
			}
    		document.querySelector('#reser_room_info').innerHTML = `
                <div id="feed_select">
                    <h3>식단 선택</h3>
                    <ul>
                        <li><img src="resources/img/reservation/food/catfood1.jpg" alt=""><p>인네이쳐(고양이)</p></li>
                        <li><img src="resources/img/reservation/food/catfood2.jpg" alt=""><p>펫큐리안(고양이)</p></li>
                    </ul>
                    <ul>
                        <li><img src="resources/img/reservation/food/dogfood1.jpg" alt=""><p>네이쳐플렌(강아지)</p></li>
                        <li><img src="resources/img/reservation/food/dogfood2.jpg" alt=""><p>펫큐리안(강아지)</p></li>
                    </ul>
                </div>
                <select id="room_food">
                    <option value="1">인네이쳐(고양이)</option>
                    <option value="2">펫큐리안(고양이)</option>
                    <option value="3">네이쳐플렌(강아지)</option>
                    <option value="4">펫큐리안(강아지)</option>
                </select>
                <div id="feed_button" >
                    <button style="background-color: pink;" onclick="window.location.reload()">뒤로</button>
                    <button onclick="feedSelect()">다음</button>
                </div>
            `;	
            
           	}else {
			alert("방을 선택해주세요");
		}
    	
        
    }

    // 식단선택 버튼 클릭시 장난감 선택 창으로 바뀌는 함수
    function feedSelect() {
    	if ($("#reservation_selectedopton").data("roomreservation_toyno") == null) {
    		const foodno = $("#room_food").val();
    		const foodname = $("#room_food option:selected").text(); 
    		const beforeinfo = $("#reservation_selectedopton").html();
    		$("#reservation_selectedopton").html(beforeinfo + "→" + foodname);
    		$("#reservation_selectedopton").data("roomreservation_foodno",foodno);
    		$("#reservation_selectedopton").data("roomreservation_foodname",foodname);
		}else {
			const removeinfo = $("#reservation_selectedopton").data("roomreservation_toyname");
    		const beforeinfo = $("#reservation_selectedopton").html();
    		$("#reservation_selectedopton").html(beforeinfo.replace("→" + removeinfo,""));
		}
    	
    		
        document.querySelector('#reser_room_info').innerHTML = `
            <div id="feed_select">
                <h3>장난감 선택</h3>
                <ul>
                    <li><img src="resources/img/reservation/toy/cattoy1.png" alt=""><p>우주링(고양이)</p></li>
                    <li><img src="resources/img/reservation/toy/cattoy2.png" alt=""><p>공작깃털 캣닢볼(고양이)</p></li>
                </ul>
                <ul>
                    <li><img src="resources/img/reservation/toy/dogtoy1.png" alt=""><p>럭비공 인형(강아지)</p></li>
                    <li><img src="resources/img/reservation/toy/dogtoy2.png" alt=""><p>축구공 인형(강아지)</p></li>
                </ul>
            </div>
            <select id="room_toy">
                <option value="1">우주링(고양이)</option>
                <option value="2">공작깃털 캣닢볼(고양이)</option>
                <option value="3">럭비공 인형(강아지)</option>
                <option value="4">축구공 인형(강아지)</option>
            </select>
            <div id="feed_button" >
                <button style="background-color: pink;" onclick="roomSelect()">뒤로</button>
                <button onclick="pickupSelect()">다음</button>
            </div>
        `;
    }
 // 장난감 선택 버튼 클릭시 픽업 서비스로 바뀌는 함수
    function pickupSelect() {
    	const toyno = $("#room_toy").val();
    	const toyname = $("#room_toy option:selected").text();
		const beforeinfo = $("#reservation_selectedopton").html();
		$("#reservation_selectedopton").html(beforeinfo + "→" + toyname);
		$("#reservation_selectedopton").data("roomreservation_toyno",toyno);
		$("#reservation_selectedopton").data("roomreservation_toyname",toyname);
        document.querySelector('#reser_room_info').innerHTML = `
            <div id="feed_select">
                <h3>픽업서비스 선택</h3>
                <div id="reser_pickup">
                    <ul>
                        <li>
                            <p>시간 선택</p>
                            <select id="pickup_time">
                                <option value="8">08:00</option>
                                <option value="9">09:00</option>
                                <option value="10">10:00</option>
                                <option value="11">11:00</option>
                                <option value="12">12:00</option>
                                <option value="13">13:00</option>
                                <option value="14">14:00</option>
                                <option value="15">15:00</option>
                                <option value="16">16:00</option>
                                <option value="17">17:00</option>
                                <option value="18">18:00</option>
                                <option value="19">19:00</option>
                                <option value="20">20:00</option>
                                <option value="21">21:00</option>
                            </select>
                        </li>
                        <li>
                            <p>주소</p> <input type="text" id="pickup_address">
                        </li>
                        <li>
                        	<p>연락처</p> <input type="text" id="pickup_phone">
                    	</li>
                    </ul>
                </div>
            </div>
            <select id="pickup_yn">
                <option value="Y">픽업 서비스 신청</option>
                <option value="N">픽업 서비스 신청 안함</option>
            </select>
            <div id="feed_button" >
                <button style="background-color: pink;" onclick="feedSelect()">뒤로</button>
                <button onclick="endReservation()">예약완료</button>
            </div>
        `;
    }

    // pickupSelect();
</script>
</body>
</html>