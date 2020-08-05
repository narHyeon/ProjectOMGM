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
    </style>
</head>
<body>
<!-- DataTales Example -->
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">오묘가묘 가족 목록</h6>
    </div>
    <div class="card-body">
        <div id="memberTable" class="table-responsive">
            <div>
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
                            <td>${members.seq}</td>
                            <td>${members.id}</td>
                            <td class="name">${members.name}</td>
                            <td>${members.phone}</td>
                            <td>${members.zipcode}</td>
                            <td>${members.address}</td>
                            <td>${members.point}</td>
                            <td>${members.rank}</td>
                            <td>${members.regDate}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
<script>
    function filter() {
        let value, name, item, i;
        value = document.querySelector("#memberTable_search").value.toUpperCase();
        item = document.getElementsByClassName("memberTable_member");

        for(i=0; i<item.length; i++){
            name = item[i].getElementsByClassName("name");
            if(name[0].innerHTML.toUpperCase().indexOf(value) > -1) {
                // document.querySelector('.table-bordered thead').innerHTML =
                //     ``;
                item[i].style.display = "";
            } else {
                item[i].style.display = "none";
            }
        }
    }
</script>
</body>
</html>
