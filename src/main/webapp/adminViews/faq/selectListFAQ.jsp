<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- jQuery ajax -->
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.js"></script>
<!-- jQuery Modal -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<!-- 페이징 디자인  -->
<link type="text/css" rel="stylesheet" href="resources/style/review/reviewListBoard.css">
<style type="text/css">

.head_col1{
	width: 8%;
}
.head_col2{
	width: 17%;
}
.head_col3{
	width: 60%;
}
.head_col4{
	width: 15%;
}
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
.faq_buttons{
	margin-left: 73%;
}
#insert_button{
	margin-bottom: 1%;
}
#modal_wrap{
	height: 75%;
	width : 30%;
	overflow-y: initial !important;
	overflow-y: auto;
}
.modal_input{
	display: flex;
	flex-direction: row;
	margin-top: 3%;
}
.modal_input2{
	display: flex;
	flex-direction: column;
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
.body_col3:hover{
	cursor: pointer;
}
#upper_table{
	display: flex;
	flex-direction: row;
	margin-bottom: 1%;
}
#upper_table_right{
	margin-left: 73%;
}
.modal{
	max-width: none;
}
.modal_ask{
	margin-top : 1%;
	width: 85%;
}
.modal_answer{
	margin-top : 1%;
	width: 85%;
}
.body_col4{
	cursor: pointer;
}
.hide_col3{
	cursor: pointer;
	color: black;
	font-weight: bold;
}
.hide_col2{
	cursor: pointer;
}
.hide2_col3{
	cursor: pointer;
	color: black;
	font-weight: bold;
}
.hide_textarea{
	width: 70%;

}
</style>
<script type="text/javascript">
	$(document).ready(function(){
 	   	$(".hide").hide();
 	    $(".hide2").hide();
    	/*   질문내용 클릭시 답변 보이고 닫히는거     */
        $(".body_col3").click(function() {
        	const clickask = $(this);
        	const clickanswer = clickask.parent().next();
        	clickanswer.slideToggle("fast");
        	clickanswer.next().hide("fast");
		});
    	/* 질문답변 클릭시 답변 닫히는거*/
        $(".hide_col2").click(function() {
			const clickanswer = $(this).parent();
			clickanswer.slideToggle("fast");
		});
    	
    	/* 수정하기 클릭시 수정폼생기면서 답변칸 사라짐  */
       	$(".hide_col3").click(function() {
       		const clickanswer = $(this).parent();
       		const updateform = $(this).parent().next();
			clickanswer.slideToggle("fast");
			updateform.slideToggle("fast");
		});
        
        /*   맨위 체크박스 클릭시 전부다 체크되는거    */ 
     	$("#all_checkbox").click(function() {
    		if ($("#all_checkbox").prop("checked")) {
    			$(".category_checkbox").prop("checked",true);			
    		}else{
    			$(".category_checkbox").prop("checked",false);
    		}
    	});
		
        /* 카테고리 종류 선택시  페이지 다시 불러오는거*/         
      	$("#category_selector").change(function() {
			const val = $(this).val();
			window.location.href = 'selectListFAQ.mdo?FAQ_CATEGORYNUM='+val;
		});
      	
      	/* 인서트 하는거 */
    	$('#modal_insertbt').click(function() {
    		const categoryArray = new Array();
    		const useArray = new Array();
    		const askArray = new Array();
    		const answerArray = new Array();
    		
    		$(".modal_category").each(function() {
    			categoryArray.push($(this).val());
    		});
    		$(".modal_use").each(function() {
    			useArray.push($(this).val());
    		});
    		$(".modal_ask").each(function() {
    			askArray.push($(this).val());
    		});
    		$(".modal_answer").each(function() {
    			answerArray.push($(this).val());
    		});
    		$.ajax({
    				url: '/omyogamyo/insertFAQ.mdo',
    				method: 'post',
    				data: {
    					categoryList:categoryArray,
    					useList:useArray,
    					askList:askArray,
    					answerList:answerArray
    				},
    				success: function() {
    					location.reload(true);
    				},
    				error: function(err) {
    					alert('추가에 실패하셧습니다.');
    				}
    			}) ;
    	});
        
      	/* 하나 답변 업데이트 */ 
      	$(".hide2_col3").click(function() {
			const value = $(this).prev().children().val();
			const value_no =$(this).prev().children().data('no');
      		 $.ajax({
 				url: '/omyogamyo/updateFAQ.mdo',
 				method: 'post',
 				data: {
 					FAQ_NO : value_no,
 					FAQ_ANSWER:value
 				},
 				success: function() {
 					location.reload(true);
 				},
 				error: function(err) {
 					alert('변경에 실패하셧습니다.');
 				}
 			});
 		 });
      		
        /* 하나  사용여부 업데이트  */
      	$('.body_col4').click(function() {   
    		const $this = $(this);
    		const value = $this.data('no');
    		console.log(value);
    		 $.ajax({
    				url: '/omyogamyo/updateFAQ.mdo',
    				method: 'post',
    				data: {
    					FAQ_NO:value,
    					FAQ_USE:$this.text() == '사용중' ? '0' : '1'
    				},
    				success: function() {
    					location.reload(true);
    				},
    				error: function(err) {
    					alert('변경에 실패하셧습니다.');
    				}
    			});
    		 });
      	
      	/* 여러개 업데이트  */
      	$("#change_button").click(function() {
      		
    		const checkArray = new Array();
    		const useynArray = new Array();
    		$(".category_checkbox:checked").each(function() {
    			const useyn = $(this).data('use') == 1 ? 0 : 1;
    			checkArray.push($(this).data('no'));
    			useynArray.push(useyn);
    		});
    		$.ajax({
    			url: '/omyogamyo/updateManyFAQ.mdo',
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
      	
      	/* 여러개 삭제하는거  */
    	$("#del_button").click(function() {
    		
    		const checkArray = new Array();
    		$(".category_checkbox:checked").each(function() {
    			checkArray.push($(this).data('no'));
    		});
    		$.ajax({
    			url: '/omyogamyo/deleteFAQ.mdo',
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
    	/* + - 버튼으로 입력양식 추가 제거  */
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
      	
      	
	}); /* end document ready */
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
						<h4 class="m-0 font-weight-bold text-primary">FAQ</h4>
					</div>
					<div class="card-body">
					
						<div class="table-responsive">
						    <div id="upper_table">
						    <div id="upper_table_left">
						    
						    	<a class="btn btn-primary btn-icon-split" id="insert_button" href="#modal_wrap" rel="modal:open">
  			                  		<span class="icon text-white-50">
            		          		<i class="fas fa-check"></i>
                  				    </span>
                    				<span class="text">질문 추가</span>
                 				</a>
                 			
                 			</div>
                 			
                 			<div id="upper_table_right">
                 			<select id="category_selector">
                 					<option value="" selected disabled hidden >선택해주세요</option>
                 					<option value=0>전체보기</option>
                 				<c:forEach var="category" items="${categoryList}">
                 					<option value="${category.CATEGORY_NO}">${category.CATEGORY_NAME}</option>
                 				</c:forEach>
                 				<!-- 
                 				<option value="" selected disabled hidden >선택해주세요.</option>
								<option value=0>전체보기</option>
								<option value=1>상품문의</option>
								<option value=2>유치원문의</option> -->
							</select>
                 			</div>
                 			</div>
							<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
								<thead>
									<tr>
										<th class="head_col1"><input type="checkbox" id="all_checkbox"></th>
										<th class="head_text head_col2">카테고리</th>
										<th class="head_text head_col3">질문 내용</th>
										<th class="head_text head_col4">질문 사용여부</th>
									</tr>
								</thead>
								<tbody>
								<c:forEach var="faq" items="${faqList}" varStatus="num">
									<tr>
										<td class="body_col1"><input type="checkbox" class="category_checkbox" data-no="${faq.FAQ_NO}" data-use="${faq.FAQ_USE}"></td>
										<td class="body_col2">${faq.CATEGORY_NAME}</td>
										<td class="body_col3">${faq.FAQ_ASK}</td>
								<c:choose>
									<c:when test="${faq.FAQ_USE eq 1}">
										<td class="body_col4 usecolor_y" data-no="${faq.FAQ_NO}">사용중</td>	
									</c:when>
									<c:when test="${faq.FAQ_USE eq 0}">
										<td class="body_col4 usecolor_n" data-no="${faq.FAQ_NO}">미사용중</td>
									</c:when>
								</c:choose>
									</tr>
									<tr class="hide">
										<td></td>
										<td class="hide_col1">답변</td>
										<td class="hide_col2">${faq.FAQ_ANSWER}</td>
										<td class="hide_col3">수정하기</td>
									</tr>
									<tr class="hide2">
										<td></td>
										<td class="hide2_col1">답변</td>
										<td class="hide2_col2">
											<textarea rows="3" class="hide_textarea" data-no="${faq.FAQ_NO}">${faq.FAQ_ANSWER}</textarea>
										</td>
										<td class="hide2_col3">수정완료</td>
									</tr>
								</c:forEach>
								</tbody>
							</table>
						</div>
					<div class="faq_buttons">	
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
                    		<span class="text">질문 삭제</span>
                 		</div>
					</div><!--  faq_buttonsend -->
					<div class="reviewList_page00">
						<a href="selectListFAQ.mdo" class="reviewList_page01">&lt;&lt;</a>
						<a href="selectListFAQ.mdo?page=${navi.startPageGroup-1}" class="reviewList_page01">&lt;</a>
						<c:forEach var="counter" begin="${navi.startPageGroup}" end="${navi.endPageGroup}">
							<c:if test="${page == counter}">	
								<a href="selectListFAQ.mdo?page=${counter}" class="reviewList_page" style="background-color: orange">&nbsp;&nbsp;${counter}</a>
							</c:if>
							<c:if test="${page != counter}">
								<a href="selectListFAQ.mdo?page=${counter}" class="reviewList_page" >&nbsp;&nbsp;${counter}</a>
							</c:if>
						</c:forEach>
						<a href="selectListFAQ.mdo?page=${navi.endPageGroup+1}" class="reviewList_page01">&gt;</a> 
						<a href="selectListFAQ.mdo?page=${navi.totalRecordsCount}" class="reviewList_page01">&gt;&gt;</a>
					</div><!-- end paging -->
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
  	<h2>질문</h2>
	<div id="modal_contents">
		<div class="modal_content">
			<div class="modal_input">				
				<div class="modal_input_key">카테고리</div>
				<div class="modal_input_value">
					<select class="modal_category">
                		<c:forEach var="category" items="${categoryList}">
                 		<option value="${category.CATEGORY_NO}">${category.CATEGORY_NAME}</option>
                 		</c:forEach>
					</select>
				</div>
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
			<div class="modal_input2">
				<div class="modal_input_key">질문</div>
				<div class="modal_input_value">
					<input type="text" class="modal_ask">
				</div>
		    </div>
		    <div class="modal_input2">
				<div class="modal_input_key">답변</div>
				<div class="modal_input_value">
					<textarea class="modal_answer" rows="3"></textarea>
				</div>
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