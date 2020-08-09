<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.js"></script>

<style type="text/css">
.usecolor_y{
	color: blue;
	font-weight: bold;
}
.usecolor_n{
	color: red;
	font-weight: bold;
}
.head_text{
	font-weight: bold;
}
.category_buttons{
	float: right;
}
</style>
<script type="text/javascript">
$(function() {
	$("#all_checkbox").click(function() {
		if ($("#all_checkbox").prop("checked")) {
			$(".category_checkbox").prop("checked",true);			
		}else{
			$(".category_checkbox").prop("checked",false);
		}
	});
	$('.use-cell').click(function() {
		const $this = $(this);
		const value = $this.data('no');
		console.log(value);
		 $.ajax({
				url: '/omyogamyo/updateCategory.mdo',
				method: 'post',
				data: {
					CATEGORY_NO:value,
					CATEGORY_USE:$this.text() == '사용중' ? '0' : '1'
				},
				success: function() {
					location.reload(true);
				},
				error: function(err) {
					alert('변경에 실패하셧습니다.');
				}
			}) ;
	});
	$("#change_button").click(function() {
	
		const checkArray = new Array();
		const useynArray = new Array();
		$(".category_checkbox:checked").each(function() {
			const useyn = $(this).data('use') == 1 ? 0 : 1;
			checkArray.push($(this).data('no'));
			useynArray.push(useyn);
		});

		$.ajax({
			url: '/omyogamyo/updateManyCategory.mdo',
			method: 'post',
			data: {
				checkList:checkArray,
				useList:useynArray
			},
			success: function() {
				location.reload(true);
			},
			error: function(err) {
				alert('변경에 실패하셧습니다.');
			}
		}) ;

	});
	$("#del_button").click(function() {
		
		const checkArray = new Array();
		$(".category_checkbox:checked").each(function() {
			checkArray.push($(this).data('no'));
		});
		$.ajax({
			url: '/omyogamyo/deleteCategory.mdo',
			method: 'post',
			data: {
				checkList:checkArray,
			},
			success: function() {
				location.reload(true);
			},
			error: function(err) {
				alert('삭제에 실패하셧습니다.');
			}
		}) ;

	});
	
});
</script>
</head>
<body>
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
						<h4 class="m-0 font-weight-bold text-primary">카테고리</h4>
					</div>
					<div class="card-body">
					
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
								<thead>
									<tr>
										<th><input type="checkbox" id="all_checkbox"></th>
										<th class="head_text">번호</th>
										<th class="head_text">카테고리명</th>
										<th class="head_text">카테고리 사용여부</th>
									</tr>
								</thead>
								<tbody>
								<c:forEach var="category" items="${categoryList}" varStatus="num">
									<tr>
										<td><input type="checkbox" class="category_checkbox" data-no="${category.CATEGORY_NO}" data-use="${category.CATEGORY_USE}"></td>
										<td>${category.CATEGORY_NO}</td>
										<td>${category.CATEGORY_NAME}</td>
								<c:choose>
									<c:when test="${category.CATEGORY_USE eq 1}">
										<td class="usecolor_y use-cell" data-no="${category.CATEGORY_NO}" >사용중</td>	
									</c:when>
									<c:when test="${category.CATEGORY_USE eq 0}">
										<td class="usecolor_n use-cell" data-no="${category.CATEGORY_NO}">미사용중</td>
									</c:when>
								</c:choose>
									</tr>
								</c:forEach>
								</tbody>
							</table>
						</div>
					<div class="category_buttons">	
				    <div class="btn btn-success btn-icon-split category_button" id="change_button">
                    <span class="icon text-white-50">
                      <i class="fas fa-check"></i>
                    </span>
                    <span class="text">사용여부 변경</span>
                    </div>
					<div class="btn btn-danger btn-icon-split category_button" id="del_button">
                    <span class="icon text-white-50">
                      <i class="fas fa-trash"></i>
                    </span>
                    <span class="text">카테고리 삭제</span>
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