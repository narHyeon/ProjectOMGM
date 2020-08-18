<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style>
    #info_my_table {
        display: flex;
        flex-direction: column;
        margin: 0 auto;
        font-family: "Nunito", -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";
        text-align: center;
        font-weight: 600;
        width: 70%;
    }
    #info_my_table h3 {
        margin: 35px auto;
        width: 80%;
        padding: 35px;
        font-size: 24px;
        border-bottom: 2px solid #F28888;
    }
    #info_my_table div {
        display: flex;
        flex-direction: row;
        border: 2px solid #777;
    }
    #info_my_table div ul:nth-child(1) {
        display: flex;
        height: 100%;
        flex-direction: column;
        margin-left: 2%;
        padding: 20px 2% 20px 0;
        border-right: 2px solid #777;
        width: 30%;
    }
    #info_my_table div ul:nth-child(2) {
        display: flex;
        height: 100%;
        flex-direction: column;
        padding: 20px 0;
        margin-left: 20%;
        width: 70%;
    }
    #info_my_table div ul:nth-child(1) li {
        margin: 6px;
        padding: 2px 0 10px 0;
        width: 80%;
        /*border-bottom: 1px solid #777;*/
    }
    #info_my_table div ul:nth-child(2) li {
        width: 70%;
    }
    #info_my_table div ul:nth-child(2) li input {
        margin: 7px;
        padding: 3px 20px;
        width: 100%;
        height: 25px;
        border: none;
        border-bottom: 1px solid #777;
    }
    #info_my_button {
        display: flex;
        justify-content: flex-end;
        width: 70%;
        margin: 0 auto 50px auto;
        border: none;
    }
    #info_my_button button {
        margin: 10px 5px;
        width: 100px;
        background-color: pink;
        color: white;
        border: 1px solid #cb5e6b;
        height: 25px;
        font-weight: 600;
    }
    #info_my_button button:hover {
        cursor: pointer;
        background-color: #cb5e6b;
    }

</style>
<body>
    <div id="info_my_table">
        <h3>내 정보</h3>
        <div>
            <ul>
                <li>아이디</li>
                <li>비밀번호</li>
                <li>이름</li>
                <li>핸드폰</li>
                <li>이메일</li>
                <li>우편번호</li>
                <li>주소</li>
                <li>포인트</li>
                <li>회원등급</li>
                <li>반려동물</li>
                <li>반려동물 나이</li>
            </ul>
            <ul id="info_data_list">
                <li><input type="text" placeholder="아이디" value="${member.id}" disabled></li>
                <li><input type="password" placeholder="비밀번호" value="12345678" disabled></li>
                <li><input type="text" placeholder="이름" value="${member.name}"></li>
                <li><input type="text" placeholder="핸드폰" value="${member.phone}"></li>
                <li><input type="text" placeholder="이메일" value="${member.email}"></li>
                <li><input type="text" placeholder="우편번호" value="${member.zipcode}"></li>
                <li><input type="text" placeholder="주소" value="${member.address}"></li>
                <li><input type="text" placeholder="포인트" value="${member.point}" disabled></li>
                <li><input type="text" placeholder="회원등급" value="${member.rank}" disabled></li>
                <li><input type="text" required placeholder="반려동물" value="${member.animal}"></li>
                <li><input type="number" placeholder="반려동물 나이" value="${member.animalAge}"></li>
            </ul>
        </div>
    </div>
    <div id="info_my_button">
        <c:if test="${member.type == '일반'}">
            <button onClick="fixedPass('${member.type}')">비밀번호 변경</button>
        </c:if>
        <button onclick="fixedMember('${member.type}')">수정</button>
        <button onclick="deleteMember('${member.type}')">탈퇴</button>
    </div>
</body>
<script>
    let boo = false;

    function fixedPass(type) {
        if(boo === false && type === '일반') {
            const pass = prompt('비밀번호를 입력해주세요','Password');
            if(pass === null) return ;
            else if(pass.length < 8) return swal('Warning','비밀번호는 8자 이상입니다!','warning');
            return checkPass(pass, '${member.seq}','pass');
        } else {
            return updatePassword('${member.seq}');
        }
    }

    function updatePassword(seq) {
        const pass1 = prompt('변경하실 비밀번호를 입력해주세요','Password');
        if(pass1 === null) return ;
        else if(pass1.length < 8) return swal('Warning','비밀번호는 8자 이상입니다!','warning');
        const pass2 = prompt('변경하실 비밀번호를 다시 한번 입력해주세요','Password');
        if(pass2 === null) return;
        else if(pass2.length < 8) return swal('Warning','비밀번호는 8자 이상입니다!','warning');
        else if(pass1 !== pass2) return swal('Error','입력하신 비밀번호가 다릅니다!','error');
        return window.location.href = 'updatePassword.do?seq='+seq+'&pwd='+pass1;
    }

    function checkPass(pass, seq, key) {
        const xhr = new XMLHttpRequest();

        xhr.onload = () => {
            if(xhr.status === 200) {
                if(xhr.responseText !== '10') return swal('Error','잘못된 비밀번호입니다!','error');
                boo = true;
                switch(key) {
                    case 'pass': updatePassword(seq); break;
                    case 'member': updateMember(seq); break;
                    case 'delete': window.location.href = 'deleteMember.do?seq='+'${member.seq}';
                }
            }
        }

        xhr.open('POST','checkPass.do',true);
        xhr.setRequestHeader('content-type','application/json');
        const data = { seq : '${member.seq}', pwd : pass };
        xhr.send(JSON.stringify(data));
    }

    function fixedMember(type) {
        if(boo === false && type === '일반') {
            const pass = prompt('비밀번호를 입력해주세요','Password');
            if(pass === null) return ;
            else if(pass.length < 8) return swal('Warning','비밀번호는 8자 이상입니다!','warning');
            return checkPass(pass, '${member.seq}','member');
        } else {
            const pass1 = confirm('정말 변경하시겠습니까?');
            if(!pass1) return ;
            updateMember();
        }
    }

    function updateMember() {
        const xhr = new XMLHttpRequest();

        xhr.onload = () => {
            if(xhr.status === 200) {
                window.location.reload();
            }
        }


        let blank = false;
        const list = document.querySelectorAll('#info_data_list li input');
        list.forEach(item => {
            if(item.value === '') {
                return blank = true;
            }
        });
        if(blank) return swal('Warning','입력하지 않은 사항이 있습니다!','warning');
        const data = {
            seq : '${member.seq}',
            name: list[2].value,
            phone: list[3].value,
            email: list[4].value,
            zipcode: list[5].value,
            address: list[6].value,
            animal: list[9].value,
            animalAge: list[10].value
        };

        xhr.open('POST','updateMember.do',true);
        xhr.setRequestHeader('content-type','application/json');
        xhr.send(JSON.stringify(data));
    }

    function deleteMember(type) {
        if(boo === false && type === '일반') {
            const pass = prompt('비밀번호를 입력해주세요','Password');
            if(pass === null) return ;
            else if(pass.length < 8) return swal('Warning','비밀번호는 8자 이상입니다!','warning');
            return checkPass(pass, '${member.seq}','delete');
        } else {
            const pass1 = confirm('정말 탈퇴하시겠습니까?');
            if(!pass1) return ;
            window.location.href = 'deleteMember.do?seq='+'${member.seq}';
        }
    }
</script>
</html>
