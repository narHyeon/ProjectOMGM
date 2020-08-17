<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<style>
#kinderGarden_reservation_table input {
	width: 100%;
	border: none;
}

.admin_kindergarden_schedule_button {
	display: flex;
	flex-direction: row;
}

.admin_kindergarden_schedule_button a {
	margin: 5px;
	width: 50%;
}
</style>
</head>
<body>
	<!-- DataTales Example -->
	<div class="card shadow mb-4">
		<div class="card-header py-3">
			<h6 class="m-0 font-weight-bold text-info">호텔 예약 현황</h6>
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<table class="table table-bordered"
					id="kinderGarden_reservation_table" width="100%" cellspacing="0">
					<thead>
						<tr>
							<th>대여번호</th>
							<th>ID</th>
							<th>이름</th>
							<th>고양이</th>
							<th>방이름</th>
							<th>대여기간</th>
							<th>식단</th>
							<th>장난감</th>
							<th>픽업서비스</th>
							<th>문자알림서비스</th>
							<th>날짜</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th><input type="text" value="154"></th>
							<th><input type="text" value="litos"></th>
							<th><input type="text" value="금라니"></th>
							<th><input type="text" value="먼치킨"></th>
							<th><input type="text" value="옥탑방"></th>
							<th><input type="text" value="20.7.12(월)~20.7.14(수)"></th>
							<th><input type="text" value="베스트 메뉴1"></th>
							<th><input type="text" value="캣타워 고급"></th>
							<th><input type="text" value="O"></th>
							<th><input type="text" value="O"></th>
							<th><input type="text" value="2020.07.11(월)"></th>
						</tr>
						<tr>
							<th><input type="text" value="154"></th>
							<th><input type="text" value="litos"></th>
							<th><input type="text" value="금라니"></th>
							<th><input type="text" value="먼치킨"></th>
							<th><input type="text" value="옥탑방"></th>
							<th><input type="text" value="20.7.12(월)~20.7.14(수)"></th>
							<th><input type="text" value="베스트 메뉴1"></th>
							<th><input type="text" value="캣타워 고급"></th>
							<th><input type="text" value="O"></th>
							<th><input type="text" value="O"></th>
							<th><input type="text" value="2020.07.11(월)"></th>
						</tr>
						<tr>
							<th><input type="text" value="154"></th>
							<th><input type="text" value="litos"></th>
							<th><input type="text" value="금라니"></th>
							<th><input type="text" value="먼치킨"></th>
							<th><input type="text" value="옥탑방"></th>
							<th><input type="text" value="20.7.12(월)~20.7.14(수)"></th>
							<th><input type="text" value="베스트 메뉴1"></th>
							<th><input type="text" value="캣타워 고급"></th>
							<th><input type="text" value="O"></th>
							<th><input type="text" value="O"></th>
							<th><input type="text" value="2020.07.11(월)"></th>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<div class="admin_kindergarden_schedule_button">
		<a href="login.html" class="btn btn-info btn-user ">초기화</a> <a
			href="login.html" class="btn btn-success btn-user ">적용</a>
	</div>
</body>
</html>