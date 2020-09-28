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
</style>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#list_button").click(function() {
			window.location.href = 'roomList.mdo';
		});
		$("#update_button").click(function() {
			const roomnum = $("#room_no").val();
			window.location.href = 'roomUpdate.mdo?ROOM_NO='+roomnum;
		});
		$("#delete_button").click(function() {
			const roomnum = $("#room_no").val();
			window.location.href = 'roomDelete.mdo?ROOM_NO='+roomnum;
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
					<div class="card-header py-3">
						<h4 class="m-0 font-weight-bold text-primary">방 정보</h4>
					</div>
					<div class="card-body">
						<div class="card-header py-3">
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
						</div>
						<div id="roomInsert_content">
							${roomInfo.ROOM_CONTENT}
						</div>
					</div>
					<div class="card-header py-3">
						<div id="roomInsert_buttons">
							<div class="btn btn-primary btn-icon-split" id="list_button">
		                  		<span class="icon text-white-50">
	           		          		<i class="fas fa-check"></i>
               				    </span>
                   				<span class="text">목록으로</span>
                 			</div>
			                <div class="btn btn-success btn-icon-split" id="update_button">
                    			<span class="icon text-white-50">
                      				<i class="fas fa-check"></i>
                    			</span>
                    			<span class="text">방 정보 수정</span>
                 			</div>
                 			<div class="btn btn-danger btn-icon-split" id="delete_button">
                    			<span class="icon text-white-50">
                      				<i class="fas fa-trash"></i>
                    			</span>
                    			<span class="text">방 삭제</span>
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