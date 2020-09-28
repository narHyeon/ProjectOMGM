<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.use_soon{
	color: #5AC351;
}
.use_done{
	color: #FF1300;
}
.use_using{
	color: #008DFF;
}
.reviewList_page00{
	margin-bottom: 2%;
}
.reservation_row{
	cursor: pointer;
}
tr.reservation_row td{
	border-bottom: 3px solid #ddd;
}
.reservation_head_th{
	color: black;
	font-weight: bold;
}
#reservation_head1{
	width: 10%;
}
#reservation_head2{
	width: 10%;
}
#reservation_head3{
	width: 10%;
}
#reservation_head4{
	width: 20%;
}
#reservation_head5{
	width: 30%;
}
#reservation_head6{
	width: 20%;
}

#catcarelog_insert_bt{
	float :right;
	margin-right: 1%;
}
.catcarelog_head{
	 background-color: #B7F6EC; 
}
.catcarelog_row{
	height: 10px;
}
.catcarelog_col{
	height: 10px;
	font-size: 12px;
}

.catcarlog_tbody{
	border: 3px solid #36b9cc;
}
.catcarlog_thead{
	border: 2px solid #36b9cc;
}
.catcarelog_row{
	cursor: pointer;
}

</style>
	<link rel="stylesheet" href="resources/admin/css/productListAdmin.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$(".catcarlog_thead").hide();
		$(".catcarlog_tbody").hide();	

		$(".reservation_col").click(function() {
			const selectedTD = $(this);
			const selectedTR = selectedTD.parent();
			const reserNo = selectedTR.data("reserno");
			if (selectedTR.children(".use_status").text() == "이용예정" ? false : true) {
				getCatcareLogListByReserNo(reserNo);
			}else {
				alert("이용예정인 서비스의 냥박일지는 볼수 없습니다.")
			}
		});
		$("#catcarelog_insert_bt").click(function() {
			if ($('input:radio[name="chk_reserve"]').is(':checked')) {
				const reserveNo = $('input[name="chk_reserve"]:checked').val();
				const userno = $('input[name="chk_reserve"]:checked').data("userno");
				const userid = $('input[name="chk_reserve"]:checked').data("userid");
				window.location.href = 'writeCatCareLog.mdo?CATCARELOG_SERVICENUM=' + reserveNo +"&CATCARELOG_USERNUM=" + userno +  "&MEMBER_ID=" + userid ;
				
			}else {
				alert("냥박일지를 작성할 서비스를 선택해 주세요.");
			}
		});
		$(".catcarelog_row").click(function() {
			const selectedTR = $(this);
			const careno = selectedTR.data("careno"); 
			window.location.href = 'getCatCareLog.mdo?CATCARELOG_NO='+careno ;
		});
		
	});
	
	
	function getCatcareLogListByReserNo(reserNo) {
		$("#catcarlog_thead_" + reserNo +"").slideToggle("fast");
		$("#catcarlog_tbody_" + reserNo +"").slideToggle("fast");
	}	
