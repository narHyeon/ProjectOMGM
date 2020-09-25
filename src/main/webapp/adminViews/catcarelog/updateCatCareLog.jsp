<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title></title>
</head>
<link rel="stylesheet"
	href="resources/style/summernote/summernote-lite.css">
<style>
.reserve_info_key{
	background-color: #36b9cc;
	color: white;
	width: 20%;
}
.reserve_info_value{
	width: 30%;
}
#reserve_buttons{
	float: right;
	margin-bottom: 2%;
}
#payreservation_head {
	min-width: 60%;
	margin-top: 2%;
	margin-bottom: 2%;
	font-size: 20px;
	padding-bottom: 1%;
	border-bottom: 2px solid #36b9cc;
	color: #4e73df;
	font-weight: bold;
}
#care_buttons{
	float: right;
	margin-right: 1%;

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
	jqncf('#care_updatebt').click(function(){
		var frm = document.mainfrom;
		frm.action = "updateCatCareLog.mdo";
		frm.method = "post";
		frm.submit();
	});
	jqncf("#care_golistbt").click(function() {
		window.location.href = 'catCareLogList.mdo';
	});
	jqncf("#care_canclebt").click(function() {
		const careno = jqncf("#CATCARELOG_NO").val();
		window.location.href = 'getCatCareLog.mdo?CATCARELOG_NO=' + careno;
	});
	
});	

</script>
<body>
<form action="updateCatCareLog.mdo" method="post" name="mainfrom">
<input type="hidden" value="${catcarelogInfo.CATCARELOG_NO}" id="CATCARELOG_NO">
<div class="card shadow mb-4">
	<div class="card-header py-3">
		<h6 class="m-0 font-weight-bold text-primary">냥박 정보</h6>
	</div>
	<div class="card-body">
		<div class="table-responsive">
			<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
				<tbody>
					<tr>
						<td class="reserve_info_key">냥박 번호</td>
						<td class="reserve_info_value">
						<input type="text" value="${catcarelogInfo.CATCARELOG_NO}" readonly="readonly" name="CATCARELOG_NO">
						</td>
						<td class="reserve_info_key">고객 아이디</td>
						<td class="reserve_info_value">
						<input type="text" value="${catcarelogInfo.MEMBER_ID}" readonly="readonly">
						</td>
					</tr>
					<tr>
						<td class="reserve_info_key">냥박 시작</td>
						<td class="reserve_info_value">
							<input type="text" value="${catcarelogInfo.CATCARELOG_CARESTART}" name="CATCARELOG_CARESTART">
						</td>
						<td class="reserve_info_key">냥박 종료</td>
						<td class="reserve_info_value">
							<input type="text" value="${catcarelogInfo.CATCARELOG_CAREEND}" name="CATCARELOG_CAREEND">
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div id="payreservation_head">
			제목 : <input type="text" value="${catcarelogInfo.CATCARELOG_TITLE}" name="CATCARELOG_TITLE"> 
		</div>
		<div>
			<textarea id="summernote" name="CATCARELOG_CONTENT">
				${catcarelogInfo.CATCARELOG_CONTENT}
			</textarea>
		</div>
		<div id="payreservation_head">
		</div>
		<div id="care_buttons">
		<div class="btn btn-primary btn-icon-split" id="care_golistbt">
			<span class="icon text-white-50">
				<i class="fas fa-flag"></i>
			</span>
			<span class="text">리스트로</span>
		</div>
		<div class="btn btn-success btn-icon-split" id="care_updatebt">
			<span class="icon text-white-50">
				<i class="fas fa-check"></i>
			</span>
			<span class="text">수정완료</span>
		</div>
		<div class="btn btn-danger btn-icon-split" id="care_canclebt">
			<span class="icon text-white-50">
				<i class="fas fa-trash"></i>
			</span>
			<span class="text">수정취소</span>
		</div>
		</div>
	</div>
	</div>
	</form>
</body>
</html>