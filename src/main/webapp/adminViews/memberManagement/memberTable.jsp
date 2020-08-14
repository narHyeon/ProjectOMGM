<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
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
        <h6 class="m-0 font-weight-bold text-info">오묘가묘 가족 목록</h6>
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
                        <a class="dropdown-item" href="#" onClick="selectBox(event)">회원번호</a>
                        <a class="dropdown-item" href="#" onClick="selectBox(event)">ID</a>
                        <a class="dropdown-item" href="#" onClick="selectBox(event)">이름</a>
                    </span>
                </span>
                <%--  드롭박스  --%>
                <input type="text" onkeyup="filter()" id="memberTable_search" placeholder="이름으로 검색" class="form-control bg-light border-0 small">
            </div>
            <table class="table table-bordered" width="100%" cellspacing="0">
                <thead>
                <tr>
                    <th>회원번호</th>
                    <th>ID</th>
                    <th>이름</th>
                    <th>전화번호</th>
                    <th>우편번호</th>
                    <th>주소</th>
                    <th>POINT</th>
                    <th>RANK</th>
                    <th>가입날짜</th>
                </tr>
                </thead>
                <tbody id="memberTable_tbody">
                    <c:forEach var="members" items="${memberTable}">
                        <tr class="memberTable_member">
                            <td class ="memberTable_seq">${members.seq}</td>
                            <td class ="memberTable_id">${members.id}</td>
                            <td class="memberTable_name">${members.name}</td>
                            <td>${members.phone}</td>
                            <td>${members.zipcode}</td>
                            <td>${members.address}</td>
                            <td>${members.point}</td>
                            <td>${members.rank}</td>
                            <td>${members.formatDate}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
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
    let className = 'memberTable_name';
    function filter() {
        let value, name, item, i;
        value = document.querySelector("#memberTable_search").value.toUpperCase();
        item = document.getElementsByClassName("memberTable_member");

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
        document.querySelectorAll('.memberTable_member').forEach(item => item.style.display = '');

        paging(event,currentPage);

        const name = event.target.innerText;
        switch(name) {
            case '회원번호':
                document.querySelector('#memberTable_search').setAttribute('placeholder',name+'로 검색');
                className = 'memberTable_seq';
                break;
            case 'ID':
                document.querySelector('#memberTable_search').setAttribute('placeholder',name+'로 검색');
                className = 'memberTable_id';
                break;
            default :
                document.querySelector('#memberTable_search').setAttribute('placeholder',name+'으로 검색');
                className = 'memberTable_name';
                break;
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
            if(index >= 5) item.style.display = 'none';
        });

        page = document.querySelector('.memberTable_pagination ul:nth-child(2)');
        pageCount = Math.ceil(contentCount1/5); // 올림

        pagination();
    });

    // 페이징 처리
    function paging(event,count) {
        event.preventDefault();
        currentPage = count;

        pagePick(count);

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
