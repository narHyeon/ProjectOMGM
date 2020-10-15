<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%--
  Created by IntelliJ IDEA.
  User: YongSun Jang
  Date: 2020-07-31
  Time: 오전 9:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>장난감 상품조회</title>
<%--    <link type="text/css" rel="stylesheet" href="resources/admin/css/productInquiry.css">--%>
<script src="resources/admin/js/productInquiry.js" defer></script>


<%--    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.4/pagination.css" />--%>
</head>
<body>
	<style>
#productInquiry_searchbox {
	display: flex;
	flex-direction: column;
}

.item {
	display: flex;
	height: 15%;
}

.name {
	display: table-cell;
	vertical-align: center;
	justify-content: center;
	padding-top: 5.5%;
	text-align: center;
	width: 150px;
	/*border: 1px solid black;*/
}

.name01 {
	display: table-cell;
	vertical-align: center;
	justify-content: center;
	text-align: center;
	width: 150px;
	border-bottom: 1px solid black;
}
.kinderGarden_pagination1 {
	display: flex;
	flex-direction: row;
	justify-content: center;
}
.kinderGarden_pagination1 ul{
	display: flex;
	flex-direction: row;
}
</style>



	<div id="productInquiry_searchbox">
		<div class="container">
			<a href="productInquiryFeed.mdo">사료 상품 조회 이동</a>

			<div class="header">
			<h1>장난감 상품 조회</h1>
			<input onkeyup="filter()" type="text" id="value" placeholder="코드 검색">
		</div>
		<div
			style="display: flex; justify-content: flex-end; padding-right: 4%; margin-bottom: -2%;">
			<a href="productRegister.mdo"><button class="btn btn-info">상품
					등록하기</button></a>
		</div>
		<div style="display: flex; margin-top: 2%; margin-bottom: 2%;">
			<%--        <p style="margin">장난감 코드</p>--%>
		</div>

			<span class="name01">장난감 이미지</span> <span class="name01">장난감
				코드</span> <span class="name01">장난감 이름</span> <span class="name01">장난감
				입고날짜</span> <span class="name01">장난감 가격</span> <span class="name01">장난감
				할인가</span> <span class="name01">장난감 제고</span>
			<div id="toyListPaging">
			<c:forEach var="toyList" items="${toyList}">
				<div class="item">

					<a href="productDeleteUpdate.mdo?toy_code=${toyList.toy_code}"><img
						style="width: 151px; height: 151px; margin-top: 2%; margin-bottom: 0.5%"
						src="/OMGM/resources/img/product/${toyList.toy_img}"></a> <span
						class="name">${toyList.toy_code}</span> <span class="name">${toyList.toy_name}</span>
					<span class="name"><fmt:formatDate
							value="${toyList.toy_instock}" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate></span>
					<span class="name">${toyList.toy_price}원</span> <span class="name">${toyList.toy_discount}원</span>
					<span class="name">${toyList.toy_stock}개</span>

				</div>
			</c:forEach>
			</div>
		</div>

	</div>
	<%--  pagination --%>
	<div class="kinderGarden_pagination1">
		<ul class="paginate_button page-item previous disabled"> <a href="#" class="page-link"  onclick="paging(event,tbody1,currentPage1-1,prev1,next1,pageCount1,1)">Prev</a> </ul>
		<ul></ul>
		<ul class="paginate_button page-item next"> <a href="#" class="page-link"  onclick="paging(event,tbody1,currentPage1+1,prev1,next1,pageCount1,1)">Next</a> </ul>
	</div>
</body>
<script>
<%--    ///// 페이지 네이션 //////////////////////////////////////////////////////////////////////////////--%>

// 페이지네이션 관련
let tbody1; // 페이지네이션 몸체
let page1; // 페이지 블럭 몸체
let contentCount1 = 0; // 페이지 총 수
let pageCount1 = 0; // 그룹 총 수

let currentPage1 = 1; // 현재 페이지

const prev1 = document.querySelector('.kinderGarden_pagination1 ul:nth-child(1)');
const next1 = document.querySelector('.kinderGarden_pagination1 ul:nth-child(3)');

// 초기화 작업
window.addEventListener('DOMContentLoaded', () => {
tbody1 = document.querySelectorAll('.item ');

tbody1.forEach((item,index) => {
contentCount1++;
if(index >= 5) item.style.display = 'none';
});

page1 = document.querySelector('.kinderGarden_pagination1 ul:nth-child(2)');
pageCount1 = Math.ceil(contentCount1/5); // 올림


pagination(page1,pageCount1,1,currentPage1);
});

// 페이징 처리
function paging(event,tbody,count,prev,next,pageCount,num) {
event.preventDefault();
if(num === 1) currentPage1 = count;
else currentPage2 = count;

pagePick(event.target.parentNode.parentNode,count);

tbody.forEach((item,index) => {
index++;
if((5*count)-5 < index && index <= 5*count) item.style.display = '';
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
function pagination(page,count,index,current) {
for(let i=1; i<=count; i++) {
page.innerHTML += `
<li class="paginate_button page-item">
	<a class="page-link" href="#" onclick="paging(event,tbody`+index+`,`+i+`,prev`+index+`,next`+index+`,`+count+`,`+index+`)">`+i+`</a>
</li>`;
if(i === current) pagePick(page,1);
}
}

// 페이지 그룹 색상 변경
function pagePick(target,count) {
target.querySelectorAll(`li`).forEach((item,index) => {
if(count === index+1) item.classList.toggle('active',true);
else item.classList.toggle('active',false);
});
}

<%--    //////////////////////////////////////////////////////////////////////////////--%>
</script>
</html>
