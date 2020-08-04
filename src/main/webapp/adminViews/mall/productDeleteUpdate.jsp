<%--
  Created by IntelliJ IDEA.
  User: YongSun Jang
  Date: 2020-08-04
  Time: 오전 9:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>productDeleteUpdate</title>
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@600&display=swap" rel="stylesheet">
    <style>
        #productDeleteUpdate_main_div h2 {
            text-align: center;
            padding-top: 65px;
            font-size: 25px;
            font-weight: bold;
        }

        #productDeleteUpdate_main_div {
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

        #productDeleteUpdate_img_div {
            display: flex;
            justify-content: flex-end;
        }
        #productDeleteUpdate_main_div .pro_form {
            margin: 0 auto;
        }

        #productDeleteUpdate_main_div label {
            width: 15%;
            text-align: center;
        }

        #productDeleteUpdate_main_div div {
            display: flex;
            margin-top: 1%;
        }

        #productDeleteUpdate_main_div .title {
            width: 100%;
            height: 20%;
        }

        #productDeleteUpdate_point_inputText {
            width: 10%;
            height: 20%;
        }

        #register_Btn {
            margin-left: auto;
            /*position: absolute;*/
            /*left: 97%;*/
            /*top: 105%;*/
            /*transform: translate(-50%,-50%);*/
        }

    </style>
</head>
<body>

<div id="productDeleteUpdate_main_div" style="padding-left: 5%; padding-right: 0%">
    <h2>장난감 상품등록</h2><br><br><br>
    <form method="post" enctype="multipart/form-data" id="pro_form1" class="pro_form">

        <div id="productDeleteUpdate_section_div00" style="display: flex; width: 100%">
        <div id="productDeleteUpdate_section_div01" style="display: flex; flex-direction: column;
            width: 100%; padding-left: 5%; padding-right: 2%">
            <input type="hidden" name="toy_code" value="${mallToyOne.toy_code}">
        <div>
            <label>상품명 : </label><br>
            <input name="toy_name" style="height: 50%"id="productRegister_change_text_01" class="title" type="text" value="${mallToyOne.toy_name}"><br><br>
        </div>

        <div>
            <label>판매가 : </label><br>
            <input name="toy_price" style="height: 50%" type="text" id="productDeleteUpdate_price_inputText" class="title" value="${mallToyOne.toy_price}"/><br><br>
        </div>

        <div>
            <label>할인가 : </label><br>
            <input name="toy_discount" style="height: 50%"type="text" id="productDeleteUpdate_disPrice_inputText" class="title" value="${mallToyOne.toy_discount}"/><br><br>
        </div>

        <div>
            <label id="productDeleteUpdate_stock_inputTextL">재고 : </label>
            <input  name="toy_stock" value="${mallToyOne.toy_stock}" style="height: 50%" type="text" id="productDeleteUpdate_stock_inputText" class="title"/><br><br>
        </div>

        <div id="proExpiration" style="display:none">
            <label style="font-size:15px">남은 날짜 : </label>
            <input style="height: 50%" id="productRegister_change_text_02" type="text" class="title"/><br><br>
        </div>

        <div>
            <label>적립금 : </label>
            <label>판매가에서 </label><input name="toy_point" value="${mallToyOne.toy_point}" style="height: 50%" type="text" id="productDeleteUpdate_point_inputText"/><br><br><label>포인트 적립 </label>
        </div>
        </div>
        <div id="productDeleteUpdate_img_div" style="padding-bottom: 10%; width: 50%; display: flex; flex-direction: column;  margin-right: 10%;">

            <img name="" style="vertical-align:center;width: 90%;"src="resources/img/product/${mallToyOne.toy_img}">

            <label style="text-align: center; margin-top:3%;width: 100%">상품이미지</label>
            <input type="file" name="update_uploadFile" />
            <label style="width: 42%"><이미지 변경하기></label>
        </div>
        </div>
        <div class="inputArea">
            <label>상품설명</label>
            <textarea name="toy_info" rows="10" cols="100" id="productDeleteUpdate_Intro_inputText" style="resize: none;">${mallToyOne.toy_info}</textarea>
        </div>

        <div id="productDeleteUpdate_button_div" style="padding-right:15%;display: flex; justify-content: flex-end">
            <button type="submit" style="margin-left: 0.5%;margin-right: 0.5%;"  id="" class="btn btn-primary" onclick="location.href='http://localhost:8080/updateMallToy.mdo'">수정</button>
            <button style="margin-left: 0.5%;margin-right: 0.5%;"  id="" class="btn btn-primary" onclick="">삭제</button>
        </div>
    </form>
</div>
</body>
</html>
