<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#roomInsert_head-1{
	display: flex;
	flex-direction: row;
	margin-bottom: 1%;
}
#roomInsert_head-2{
	display: flex;
	flex-direction: row;
	margin-bottom: 1%;
}
#roomInsert_head-3{
	display: flex;
	flex-direction: row;
	margin-bottom: 1%;
}
.keys{
	width: 10%;
}
.values{
	margin-right: 3%;
	width: 20%;
}
.roominsert_input{
	width: 100%;
}
#roomInsert_buttons{
	float: right;
}
#content-wrapper{
	margin-top: 3%;
	margin-left: 5%;
	margin-bottom: 2%;
}
#roomRead_head{
	 
	min-width: 60%;
	margin-right: 15%;
	margin-top: 2%;
	margin-bottom: 2%;
	font-size: 20px;
	padding-bottom: 1%;
	border-bottom: 2px solid #FFABB9;

}
#roomInsert_content{
	margin-bottom: 2%;
}
#roomRead_buttons{
	display: flex;
	flex-direction: row;
	height: 50px;
}
.roomRead_list_input_buttons{
	width: 100px;
	height: 30px;
}
#roomRead_list_button{
	margin-right: 20px;
}
</style>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#roomRead_list_button").click(function() {
			window.location.href = 'roomList.do';
		});
		$("#roomRead_reservation_button").click(function() {
			const roomnum = $("#room_no").val();
			alert(roomnum);
		});
	});
</script>
</head>
<body>
<input type="hidden" value="${roomInfo.ROOM_NO}" id="room_no">
<!-- Content Wrapper -->
	<div id="content-wrapper" class="d-flex flex-column">
		<!-- Main Content -->
		<div id="content">
			<!-- Begin Page Content -->
			<div class="container-fluid">
				<!-- Page Heading -->
				<!-- DataTales Example -->
				<div class="card shadow mb-4">
					<div id="roomRead_head">
						<h4 class="m-0 font-weight-bold text-primary">방 정보</h4>
					</div>
					<div class="card-body">
						<div id="roomInsert_head">
							<div id="roomInsert_head-1">
								<div id="head-1_key-1" class="keys">
									방 이름
								</div>
								<div id="head-1_value-1" class="values">
									${roomInfo.ROOM_NAME}
								</div>
							</div>		
							<div id="roomInsert_head-2">
								<div id="head-2_key-1" class="keys">
									방 가격
								</div>
								<div id="head-2_value-1" class="values">
									${roomInfo.ROOM_PRICE}
								</div>
								<div id="head-2_key-2" class="keys">
									방 할인율
								</div>
								<div id="head-2_value-2" class="values">
									${roomInfo.ROOM_SALERATE}
								</div>
							</div>
							<div id="roomInsert_head-3">
								<div id="head-3_key-1" class="keys">
									방종류
								</div>
								<div id="head-3_value-1" class="values">
									<c:choose>
										<c:when test="${roomInfo.ROOM_KIND eq 'p'}">단체룸</c:when>
										<c:when test="${roomInfo.ROOM_KIND eq 's'}">개인룸</c:when>
									</c:choose>	
								</div>
								<div id="head-3_key-2" class="keys">
									반려동물
								</div>
								<div id="head-3_value-2" class="values">
									${roomInfo.ROOM_FOR}	
								</div>
								<div id="head-3_key-3" class="keys">
									방 등급
								</div>
								<div id="head-3_value-3" class="values">
									<c:choose>
										<c:when test="${roomInfo.ROOM_RANK eq 3}">프리미엄</c:when>
										<c:when test="${roomInfo.ROOM_RANK eq 2}">럭셔리</c:when>
										<c:when test="${roomInfo.ROOM_RANK eq 1}">노말</c:when>
									</c:choose>	
								</div>
							</div>
						</div>
						<div id="roomRead_head">
						</div>
						<div id="roomInsert_content">
							${roomInfo.ROOM_CONTENT}
						</div>
						<div id="roomRead_head">
						</div>
						<div id="roomRead_buttons">
							<div id="roomRead_list_button">
	                   			<input type="button" value="목록으로" class="roomRead_list_input_buttons">
							</div>
							<div id="roomRead_reservation_button">
								<input type="button" value="예약하기" class="roomRead_list_input_buttons">
							</div>
						</div>					
					</div>
				</div>
			</div>
			<!-- /.container-fluid -->
		</div>
		<!-- End of Main Content -->
	</div>
	<!-- End of Content Wrapper -->
</body>
</html>