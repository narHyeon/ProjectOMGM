<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>myCatPageUpdate</title>
</head>
<style>
#myPetUpdate_wrap {
	display: flex;
	flex-direction: column;
}

#myPetUpdate_head {
	min-width: 60%;
	margin-right: 15%;
	margin-top: 2%;
	margin-left: 28%;
	margin-bottom: 2%;
	font-size: 20px;
	padding-bottom: 1%;
	border-bottom: 2px solid #FFABB9;
}

#myPetUpdate_body {
	display: flex;
	flex-direction: row;
	height: 100%;
}

#banner {
	display: flex;
	width: 15%;
	height: 30%;
	flex-direction: column;
	margin-left: 7%;
	border-radius: 10px;
}

#myPetUpdate_content {
	display: flex;
	flex-direction: column;
	margin-left: 6%;
	width: 43%;
	height: 100%;
}

.fieldsetstyle {
	margin-top: 5%;
	display: block;
	border: 1px solid #FFABB9;
	border-radius: 10px;
	background-color: #FFABB9;
	color: white;
	padding: 10px;
}

.fieldsetstyle:hover {
	cursor: pointer;
}

#bottom {
	text-align: right; /*가운데 정렬*/
	margin-top: 2%;
	margin-right: 35%;
	margin-bottom: 2%;
}

.bar {
	display: flex;
	flex-direction: row;
	height: 50px;
	width: 100%;
	padding-top: 1%;
}

.bar-content {
	background-color: white;
	margin-left: 5%;
	width: 70%;
	height: 100%;
}

.bar-title {
	width: 17%;
	height: 100%;
	font-size: 100%;
}

#inputstyle {
	border: 1px solid #FFABB9;
	border-radius: 3%;
	padding: 0.5%;
}

#inputstylephone {
	border: 1px solid #FFABB9;
	border-radius: 3%;
	padding: 0.5%;
	margin-right: 1%;
	width: 15%;
}

#inputstylemail {
	border: 1px solid #FFABB9;
	border-radius: 3%;
	padding: 0.5%;
	margin-right: 1%;
	width: 60%;
}

.buttons {
	background-color: white;
	cursor: pointer;
	border: 2px solid #e2e2e2;
	font-size: 12px;
	padding-left: 1%;
	padding-right: 1%;
	color: purple;
	width: 18%;
}

#textareastyle {
	border: 1px solid #FFABB9;
	padding: 0.5%;
	margin-right: 1%;
	margin-left: 1%;
	width: 100%;
	height: 100%;
}
</style>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#myPageFs").click(function(){
			window.location.href = 'myPage.do';
		});
		$("#myCatPageFs").click(function(){
			window.location.href = 'myPetPage.do';
		});
		$("#myServiceListFs").click(function(){
			window.location.href = 'myServiceList.do';
		});
		$("#myBuyListLogFs").click(function(){
			window.location.href = 'myBuyListLog.do';
		});
		$("#myCatCareLogFs").click(function(){
			window.location.href = 'myCatCareLog.do';
		});
		$("#myReViewFs").click(function(){
			window.location.href = 'myReView.do';
		});
	});
	function goList() {
		window.location.href('myPage.do');
	}
</script>
<body>
	<div id="myPetUpdate_wrap">
		<div id="myPetUpdate_head">
			<h1>고양이 정보 수정</h1>
		</div>
		<div id="myPetUpdate_body">
			<div id="banner">
				<fieldset class="fieldsetstyle" id="myPageFs">내 정보</fieldset>
				<fieldset class="fieldsetstyle" id="myCatPageFs">내 고양이 정보
				</fieldset>
				<fieldset class="fieldsetstyle" id="myServiceListFs">서비스
				</fieldset>
				<fieldset class="fieldsetstyle" id="myBuyListLogFs">구매내역
				</fieldset>
				<fieldset class="fieldsetstyle" id="myCatCareLogFs">반려묘
					일지</fieldset>
				<fieldset class="fieldsetstyle" id="myReViewFs">내가 작성한 후기
				</fieldset>
			</div>
			<div id="myPetUpdate_content">
				<form action="updateMyPet.do" method="post">
					<div class="bar">
						<div class="bar-title">종류</div>
						<div class="bar-content">
							<input id="inputstyle" type="text" name="pet_kind"
								value="${mypetpage.PET_KIND}">
						</div>
					</div>
					<div class="bar">
						<div class="bar-title">종류의종류</div>
						<div class="bar-content">
							<input id="inputstyle" type="text" name="pet_variety"
								value="${mypetpage.PET_VARIETY}">
						</div>
					</div>
					<div class="bar">
						<div class="bar-title">나이</div>
						<div class="bar-content">
							<input id="inputstyle" type="text" name="pet_name"
								value="${mypetpage.PET_NAME}">
						</div>
					</div>
					<div class="bar">
						<div class="bar-title">이름</div>
						<div class="bar-content">
							<input id="inputstyle" type="text" name="pet_age"
								value="${mypetpage.PET_AGE}">
						</div>
					</div>
					<div class="bar">
						<div class="bar-title">성별</div>
						<div class="bar-content">
							<input id="inputstyle" type="text" name="pet_gender"
								value="${mypetpage.PET_GENDER}">
						</div>
					</div>
					<div id="bar4">
						특이사항
						<div id="bar-content6">
							<textarea id="textareastyle" name="pet_comment">${mypetpage.PET_COMMENT}</textarea>
						</div>
					</div>
					<div id="bottom">
						<input type="submit" value="수 정 완 료" class="buttons"> <input
							type="button" value="취  소" onclick="" class="buttons">
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>