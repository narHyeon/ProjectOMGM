<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title></title>
<meta charset="UTF-8">
<link rel="stylesheet" href="resources/style/summernote/summernote-lite.css">
<style type="text/css">
#wrap{
	display: flex;
	flex-direction: column;
	width: 60%;
	margin: auto;
}
#head {
	min-width: 60%;
	margin-top: 2%;
	margin-bottom: 2%;
	font-size: 20px;
	padding-bottom: 1%;
	border-bottom: 2px solid #FFABB9;
}
#body{
	display: flex;
	flex-direction: column;
}
#setting{
	display: flex;
	flex-direction: column;
}
.settings{
	display: flex;
	flex-direction: row;
	margin-bottom: 1.5%;
	
}
.leftsettings{
	display: flex;
	flex-direction: row;
	width: 40%;
}
.rightsettings{
	display: flex;
	flex-direction: row;
	width: 40%;
}
.centersettings{
	display: flex;
	flex-direction: row;
	width: 80%;
}
#title_key{
	width: 8%;
}
.keys{
	margin-right: 5%;
}
.values{
	margin-right: 5%;
}
#title_value{
	width: 100%;
}
#title_input{
	width: 87%;
}
#body{
	margin-bottom: 2%;

}
#leg{
	display : flex;
	flex-direction : row;
	margin-bottom: 2%;
	margin-left: 87%;
	width: 100%;
}
.buttons{
	margin-right: 1.5%;
	
}

</style>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="resources/js/summernote/summernote-lite.js"></script>
<script src="resources/js/summernote/lang/summernote-ko-KR.js"></script>
<script>
	$(document).ready(function() {
		$('#summernote').summernote({
			height : 350, // 에디터 높이
			minHeight : null, // 최소 높이
			maxHeight : null, // 최대 높이
			focus : true, // 에디터 로딩후 포커스를 맞출지 여부
			lang : "ko-KR", // 한글 설정
			placeholder : '최대 2048자까지 쓸 수 있습니다' //placeholder 설정

		});
	});
</script>
</head>
<body>
	<form method="post" action="writeCatCareLog.do">
	<input type="hidden" name="CATCARELOG_WRITER" value="${careInfo.CATCARELOG_WRITER}">
		<div id="wrap">
			<div id="head">
				<h1>냥박일지 작성</h1>
			</div>
			<div id="body">
				<div id="setting">
					<div id="setting1" class="settings">
						<div class="leftsettings">
							<div class="keys">
							고객 번호
							</div>
							<div class="values">
							${careInfo.CATCARELOG_USERNUM}
							</div>
						</div>
						<div class="rightsettings">
							<div class="keys">
							예약 번호
							</div>
							<div class="values">
							${careInfo.CATCARELOG_SERVICENUM}
							</div>
						</div>										
					</div>
					<div id="setting2" class="settings">
						<div class="leftsettings">
							<div class="keys">냥박 시작</div>
							<div class="values">
							${careInfo.CATCARELOG_CARESTART}
							</div>
						</div>
						<div class="rightsettings">
							<div class="keys">냥박 종료</div>
							<div class="values">
							${careInfo.CATCARELOG_CAREEND}
							</div>
						</div>								
					</div>
					<div id="setting3" class="settings">
						<div class="centersettings">
							<div class="keys" id="title_key">제목</div>
							<div class="values" id="title_value">
							${careInfo.CATCARELOG_TITLE}
							</div>
						</div>
					</div>
				</div>
				<div id="content">	
				${careInfo.CATCARELOG_CONTNET}
				</div><!-- end content -->
			</div><!-- end body -->
			<div id="leg">
				<input type="submit" value="글 작성" class="buttons" />
				<input type="reset" value="리셋" class="buttons" />
			</div><!-- end foot -->
		</div> <!-- end wrap -->
	</form>
</body>
</html>