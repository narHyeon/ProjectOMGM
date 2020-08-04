<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Jury
  Date: 2020-07-30
  Time: 오후 2:08
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: Jury
  Date: 2020-07-30
  Time: 오전 10:19
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
        #pro_write h2{
            text-align: center;
            padding-top:65px;
            font-size:25px;
            font-weight:bold;
        }

        #pro_write{
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

        #pro_write .pro_form {
            margin: 0 auto;

        }

        #pro_write label{
            width:15%;
            text-align:center;
        }

        #pro_write div{
            display:flex;
            margin-top:1%;
        }

        #pro_write .title{
            width:100%;
            height:20%;
        }

        #pro_point{
            width:10%;
            height:20%;
        }

        #register_Btn{
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
        const select = document.getElementById("select2");
        const actionForm = document.getElementById("pro_form1");
        const divStyle = document.getElementById("proExpiration");

        if(select.options[select.selectedIndex].value === ""){alert('type을 정해주세요'); }
        else if(select.options[select.selectedIndex].value === "toy") {

        }
        else if(select.options[select.selectedIndex].value === "feed") {
            actionForm.action = "insertMallFeed.mdo";

        }

    }
    function changeAction01(){
        const select = document.getElementById("select2");
        const actionForm = document.getElementById("pro_form1");
        const divStyle = document.getElementById("proExpiration");
        const nameChange01 = document.getElementById("productRegister_change_text_00");
        const nameChange02 = document.getElementById("productRegister_change_text_01");
        const nameChange03 = document.getElementById("proPrice");
        const nameChange04 = document.getElementById("proDisPrice");
        const nameChange05 = document.getElementById("proStock");

        const nameChange07 = document.getElementById("pro_point");
        const nameChange08 = document.getElementById("proIntro");
        if(select.options[select.selectedIndex].value === ""){divStyle.style.display="none"}
        else if(select.options[select.selectedIndex].value === "toy") {divStyle.style.display="none";
            actionForm.action = "insertMallToy.mdo";
            nameChange01.name ="uploadFile";
            nameChange02.name = "toy_name";
            nameChange03.name = "toy_price";
            nameChange04.name = "toy_discount";
            nameChange05.name = "toy_stock";

            nameChange07.name = "toy_point";
            nameChange08.name = "toy_info";}
        else if(select.options[select.selectedIndex].value === "feed") {divStyle.style.display=""
            nameChange01.name ="feed_uploadFile";
            nameChange02.name = "feed_name";
            nameChange03.name = "feed_price";
            nameChange04.name = "feed_discount";
            nameChange05.name = "feed_stock";

            nameChange07.name = "feed_point";
            nameChange08.name = "feed_info";}

    }
</script>
<select id="select2" class="select1" onclick="changeAction01()" >
<%--    <option value="">종류 선택</option>--%>
    <option value="toy" name="toy">toy</option>
    <option value="feed" name="feed">feed</option>
</select>

<div id="pro_write">
    <h2>장난감 상품등록</h2><br><br><br>
    <form method="post" enctype="multipart/form-data" id="pro_form1" class="pro_form">

        <div>
            <label>상품이미지 : </label>
            <input id="productRegister_change_text_00"type="file" class="title" /><br><br>
        </div>

        <div>
            <label >상품명 : </label><br>
            <input id="productRegister_change_text_01" class="title" type="text" /><br><br>
        </div>

        <div>
            <label>판매가 : </label><br>
            <input type="text" id="proPrice" class="title" /><br><br>
        </div>

        <div>
            <label>할인가 : </label><br>
            <input type="text" id="proDisPrice" class="title" /><br><br>
        </div>

        <div>
            <label id="proStockL">재고 : </label>
            <input type="text" id="proStock" class="title" /><br><br>
        </div>

        <div id="proExpiration" style="display: none" >
            <label style="font-size:15px">남은 날짜 : </label>
            <input id="productRegister_change_text_02" type="text" class="title" /><br><br>
        </div>

        <div>
            <label>적립금 : </label>
            <label>판매가에서 </label><input type="text" id="pro_point" /><br><br><label>포인트 적립 </label>
        </div>

        <div class="inputArea">
            <label>상품설명</label>
            <textarea rows="10" cols="80" id="proIntro"  style="resize: none;"></textarea>
        </div>

        <div>
            <button type="submit" id="register_Btn" class="btn btn-primary" onclick="changeAction()">등록</button>
        </div>
    </form>
</div>

</body>
</html>
