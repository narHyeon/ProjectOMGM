<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/style/summernote/summernote-lite.css">
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

</style>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="resources/js/summernote/summernote-lite.js"></script>
<script src="resources/js/summernote/lang/summernote-ko-KR.js"></script>
<script type="text/javascript">
var jqncf = jQuery.noConflict();
jqncf(document).ready(function() {
	jqncf('#summernote').summernote({
		height : 350, // 에디터 높이
		minHeight : null, // 최소 높이
		maxHeight : null, // 최대 높이
		focus : true, // 에디터 로딩후 포커스를 맞출지 여부
		lang : "ko-KR" // 한글 설정
	});
	jqncf('#roomInsert_buttons').click(function(){
		var frm = document.mainfrom;
		frm.action = "roomInsert.mdo";
		frm.method = "post";
		frm.submit();	
	});
	
});
</script>
</head>
<body>
<form name="mainfrom" action="roomInsert.mdo" method="post">
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
						<h4 class="m-0 font-weight-bold text-primary">방 등록</h4>
					</div>
					<div class="card-body">
						<div id="roomInsert_head">
							<div id="roomInsert_head-1">
								<div id="head-1_key-1" class="keys">
									방 이름
								</div>
								<div id="head-1_value-1" class="values">
									<input type="text" required="required" class="roominsert_input" name="ROOM_NAME">
								</div>
							</div>		
							<div id="roomInsert_head-2">
								<div id="head-2_key-1" class="keys">
									방 가격
								</div>
								<div id="head-2_value-1" class="values">
									<input type="text" required="required" class="roominsert_input" name="ROOM_PRICE">
								</div>
								<div id="head-2_key-2" class="keys">
									방 할인율
								</div>
								<div id="head-2_value-2" class="values">
									<input type="text" required="required" class="roominsert_input" name="ROOM_SALERATE">
								</div>
							</div>
							<div id="roomInsert_head-3">
								<div id="head-3_key-1" class="keys">
									방종류
								</div>
								<div id="head-3_value-1" class="values">
									<select name="ROOM_KIND">
										<option value="p">단체룸</option>
										<option value="s">개인룸</option>
									</select>
								</div>
								<div id="head-3_key-2" class="keys">
									반려동물
								</div>
								<div id="head-3_value-2" class="values">
									<select name="ROOM_FOR">
										<option value="강아지">강아지</option>
										<option value="고양이">고양이</option>
									</select>
								</div>
								<div id="head-3_key-3" class="keys">
									방 등급
								</div>
								<div id="head-3_value-3" class="values">
									<select name="ROOM_RANK">
										<option value="3">프리미엄</option>
										<option value="2">럭셔리</option>
										<option value="1">노말</option>
									</select>
								</div>
							</div>
						</div>
						<div id="roomInsert_content">
							<textarea id="summernote" name="ROOM_CONTENT">
							</textarea>		
						</div>
						<div id="roomInsert_buttons">
							<a class="btn btn-primary btn-icon-split" id="insert_button" href="#modal_wrap" rel="modal:open">
		                  		<span class="icon text-white-50">
	           		          		<i class="fas fa-check"></i>
               				    </span>
                   				<span class="text">방 등록</span>
                 			</a>
						</div>
					</div>
				</div>
			</div>
			<!-- /.container-fluid -->
		</div>
		<!-- End of Main Content -->
	</div>
	<!-- End of Content Wrapper -->
</form>	
</body>
</html>