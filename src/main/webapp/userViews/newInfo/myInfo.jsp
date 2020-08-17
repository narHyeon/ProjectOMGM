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
        width: 80%;
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
        border: 2px solid pink;
    }
    #info_my_table div ul:nth-child(1) {
        display: flex;
        height: 100%;
        flex-direction: column;
        margin-left: 20%;
        padding: 20px 10% 20px 0;
        border-right: 2px solid pink;
    }
    #info_my_table div ul:nth-child(2) {
        display: flex;
        height: 100%;
        flex-direction: column;
        padding: 20px 0;
        margin-left: 20%;
    }
    #info_my_table div ul li {
        margin: 10px;
    }
    #info_my_button {
        display: flex;
        justify-content: flex-end;
        width: 80%;
        margin: 0 auto 50px auto;
        border: none;
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
        </div>
    </div>
    <div id="info_my_button">
        <button>수정</button>
        <button>탈퇴</button>
    </div>
</body>
</html>
