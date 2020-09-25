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
<link rel="stylesheet" type="text/css"
	href="resources/style/getRoomReservation/getReser.css">
<link rel="stylesheet" type="text/css"
	href="resources/style/getRoomReservation/getReser2.css">
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
<script type="text/javascript">
	$(document).ready(function() {
		$("#care_golistbt").click(function() {
			window.location.href = 'catCareLogList.mdo';
		});
		$("#care_deletebt").click(function() {
			const careno = $("#CATCARELOG_NO").val();
			window.location.href = 'deleteCatCareLog.mdo?CATCARELOG_NO=' + careno;
		});
		$("#care_updatebt").click(function() {
			const careno = $("#CATCARELOG_NO").val();
			window.location.href = 'updateCatCareLog.mdo?CATCARELOG_NO=' + careno;
		});
		
	});
</script>
<body>
<input type="hidden" id="CATCARELOG_NO" value="${catcarelogInfo.CATCARELOG_NO}">
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
						<td class="reserve_info_value">${catcarelogInfo.CATCARELOG_NO}</td>
						<td class="reserve_info_key">고객 아이디</td>
						<td class="reserve_info_value">${catcarelogInfo.MEMBER_ID}</td>
					</tr>
					<tr>
						<td class="reserve_info_key">냥박 시작</td>
						<td class="reserve_info_value">${catcarelogInfo.CATCARELOG_CARESTART}</td>
						<td class="reserve_info_key">냥박 종료</td>
						<td class="reserve_info_value">${catcarelogInfo.CATCARELOG_CAREEND}</td>
					</tr>
					<tr>
						<td class="reserve_info_key">작성자</td>
						<td class="reserve_info_value">${catcarelogInfo.WRITER_ID}</td>
						<td class="reserve_info_key">작성일시</td>
						<td class="reserve_info_value">
						<fmt:formatDate value="${catcarelogInfo.CATCARELOG_REGDATE}" type="date" pattern="yyyy년 MM월 dd일"/>/
						<fmt:formatDate value="${catcarelogInfo.CATCARELOG_REGDATE}" type="date" pattern="hh시 mm분 ss초"/>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div id="payreservation_head">
			제목 : ${catcarelogInfo.CATCARELOG_TITLE}
		</div>
		<div>
			${catcarelogInfo.CATCARELOG_CONTENT}
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
			<span class="text">냥박일지 수정</span>
		</div>
		<div class="btn btn-danger btn-icon-split" id="care_deletebt">
			<span class="icon text-white-50">
				<i class="fas fa-trash"></i>
			</span>
			<span class="text">냥박일지 삭제</span>
		</div>
		</div>
	</div>
	</div>
</body>
</html>