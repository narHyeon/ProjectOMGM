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
<div id="pro_write">
    <h2>상품등록</h2><br><br><br>
    <form method="post" action="insertMallToy.mdo" class="pro_form">
        <select >
            <option value="">종류 선택</option>
            <option value="toy" name="toy">toy</option>
            <option value="feed" name="feed">feed</option>
        </select>
        <div>
            <label>상품이미지 : </label>
            <input type="file" class="title" name="toy_img"/><br><br>
        </div>

        <div>
            <label >상품명 : </label><br>
            <input class="title" type="text" name="toy_name"/><br><br>
        </div>

        <div>
            <label>판매가 : </label><br>
            <input type="text" id="proPrice" class="title" name="toy_price"/><br><br>

        </div>

        <div>
            <label>할인가 : </label><br>
            <input type="text" id="proDisPrice" class="title" name="toy_discount"/><br><br>
        </div>

        <div>
            <label id="proStockL">재고 : </label>
            <input type="text" id="proStock" class="title" name="toy_stock"/><br><br>
        </div>

        <div>
            <label>적립금 : </label>
            <label>판매가에서 </label><input type="text" id="pro_point" name="toy_point"/><br><br><label>포인트 적립 </label>
        </div>

        <div class="inputArea">
            <label>상품설명</label>
            <textarea rows="10" cols="80" id="proIntro" name="toy_info" style="resize: none;"></textarea>
        </div>

        <div>
            <button type="submit" id="register_Btn" class="btn btn-primary">등록</button>
        </div>
    </form>
</div>
</body>
</html>
