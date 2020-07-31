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
    <title>Summernote</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="resources/admin/css/productRegister.css">
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@600&display=swap" rel="stylesheet">
</head>
<body>
<h2>상품등록</h2><br><br><br>
<div id="product_write">
    <form method="post" action="/write" class="form">
        <div>
            <label>상품이미지 : </label>
            <input type="file" class="title" name="proImg"/><br><br>
        </div>

        <div>
            <label >상품명 : </label><br>
            <input class="title" type="text" name="title"/><br><br>
        </div>

        <div>
            <label>판매가 : </label><br>
            <input type="text" id="proPrice" class="title" name="proPrice"/><br><br>

        </div>

        <div>
            <label>할인가 : </label><br>
            <input type="text" id="proDisPrice" class="title" name="proDisPrice"/><br><br>
        </div>

        <div>
            <label>재고 : </label>
            <input type="text" id="proStock" class="title" name="proStock"/><br><br>
        </div>

        <div>
            <label>적립금 : </label>
            <label>판매가에서 </label><input type="text" id="point" class="title" name="point"/><br><br><label>포인트 적립 </label>
        </div>

        <div class="inputArea">
            <label>상품설명</label>
            <textarea rows="10" cols="100" id="proIntro" name="proIntro"></textarea>
        </div>

        <div>
            <button type="submit" id="register_Btn" class="btn btn-primary">등록</button>
        </div>



    </form>
</div>
</body>
</html>