</script>
</head>
<body>
<div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">냥박 리스트</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th class="reservation_head_th" id="reservation_head1">선택</th>	
                      <th class="reservation_head_th" id="reservation_head2">상태</th>
                      <th class="reservation_head_th" id="reservation_head3">예약번호</th>
                      <th class="reservation_head_th" id="reservation_head4">고객아이디</th>
                      <th class="reservation_head_th" id="reservation_head5">방이름</th>
                      <th class="reservation_head_th" id="reservation_head6">숙박일자</th>
                    </tr>
					</thead>
					<c:forEach var="reservation" items="${roomReservationList}">
					<tbody>
					<tr class="reservation_row" data-reserno="${reservation.ROOMRESERVATION_NO}">
					<td><input type="radio" name="chk_reserve" value="${reservation.ROOMRESERVATION_NO}" class="chk_reserve" data-userno="${reservation.ROOMRESERVATION_MEMBERNO}" data-userid="${reservation.MEMBER_ID}"></td>
					<c:set var="todayTime"><fmt:formatDate value="${reservation.ROOMRESERVATION_NOWDATE}" pattern="yyyy-MM-dd"/></c:set> 
					<c:set var="stayTime"><fmt:formatDate value="${reservation.ROOMRESERVATION_STAYDAY}" pattern="yyyy-MM-dd"/></c:set>
					<c:choose>
						<c:when test="${stayTime gt todayTime}">
							<td class="use_soon reservation_col" >이용예정</td>																					
						</c:when>
						<c:when test="${stayTime lt todayTime}">
						<td class="use_done reservation_col">이용완료</td>
						</c:when>
						<c:otherwise>
						<td class="use_using reservation_col">이용중</td>
						</c:otherwise>
						</c:choose>
						<td class="reservation_col">${reservation.ROOMRESERVATION_NO}</td>
						<td class="reservation_col">${reservation.MEMBER_ID}</td>
						<td class="reservation_col">${reservation.ROOMRESERVATION_ROOMNAME}</td>
						<td class="reservation_col">
							<fmt:formatDate value="${reservation.ROOMRESERVATION_STAYDAY}" type="date" pattern="yyyy/MM/dd"/>
						</td>
                    </tr>
                   </tbody> 
                   <c:set value="${reservation.catCareList}" var="catcarelogList"/>
						<c:choose>
							<c:when test="${fn:length(catcarelogList) ne 0}">
								<thead id="catcarlog_thead_${reservation.ROOMRESERVATION_NO}" class="catcarlog_thead">
									<tr id="catcarelog_tr_head">
										<th class="reservation_head_th catcarelog_head" id="reservation_head1">냥박번호</th>
										<th class="reservation_head_th catcarelog_head" id="reservation_head2">냥박시작</th>
										<th class="reservation_head_th catcarelog_head" id="reservation_head3">냥박종료</th>
										<th class="reservation_head_th catcarelog_head" id="reservation_head4">작성자</th>
										<th class="reservation_head_th catcarelog_head" id="reservation_head5">냥박제목</th>
										<th class="reservation_head_th catcarelog_head" id="reservation_head6">작성일시</th>
									</tr>
								</thead>
								<tbody id="catcarlog_tbody_${reservation.ROOMRESERVATION_NO}" class="catcarlog_tbody">
									<c:forEach items="${catcarelogList}" var="catcarlog">
									<tr class="catcarelog_row" data-careno="${catcarlog.CATCARELOG_NO}">
										<td class="catcarelog_col">${catcarlog.CATCARELOG_NO}</td>
										<td class="catcarelog_col">${catcarlog.CATCARELOG_CARESTART}</td>
										<td class="catcarelog_col">${catcarlog.CATCARELOG_CAREEND}</td>
										<td class="catcarelog_col">${catcarlog.WRITER_ID}</td>
										<td class="catcarelog_col">${catcarlog.CATCARELOG_TITLE}</td>
										<td class="catcarelog_col">
											<fmt:formatDate value="${catcarlog.CATCARELOG_REGDATE}" type="date" pattern="yyyy년 MM월 dd일"/>/
											<fmt:formatDate value="${catcarlog.CATCARELOG_REGDATE}" type="date" pattern="hh시 mm분"/>
										</td>
									</tr>
						</c:forEach>
					</tbody>
								</c:when>
								</c:choose>
                   
                 </c:forEach>   
                </table>
              </div>
            </div>
            <div id="catcarelog_buttons">
				<div class="btn btn-primary btn-icon-split" id="catcarelog_insert_bt">
					<span class="icon text-white-50">
						<i class="fas fa-check"></i>
                    </span>
					<span class="text">냥박일지 작성</span>
				</div>
            </div>

	<div class="pro_paging" >
		<ul>
			<li class="first"><a href="roomReservationList.mdo" class="reviewList_page01"><span class="hide">첫페이지</span></a></li>
			<li class="prev"><a href="roomReservationList.mdo?page=${navi.startPageGroup-1}" class="reviewList_page01"><span class="hide">이전페이지</span></a></li>
			<c:forEach var="counter" begin="${navi.startPageGroup}" end="${navi.endPageGroup}">
				<c:if test="${page == counter}">
					<a href="roomReservationList.mdo?page=${counter}" style="background-color:lightskyblue ">&nbsp;${counter}</a>
				</c:if>
				<c:if test="${page != counter}">
					<a href="roomReservationList.mdo?page=${counter}" >&nbsp;${counter}</a>
				</c:if>
			</c:forEach>
			<li class="next"><a href="roomReservationList.mdo?page=${navi.endPageGroup+1}" class="reviewList_page01"><span class="hide">다음페이지</span></a></li>
			<li class="last"><a href="roomReservationList.mdo?page=${navi.totalRecordsCount}" class="reviewList_page01"><span class="hide">마지막페이지</span></a></li>
		</ul>
	</div><!-- end paging -->
		</div>
</body>
</html>