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
    <link rel="stylesheet" href="resources/style/summernote/summernote-lite.css">
    <meta charset="UTF-8">
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@600&display=swap" rel="stylesheet">
    <style>
        /*#pro_write h2 {*/
        /*	text-align: center;*/
        /*	padding-top: 65px;*/
        /*	font-size: 25px;*/
        /*	font-weight: bold;*/
        /*}*/

        /*#pro_write {*/
        /*	border-radius: 10px;*/
        /*	!*position: absolute;*!*/
        /*	!*left: 50%;*!*/
        /*	!*top: 50%;*!*/
        /*	!*transform: translate(-50%,-50%);*!*/
        /*	!*display:block;*!*/
        /*	!*display: flex;*!*/
        /*	margin: 0 auto;*/
        /*	!*flex-direction: column;*!*/
        /*}*/

        /*#pro_write .pro_form {*/
        /*	margin: 0 auto;*/
        /*}*/

        /*#pro_write label {*/
        /*	width: 15%;*/
        /*	text-align: center;*/
        /*}*/

        /*#pro_write div {*/
        /*	!*display: flex;*!*/
        /*	margin-top: 1%;*/
        /*}*/

        /*#pro_write .title {*/
        /*	width: 100%;*/
        /*	height: 20%;*/
        /*}*/

        /*#pro_point {*/
        /*	width: 10%;*/
        /*	height: 20%;*/
        /*}*/

        /*#register_Btn {*/
        /*	margin-left: auto;*/
        /*	!*position: absolute;*!*/
        /*	!*left: 97%;*!*/
        /*	!*top: 105%;*!*/
        /*	!*transform: translate(-50%,-50%);*!*/
        /*}*/
    </style>
</head>
<body>


<div id="pro_write" style="margin-left: 5%; margin-right: 5%;">
    <h2 style="margin-top: 5%;">상품등록</h2>
    <select style="margin-bottom:1%; margin-top: 1%" id="select2" class="select1" onclick="changeAction01()">
        <option value="toy" name="toy">toy</option>
        <option value="feed" name="feed">feed</option>
    </select>
    <form style="" method="post" enctype="multipart/form-data" id="pro_form1"
          class="pro_form" onsubmit="return changeAction()">
        <div style="margin-top: 0.5%;">
            <label>상품이미지 </label>
        </div>
        <div style="margin-top: -0.5%;">
            <input name="uploadFile"
                   id="productRegister_change_text_00" type="file" class="title"/><br>
        </div>
        <div style="display: flex">
        <div style="width: 50%;">
        <div style="margin-top: 1%;">
            <label>상품명 </label>
        </div>
        <div style="margin-top: -0.5%;">
            <input style="width: 70%;" name="toy_name" id="productRegister_change_text_01" class="title" type="text"/>
        </div>

        <div style="margin-top: 1%;">
            <label>판매가 </label></div>
        <div style="margin-top: -0.5%;">
            <input style="width: 70%;" name="toy_price" type="text" id="proPrice" class="title"/><br>
        </div>
        <div style="margin-top: 1%;">
            <label>할인가 </label>
        </div>
        <div style="margin-top: -0.5%;">
            <input style="width: 70%;" name="toy_discount" type="text" id="proDisPrice" class="title"/><br>
        </div>
        </div>
        <div style="width: 50%;">
        <div style="margin-top: 1%;">
            <label id="proStockL">재고 </label>
        </div>
        <div style="margin-top: -0.5%;">
            <input style="width: 70%;" name="toy_stock" type="text" id="proStock" class="title"/><br>
            <br>
        </div>

        <div id="proExpiration" style="margin-top: -0.5%;">
            <label style="font-size: 15px; margin-bottom:0%;">남은 날짜 </label><br>
            <input style="width: 70%;" disabled name="feed_expiration" id="productRegister_change_text_02" type="text" class="title"/><br>
        </div>

        <div style="margin-top: 1%;">
            <label>적립금 </label>
        </div>
        <div style="margin-top: -0.5%;">
            <input style="width: 70%;" name="toy_point" type="text" id="pro_point"/><br>
        </div>
        </div>
        </div>
        <div class="inputArea" style="margin-top: 1%;">
            <label>상품설명</label>
            <textarea name="toy_info" id="summernote" style=""></textarea>
        </div>
        <div>
            <button type="submit" id="register_Btn" class="btn btn-info">등록
            </button>
        </div>
    </form>
