<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=0.25, maximum-scale=5, user-scalable=no">
<title>오묘가묘 - HOME</title>
<link rel="stylesheet" href="resources/style/reset.css" />
<link rel="stylesheet" href="resources/style/solid.css">
<link rel="stylesheet" href="resources/style/sidebar.css">
<link rel="stylesheet" href="resources/style/footer.css">
<link rel="stylesheet" href="resources/style/button.css">
<link rel="stylesheet" href="resources/style/header.css">
<link rel="shortcut icon" href="resources/img/자산%208.png">
<link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@600&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/844385d242.js" crossorigin="anonymous"></script>
<style>
	/*플로팅메뉴*/
	.wishlist_menu {
		border: 1px solid pink;
		background-color: white;
		position: absolute;
		top: 400px;
		right: 50px;
		width: 60px;
		height: 60px;
		-webkit-transition: top 0.4s;
		transition: top 0.4s;
		font-size: 30px;
		color: #5a5a5a;
		padding-left: 12px;
		padding-top: 16px;

	}

	.wishlist_menu2 {
		border: 1px solid pink;
		background-color: white;
		position: absolute;
		top: 400px;
		right: 50px;
		width: 60px;
		height: 120px;
		-webkit-transition: top 0.4s;
		transition: top 0.4s;
		font-size: 30px;
		color: #5a5a5a;
		padding-left: 15px;
		padding-top: 75px;
	}

	.wishlist_menu i:hover, .wishlist_menu2 i:hover {
		color: #F28888;
	}
	#MOVE_TOP_BTN {
		position: fixed;
		right: 60px;
		bottom: 50px;
		display: none;
		z-index: 999;
		background: #F28888;
		color:white;
		width: 50px;
		height: 50px;
		border-radius: 40px;
		padding-left: 11px;
		padding-top: 17px;
	}
#base {
	overflow: hidden;
	display: flex;
	flex-direction: column;
	align-content: stretch;

	padding-top: 80px;
}
#base #base_header {
	position: fixed;
	top: 0;
	left: 0;
	right: 0;
	z-index: 1000;
}
	@media ( max-width : 870px) {
		#base {
			overflow: hidden;
			display: flex;
			flex-direction: column;
			align-content: stretch;

			padding-top: 60px;
		}
	}
</style>
</head>
<body>
	<div id="base">
		<div id="base_header">
			<tiles:insertAttribute name="header" />
		</div>
		<div style="min-height:500px;">
			<tiles:insertAttribute name="body" />
		</div>
		<div>
			<tiles:insertAttribute name="footer" />
		</div>
	</div>
	<div id="MOVE_TOP_BTN" style=" cursor:pointer;" onclick="window.scrollTo(0,0);">TOP</div>
	<div class="scroll_menu">
		<div class="wishlist_menu2" style="cursor:pointer;"><a href="#"></a><i class="far fa-heart"></i></div>
		<div class="wishlist_menu" style="cursor:pointer;"><a href="#"></a> <i class="fas fa-shopping-cart"></i></div>
		<div id="create-channel-chat-button"></div>
	</div>
	<script>
		//top버튼
		$(function() {
			$(window).scroll(function() {
				if ($(this).scrollTop() > 200) {
					$('#MOVE_TOP_BTN').fadeIn();
				} else {
					$('#MOVE_TOP_BTN').fadeOut();
				}
			});

			$("#MOVE_TOP_BTN").click(function() {
				$('.pro_html, .proList_body').animate({
					scrollTop : 0
				}, 200);
				return false;
			});
		});
		//스크롤메뉴
		$(function(){
			var t;
			var timer;

			// $(window).scroll(function(){
			//    t=$(window).scrollTop();
			//    $(".ball").animate({top:t+300}, 300);
			// });

			$(window).scroll(function(){
				clearTimeout(timer);
				timer=setTimeout(function(){
					t=$(window).scrollTop();
					$(".wishlist_menu, .wishlist_menu2, #create-channel-chat-button").animate({top:t+400},1);
				}, 150);
			});
		});
		Kakao.init('c089c8172def97eb00c07217cae17495');
		Kakao.Channel.createChatButton({
			container: '#create-channel-chat-button',
			channelPublicId: '_VmDAK'
		});
	</script>
</body>
</html>
