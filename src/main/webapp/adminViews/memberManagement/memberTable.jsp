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
                    <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
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
                <tbody>
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
<script>
    let className = 'memberTable_name';
    function filter() {
        let value, name, item, i;
        value = document.querySelector("#memberTable_search").value.toUpperCase();
        item = document.getElementsByClassName("memberTable_member");

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
</script>
</body>
</html>
