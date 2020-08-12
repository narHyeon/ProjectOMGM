<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Jury
  Date: 2020-07-30
  Time: 오후 2:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title></title>
    <meta charset="UTF-8">
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@600&display=swap" rel="stylesheet">
    <style>

        #hotelWrite h2{
            text-align: center;
            padding-top:65px;
            font-size:25px;
            font-weight:bold;
        }

        #hotelWrite{
            border-radius: 10px;
            /*position: absolute;*/
            /*left: 50%;*/
            /*top: 50%;*/
            /*transform: translate(-50%,-50%);*/
            /*display:block;*/

            display: flex;
            margin: 0 auto;
            flex-direction: column;
        }

        #hotelWrite .pro_form {
            margin: 0 auto;

        }

        #hotelWrite label{
            width:31%;
            text-align:center;
        }

        #hotelWrite div{
            display:flex;
            margin-top:1%;
        }

        #hotelWrite .title{
            width:100%;
            height:20%;
        }

        #registerBtn{
            margin-left: auto;
            /*position: absolute;*/
            /*left: 97%;*/
            /*top: 105%;*/
            /*transform: translate(-50%,-50%);*/
        }

    </style>
</head>
<body>
<script>
    function changeAction() {
        const actionForm = document.getElementById("hotelRegister");
        const nameChange01 = document.getElementById("hotelImg");
        const nameChange02 = document.getElementById("hotelName");
        const nameChange03 = document.getElementById("hotelSize");
        const nameChange04 = document.getElementById("hotelAnimalNum");
        const nameChange05 = document.getElementById("hotelPrice");

        // 입력시 빈칸이 있을대 경고창 생성
            if(nameChange01.value === ""){
                alert('객실 이미지를 등록해주세요.');
                actionForm.action="hotelRegister.mdo";
            }else if(nameChange02.value ==="") {
                alert('객실이름을 입력해 주세요');
                actionForm.action="hotelRegister.mdo";
            }else if(nameChange03.value ==="") {
                alert('객실사이즈를 입력해 주세요');
                actionForm.action="hotelRegister.mdo";
            }else if(nameChange04.value ===""){
                alert('반려동물 수를 입력해 주세요');
                actionForm.action="hotelRegister.mdo";
            }else if(nameChange05.value ===""){
                alert('객실가격을 입력해 주세요');
                actionForm.action="hotelRegister.mdo";
            }else {
                actionForm.action = "insertHotel.mdo";
                alert('등록이 완료 되었습니다');
            }
    }
</script>

<div id="hotelWrite">
    <h2>객실등록</h2><br><br><br>
    <form  method="post" enctype="multipart/form-data" id="hotelRegister" class="pro_form">

        <div>
            <label>객실이미지 : </label>
            <input name="hotel_uploadFile" id="hotelImg"type="file" class="title" /><br><br>
        </div>

        <div>
            <label >객실명 : </label><br>
            <input name="hotelName" id="hotelName" class="title" type="text" /><br><br>
        </div>

        <div>
            <label >면적(m2) : </label><br>
            <input name="hotelSize" id="hotelSize" class="title" type="text" /><br><br>
        </div>

        <div>
            <label>반려동물 수 : </label><br>
            <input name="hotelAnimalNum" type="text" id="hotelAnimalNum" class="title" /><br><br>
        </div>

        <div>
            <label>요금 : </label><br>
            <input name="hotelPrice" type="text" id="hotelPrice" class="title" /><br><br>
        </div>
        <div>
            <button type="submit" id="registerBtn" class="btn btn-info" onclick="changeAction()">등록</button>
        </div>
    </form>
</div>

</body>
</html>
