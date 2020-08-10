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
.category_buttons{
	margin-left: 77%;
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
.hide_col1{
	text-align: center;
}
</style>
<script type="text/javascript">
      $(document).ready(function(){
         $(".hide").hide();
         $(".body_col3").click(function() {
        	 const clickask = $(this);
        	 const clickanswer = clickask.parent().next();
        	 clickanswer.slideToggle("fast");
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
                    		<span class="text">질문 추가</span>
                 			</a>
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
										<td class="body_col1"><input type="checkbox" class="category_checkbox" data-no="${category.CATEGORY_NO}" data-use="${category.CATEGORY_USE}"></td>
										<td class="body_col2">${faq.CATEGORY_NAME}</td>
										<td class="body_col3">${faq.FAQ_ASK}</td>
								<c:choose>
									<c:when test="${faq.FAQ_USE eq 1}">
										<td class="body_col4">사용중</td>	
									</c:when>
									<c:when test="${faq.FAQ_USE eq 0}">
										<td class="body_col4">미사용중</td>
									</c:when>
								</c:choose>
									</tr>
									<tr class="hide">
										<td class="hide_col1" colspan="1">답변</td>
										<td class="hide_col1" colspan="3">${faq.FAQ_ANSWER}</td>
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
                    		<span class="text">질문 삭제</span>
                 		</div>
					</div><!--  category_buttonsend -->
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
</html>