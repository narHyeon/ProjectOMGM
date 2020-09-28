<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: YongSun Jang
  Date: 2020-07-31
  Time: 오후 4:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>Title</title>
	<style>
		#memberTable div {
			display: flex;
			justify-content: flex-end;
		}
		#memberTable div input {
			width: 20%;
			margin: 10px;
		}
		#memberTable_drop {
			margin: 10px;
		}

		.memberTable_pagination {
			display: flex;
			flex-direction: row;
			justify-content: center;
		}
		.memberTable_pagination ul {
			display: flex;
			flex-direction: row;
		}

	</style>
</head>
<body>
	<!-- DataTales Example -->
	<div class="card shadow mb-4">
		<div class="card-header py-3">
			<h6 class="m-0 font-weight-bold text-info">픽업 서비스 관리</h6>
		</div>
		<div class="card-body">
			<div id="memberTable" class="table-responsive">
				<div>
					<%--  드롭박스  --%>
					<span id="memberTable_drop" class="dropdown mb-4">
                    <button class="btn btn-info dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        검색조건
                    </button>
                    <span class="dropdown-menu animated--fade-in" aria-labelledby="dropdownMenuButton">
                        <a class="dropdown-item" href="#" onClick="selectBox(event)">예약번호</a>
                        <a class="dropdown-item" href="#" onClick="selectBox(event)">예약자 ID</a>
                    </span>
                </span>
					<%--  드롭박스  --%>
					<input type="text" onkeyup="filter()" id="memberTable_search" placeholder="예약자 ID로 검색" class="form-control bg-light border-0 small">
				</div>
		<div class="card-body">
			<div class="table-responsive">
				<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
					<thead>
						<tr>
							<th>예약번호</th>
							<th>예약자 ID</th>
							<th>예약날짜</th>
							<th>예약시간</th>
							<th>픽업할주소</th>
							<th>연락처</th>
							<th>동승자여부</th>
							<th>반려동물 종류</th>
							<th>특이사항</th>
						</tr>
					</thead>
					<tbody id="memberTable_tbody">
					<c:forEach var="pickUp" items="${pickUp}" varStatus="status" >
						<tr class="ROOMRESERVATION_NO">
							<th class="pickupNo" id="ROOMRESERVATION_NO">${pickUp.ROOMRESERVATION_NO}</th>
							<th class="pickupId" >${pickUpInfo[status.index].id}</th>
							<th>${pickUp.ROOMRESERVATION_PAYDAY}</th>
							<th>${pickUp.ROOMRESERVATION_PICKUPTIME}</th>
							<th>${pickUp.ROOMRESERVATION_PICKUPADDRESS}</th>
							<th>${pickUp.ROOMRESERVATION_PICKUPPHONENUM}</th>
							<th>${pickUp.ROOMRESERVATION_PICKUPOWNER}</th>
							<th>${pickUp.ROOMRESERVATION_PICKUPANIMAL}</th>
							<th>${pickUp.ROOMRESERVATION_PICKUPNOTE}</th>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
			</div>
		</div>
	</div>
	<%--  pagination --%>
	<div class="memberTable_pagination">
		<ul class="paginate_button page-item previous disabled"> <a href="#" class="page-link" onclick="paging(event,currentPage-1)">Prev</a> </ul>
		<ul></ul>
		<ul class="paginate_button page-item next"> <a href="#" class="page-link"  onclick="paging(event,currentPage+1)">Next</a> </ul>
	</div>

	<script>
		let className = 'pickupId';
		function filter() {
			let value, name, item, i;
			value = document.querySelector("#memberTable_search").value.toUpperCase();
			item = document.getElementsByClassName("ROOMRESERVATION_NO");

			if(value === '') {
				paging(event,currentPage);
				return;
			}

			for(i=0; i<item.length; i++){
				name = item[i].getElementsByClassName(className);
				if(name[0].innerHTML.toUpperCase().indexOf(value) > -1) {
					item[i].style.display = '';
				} else {
					item[i].style.display = 'none';
				}
			}
		}
		function selectBox(event) {
			event.preventDefault();

			document.querySelector('#memberTable_search').value = '';
			document.querySelectorAll('.ROOMRESERVATION_NO').forEach(item => item.style.display = '');

			paging(event,currentPage);

			const name = event.target.innerText;
			switch(name) {
				case '예약번호':
					document.querySelector('#memberTable_search').setAttribute('placeholder',name+'로 검색');
					className = 'pickupNo';
					break;
				case '예약자 ID':
					document.querySelector('#memberTable_search').setAttribute('placeholder',name+'로 검색');
					className = 'pickupId';
					break;
				// default :
				// 	document.querySelector('#memberTable_search').setAttribute('placeholder',name+'로 검색');
				// 	className = 'pickupId';
				// 	break;
			}
		}

		// 페이지네이션 관련
		let tbody; // 페이지네이션 몸체
		let page; // 페이지 블럭 몸체
		let contentCount1 = 0; // 페이지 총 수
		let pageCount = 0; // 그룹 총 수

		let currentPage = 1; // 현재 페이지

		const prev = document.querySelector('.memberTable_pagination ul:nth-child(1)');
		const next = document.querySelector('.memberTable_pagination ul:nth-child(3)');

		// 초기화 작업
		window.addEventListener('DOMContentLoaded', () => {
			tbody = document.querySelectorAll('#memberTable_tbody tr');

			tbody.forEach((item,index) => {
				contentCount1++;
				if(index >= 8) item.style.display = 'none';
			});

			page = document.querySelector('.memberTable_pagination ul:nth-child(2)');
			pageCount = Math.ceil(contentCount1/8); // 올림

			pagination();
		});

		// 페이징 처리
		function paging(event,count) {
			event.preventDefault();
			currentPage = count;

			pagePick(count);

			tbody.forEach((item,index) => {
				index++;
				if((8*count)-8 < index && index <= 8*count) item.style.display = '';
				else item.style.display = 'none';
				if(count === 1) {
					prev.classList.toggle('disabled',true);
					next.classList.toggle('disabled',false);
				} else if(count === pageCount) {
					next.classList.toggle('disabled',true);
					prev.classList.toggle('disabled',false);
				} else {
					prev.classList.toggle('disabled',false);
					next.classList.toggle('disabled',false);
				}
			});
		}

		// 페이지그룹 생성
		function pagination() {
			for(let i=1; i<=pageCount; i++) {
				page.innerHTML += `
                <li class="paginate_button page-item">
                    <a class="page-link" href="#" onclick="paging(event,`+i+`)">`+i+`</a>
                </li>`;
				if(i === 1) pagePick(1);
			}
		}

		// 페이지 그룹 색상 변경
		function pagePick(count) {
			page.querySelectorAll(`li`).forEach((item,index) => {
				if(count === index+1) item.classList.toggle('active',true);
				else item.classList.toggle('active',false);
			});
		}
	</script>
</body>
</html>
