<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.js"></script>
<!-- jQuery Modal -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />

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
#insert_button{
	margin-bottom: 1%;
}
#modal_wrap{
	height: 75%;
	overflow-y: initial !important;
	overflow-y: auto;
}
.modal_input{
	display: flex;
	flex-direction: row;
	margin-top: 3%;
}
.modal_content{
	border: .15rem solid #36b9cc!important;
	padding-bottom: 4%;
	padding-left: 3%;
	margin-bottom: 3%;
}
#modal_buttons{
	float : right;
	margin-top: 5%;
}
.modal_input_key{
	width: 33%;
	font-weight: bold;
}
.fab_plus {
   width: 47px;
   height: 47px;
   background-color: #36b9cc;
   border-radius: 50%;
   box-shadow: 0 4px 7px 0 #666;
   
   font-size: 33px;
   line-height: 47px;
   color: white;
   text-align: center;
   
   right: 33px;
   bottom: 33px;
   
}

.fab_plus:hover {
   box-shadow: 0 4px 10px 0 #666;
   transform: scale(1.05);
   cursor: pointer;
}
.fab_minus {
   margin-left: 35%;
   width: 35px;
   height: 35px;
   background-color: red;
   border-radius: 50%;
   box-shadow: 0 3px 5px 0 #666;
   
   font-size: 25px;
   line-height: 35px;
   color: white;
   text-align: center;
   
   right: 25px;
   bottom: 25px;
   
}

.fab_minus:hover {
   box-shadow: 0 3px 7px 0 #666;
   transform: scale(1.05);
   cursor: pointer;
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
	<!-- 하나 업데이트하는거-->
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
	<!-- 인서트 하는거-->
	$('#modal_insertbt').click(function() {
		const nameArray = new Array();
		const useArray = new Array();
		$(".modal_name").each(function() {
			nameArray.push($(this).val());
		});
		$(".modal_use").each(function() {
			useArray.push($(this).val());
		});
		$.ajax({
				url: '/omyogamyo/insertCategory.mdo',
				method: 'post',
				data: {
					nameList:nameArray,
					useList:useArray
				},
				success: function() {
					location.reload(true);
				},
				error: function(err) {
					alert('추가에 실패하셧습니다.');
				}
			}) ;
	});
	
	<!-- 여러개 업데이트하는거-->
	
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
	<!-- 여러개 삭제하는거-->
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

	<!-- + - 버튼으로 입력양식 추가 제거 -->
	var insert_form = $('#modal_contents').html();
	$('.fab_plus').click(function() {
		$('#modal_contents').append(insert_form);
		$('.fab_minus').off();
		$('.fab_minus').click(function() {
			const click_form = $(this);
			const remove_form = $(click_form).parent().parent(); 
			$(remove_form).remove();
		});
	});
	$('.fab_minus').click(function() {
		const click_form = $(this);
		const remove_form = $(click_form).parent().parent(); 
		$(remove_form).remove();
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
						    <a class="btn btn-primary btn-icon-split" id="insert_button" href="#modal_wrap" rel="modal:open">
  			                  <span class="icon text-white-50">
            		          <i class="fas fa-check"></i>
                  			  </span>
                    		<span class="text">카테고리 추가</span>
                 			</a>
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
<div id="modal_wrap" class="modal">
  	<h2>카테고리 추가</h2>
	<div id="modal_contents">
		<div class="modal_content">
			<div class="modal_input">
				<div class="modal_input_key">카테고리명</div>
				<div class="modal_input_value"><input type="text" class="modal_name" required="required"></div>
			</div>
			<div class="modal_input">
				<div class="modal_input_key">사용여부</div>
				<div class="modal_input_value">
				<select class="modal_use">
				<option value=1>사용함</option>
				<option value=0>사용안함</option>
				</select>
				</div>
				<div class="fab_minus"> - </div>
			</div>
		</div>
	</div>
	<div id="modal_plus" align="right">
	<div class="fab_plus"> + </div>
	</div>
	<div id="modal_buttons">  			
 			<div class="btn btn-primary btn-icon-split" id="modal_insertbt">
            <span class="text">추가</span>
            </div><!-- end 추가버튼 -->
            <a class="btn btn-danger btn-icon-split " rel="modal:close" id="modal_cancle"  href="#">
            <span class="text">취소</span>
            </a><!-- end 취소버튼 -->
	</div><!-- end modal_buttons -->
</div><!-- end modal_wrap -->
</html>