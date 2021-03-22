<%--
  Created by IntelliJ IDEA.
  User: YongSun Jang
  Date: 2020-08-04
  Time: 오전 9:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
	<title>productDeleteUpdate</title>
	<link
			href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@600&display=swap"
			rel="stylesheet">
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
	<link rel="stylesheet" href="resources/style/summernote/summernote-lite.css">
</head>
<body>
<div style="margin-top: 10%;margin-right: 5%; display: flex; justify-content: flex-end; padding-right: 13%; margin-bottom: -1%;">
	<a href="productInquiryToy.mdo"><button class="btn btn-info">사료
		현왕 페이지로 이동</button></a>
</div>
<form style="margin-left: 7%; margin-right: 7%;" method="post" name="productDeleteUpdate_form"
	  enctype="multipart/form-data" id="pro_form1" class="pro_form">

<div id="productDeleteUpdate_main_div"
	 style="padding-left: 5%; padding-right: 0%">
	<h2>장난감 상품 현황 페이지</h2>
	<br>
	<br>
	<br>



		<div id="productDeleteUpdate_section_div00"
			 style="display: flex; width: 100%">
			<div id="productDeleteUpdate_section_div01"
				 style="display: flex; flex-direction: column; width: 100%; padding-left: 5%; padding-right: 2%">
				<input type="hidden" name="toy_code" value="${mallToyOne.toy_code}">
				<div>
					<label>상품명 : </label><br> <input name="toy_name"
													 style="height: 50%" id="productRegister_change_text_01"
													 class="title" type="text" value="${mallToyOne.toy_name}"><br>
					<br>
				</div>

				<div>
					<label>판매가 : </label><br> <input name="toy_price"
													 style="height: 50%" type="text"
													 id="productDeleteUpdate_price_inputText" class="title"
													 value="${mallToyOne.toy_price}" /><br>
					<br>
				</div>

				<div>
					<label>할인가 : </label><br> <input name="toy_discount"
													 style="height: 50%" type="text"
													 id="productDeleteUpdate_disPrice_inputText" class="title"
													 value="${mallToyOne.toy_discount}" /><br>
					<br>
				</div>

				<div>
					<label id="productDeleteUpdate_stock_inputTextL">재고 : </label> <input
						name="toy_stock" value="${mallToyOne.toy_stock}"
						style="height: 50%" type="text"
						id="productDeleteUpdate_stock_inputText" class="title" /><br>
					<br>
				</div>

				<div id="proExpiration" style="display: none">
					<label style="font-size: 15px">남은 날짜 : </label> <input
						style="height: 50%" id="productRegister_change_text_02"
						type="text" class="title" /><br>
					<br>
				</div>

				<div>
					<label>적립금 : </label> <label>판매가에서 </label><input name="toy_point"
																	  value="${mallToyOne.toy_point}" style="height: 50%" type="text"
																	  id="productDeleteUpdate_point_inputText" /><br>
					<br>
					<label>포인트 적립 </label>
				</div>
			</div>
			<div id="productDeleteUpdate_img_div"
				 style="padding-bottom: 2%; width: 50%; display: flex; flex-direction: column; margin-right: 10%;">

				<img name="" style="vertical-align: center; width: 90%;"
					 src="/img/${mallToyOne.toy_img}"> <input
					type="hidden" name="toy_img" value="${mallToyOne.toy_img}">
				<label style="text-align: center; margin-top: 3%; width: 100%">상품이미지</label>
				<input type="file" name="update_uploadFile" /> <label
					style="width: 42%"><이미지 변경하기></label>
			</div>
		</div>
</div>
	<div class="inputArea">
		<label>상품설명</label>
		<textarea name="toy_info" rows="10" cols="100"
				  id="summernote" style="resize: none;">${mallToyOne.toy_info}</textarea>
	</div>
	<div id="productDeleteUpdate_button_div"
		 style=" display: flex; justify-content: flex-end; margin-top: 1%; ">
		<input type="submit" style="margin-left: 0.5%; margin-right: 0.5%;"
			   id="" class="btn btn-info"
			   onclick="javascript: productDeleteUpdate_form.action='updateMallToy.mdo'"
			   value="수정" /> <input type="submit"
									style="margin-left: 0.5%; margin-right: 0.5%;" id=""
									class="btn btn-info" onclick="confrimDelete()" value="삭제" />
	</div>
</form>
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

	function confrimDelete(){
		const confirmDelete = confirm('정말 삭제하시겠습니까?');
		if(confirmDelete === true) {
			productDeleteUpdate_form.action='deleteMallToy.mdo';
		} else{
			productDeleteUpdate_form.action='productInquiryToy.mdo';
		}
	}
</script>
</body>
</html>