</div>


<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="resources/js/summernote/summernote-lite.js"></script>
<script src="resources/js/summernote/lang/summernote-ko-KR.js"></script>
<script>
    // $(document).ready(function() {
    //    $('#summernote').summernote();
    // });
    var jqncf = jQuery.noConflict();
    jqncf(document).ready(function () {
        jqncf('#summernote').summernote({
            height: 350, // 에디터 높이
            minHeight: null, // 최소 높이
            maxHeight: null, // 최대 높이
            focus: true, // 에디터 로딩후 포커스를 맞출지 여부
            lang: "ko-KR" // 한글 설정
        });
    });

    function changeAction() {
        const select = document.getElementById("select2");
        const actionForm = document.getElementById("pro_form1");
        const divStyle = document.getElementById("proExpiration");
        const nameChange01 = document.getElementById("productRegister_change_text_00");
        const nameChange02 = document.getElementById("productRegister_change_text_01");
        const nameChange03 = document.getElementById("proPrice");
        const nameChange04 = document.getElementById("proDisPrice");
        const nameChange05 = document.getElementById("proStock");
        const nameChange06 = document.getElementById("productRegister_change_text_02");
        const nameChange07 = document.getElementById("pro_point");
        const nameChange08 = document.getElementById("summernote");

        // 입력시 빈칸이 있을대 경고창 생성
        if (select.options[select.selectedIndex].value === "toy") {
            if (nameChange02.value === "") {
                swal('이름을 입력해 주세요');
                return false
            } else if (nameChange03.value === "") {
                swal('가격을 입력해 주세요');
                return false
            } else if (nameChange05.value === "") {
                swal('재고를 입력해 주세요');
                return false
            } else {
                actionForm.action = "insertMallToy.mdo";
                return true;
            }
        } else if (select.options[select.selectedIndex].value === "feed") {
            if (nameChange02.value === "") {
                swal('이름을 입력해 주세요');
                return false;
            } else if (nameChange03.value === "") {
                swal('가격을 입력해 주세요');
                return false;
            } else if (nameChange05.value === "") {
                swal('재고를 입력해 주세요');
                return false;
            } else if (nameChange06.value === "") {
                swal('남은 날짜를 입력해 주세요');
                return false;
            } else {
                actionForm.action = "insertMallFeed.mdo";
                return true;
            }
        }
    }

    function changeAction01() {
        const select = document.getElementById("select2");
        const actionForm = document.getElementById("pro_form1");
        const divStyle = document.getElementById("productRegister_change_text_02");
        const nameChange01 = document.getElementById("productRegister_change_text_00");
        const nameChange02 = document.getElementById("productRegister_change_text_01");
        const nameChange03 = document.getElementById("proPrice");
        const nameChange04 = document.getElementById("proDisPrice");
        const nameChange05 = document.getElementById("proStock");
        const nameChange06 = document.getElementById("productRegister_change_text_02");
        const nameChange07 = document.getElementById("pro_point");
        const nameChange08 = document.getElementById("summernote");

        if (select.options[select.selectedIndex].value === "toy") {
            divStyle.disabled = true;
            actionForm.action = "insertMallToy.mdo";
            nameChange01.name = "uploadFile";
            nameChange02.name = "toy_name";
            nameChange03.name = "toy_price";
            nameChange04.name = "toy_discount";
            nameChange05.name = "toy_stock";
            nameChange06.name = "toy_expiration";
            nameChange07.name = "toy_point";
            nameChange08.name = "toy_info";
        } else if (select.options[select.selectedIndex].value === "feed") {
            divStyle.disabled = false;
            nameChange01.name = "feed_uploadFile";
            nameChange02.name = "feed_name";
            nameChange03.name = "feed_price";
            nameChange04.name = "feed_discount";
            nameChange05.name = "feed_stock";
            nameChange06.name = "feed_expiration";
            nameChange07.name = "feed_point";
            nameChange08.name = "feed_info";
        }
        console.log(nameChange01.name);
    }
</script>
</body>
</html>
