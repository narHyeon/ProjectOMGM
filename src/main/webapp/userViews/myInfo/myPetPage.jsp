<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<title></title>
</head>

<style>
#mypetpage_wrap {
   display: flex;
   flex-direction: column;
}
#mypetpage_head {
   min-width: 60%;
   margin-right: 15%;
   margin-top: 2%;
   margin-left: 28%;
   margin-bottom: 2%;
   font-size: 20px;
   padding-bottom: 1%;
   border-bottom: 2px solid #FFABB9;
}
#mypetpage_body {
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
#mypetpage_content {
   display : flex;
   flex-direction :column;
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
.fieldsetstyle:hover{
   cursor: pointer;
}
#bottom {
   text-align: right; /*가운데 정렬*/
   margin-top: 2%;
   margin-right: 35%;
   margin-bottom: 2%;
}
.myPetPage_buttons {
   background-color: white;
   cursor: pointer;
   border: 2px solid #e2e2e2;
   font-size: 12px;
   padding-left: 1%;
   padding-right: 1%;
   color: purple;
   width: 18%;
   
}
.bar {
   display: flex;
   height: 45px;
   width: 100%;
}
.bar-title{
   width: 20%;
   height: 98%;
   background-color: #FFABB9;
   color: white;
   padding-left: 1.5%;
   padding-top : 1.5%;
   border-right: 2px solid #f6f6f6;
   border-top: 1px solid #f6f6f6;
}
.bar-content{
   width: 40%;
   height: 98%;
   background-color: #F28888;
   color: black;
   padding-left: 3%;
   padding-top : 1.5%;
   border-top: 1px solid #f6f6f6;
}

@media ( max-width : 768px) {
   * {
      margin: 0;
      padding: 0;
   }
   #title {
      text-align: center;
   }
   #banner {
      display: none;
   }
   #content {
      font-size: 13px;
      margin-left: 25%;
      margin-top: 7%;
   }
   .bar-content {
      margin-left: 5%;
      width: 300px;
      height: 50%;
   }

   @media ( max-width : 480px) {
      * {
         margin: 0;
         padding: 0;
      }
      #title {
         text-align: center;
         margin-right: 20%;
      }
      #banner {
         display: none;
      }
      #content {
         font-size: 11px;
         margin-left: 20%;
         margin-top: 8%;
      }
      .bar-content {
         margin-left: 5%;
         width: 250px;
         height: 50%;
      }
      .bar {
         display: flex;
         height: 60px;
         width: 350px;
         margin-bottom: 1%;
      }
   }
}

<!-- 모달창-->

#m-wrap {
	display: flex;
	height: 700px;
	width: 60%;
	margin-left: 23%;
	flex-direction: column;
	
	
}

#m-head {
   min-width: 60%;
   margin-right: 15%;
   margin-top: 2%;
   margin-left: 15%;
   margin-bottom: 2%;
   font-size: 20px;
   padding-bottom: 1%;
   border-bottom: 2px solid #FFABB9;
   text-align: center;
   margin-bottom:50px;
}
#m-bar {
	display: flex;
	height: 60px;
	width: 100%;
	margin-bottom: 1%;
}

#m-bar1 {
	display: flex;
	height: 60px;
	width: 100%;
	margin-bottom: 1%;
}

#m-bar2 {
	display: flex;
	height: 60px;
	width: 100%;
	margin-bottom: 1%;
}

#m-bar3 {
	display: flex;
	height: 60px;
	width: 100%;
	margin-bottom: 1%;
}

#m-bar4 {
	display: flex;
	height: 200px;
	width: 100%;
	margin-bottom: 1%;
}

#m-bar-content{background-color:white; margin-left:5%;  margin-top:-0.5%; width:70%; height:50%; border: 1px solid #FFABB9;}
#m-bar-content1{background-color:white; margin-left:5%;  width:70%; height:50%; }
#m-bar-content2{background-color:white; margin-left:5%;  width:70%; height:50%; }
#m-bar-content3{background-color:white; margin-left:5%;  width:70%; height:50%; }
#m-bar-content4{background-color:white; margin-left:5%;  width:70%; height:50%; }
#m-bar-content5{background-color:white; margin-left:5%;  width:70%; height:50%; }
#m-bar-content6{background-color:white; margin-left:5%;  width:70%; height:50%; }

#m-selectstyle{border: 1px solid #FFABB9; padding:0.5%;  border-radius:3%;}
#m-inputstyle{border: 1px solid #FFABB9; border-radius:3%; padding:0.5%;}
#m-inputstylephone{border: 1px solid #FFABB9; border-radius:3%; padding:0.5%; margin-right:1%; margin-left:1%; width:15%;}
#m-inputstylemail{border: 1px solid #FFABB9; border-radius:3%; padding:0.5%; margin-right:1%; margin-left:1%; width:30%;}
#m-textareastyle{border: 1px solid #FFABB9; padding:0.5%; margin-right:1%; margin-left:1%; width:100%; height:100%;}
#modalstyle{border: 2px solid #e2e2e2; color:black; font-size:13px;margin-right:2%; width:100px;}
</style>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
   $("#myPageFs").click(function(){
      window.location.href = 'myPage.do';
   });
   $("#myPetPageFs").click(function(){
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
   function goUpdate() {
      window.location.href = "myPageUpdate.do";
   }
   function goPetUpdate() {
	   window.location.href = "myPetUpdate.do";
   }
</script>
<body>
   <div id="mypetpage_wrap">
      <div id="mypetpage_head">
         <h1>My CatPage</h1>
      </div>
      <div id="mypetpage_body">
         <div id="banner">
            <fieldset class="fieldsetstyle" id="myPageFs">
               내 정보
            </fieldset>
            <fieldset class="fieldsetstyle" id="myPetPageFs">
               내 고양이 정보
            </fieldset>
            <fieldset class="fieldsetstyle" id="myServiceListFs">
               서비스
            </fieldset>
            <fieldset class="fieldsetstyle" id="myBuyListLogFs">
               구매내역
            </fieldset>
            <fieldset class="fieldsetstyle" id="myCatCareLogFs">
               반려묘 일지
            </fieldset>
            <fieldset class="fieldsetstyle" id="myReViewFs">
               내가 작성한 후기
            </fieldset>
         </div>
         
         <div id="mypetpage_content">
         <a href="#ex1" rel="modal:open" id="modalstyle">고양이 정보 추가</a>
        
         <div id="catinfo_tle">
         <c:forEach var="mypetpage" items="${MyPetPageList}" varStatus="num">
            <div class="bar">
               <div class="bar-title">종류</div>
               <div class="bar-content">${mypetpage.PET_KIND}</div>
            </div>   
            <div class="bar">
               <div class="bar-title">종류의종류</div>
               <div class="bar-content">${mypetpage.PET_VARIETY}</div>
            </div>
            <div class="bar">
               <div class="bar-title">이름</div>
               <div class="bar-content">${mypetpage.PET_NAME}</div>
            </div>
            <div class="bar">
               <div class="bar-title">나이</div>
               <div class="bar-content">${mypetpage.PET_AGE}</div>
            </div>
            <div class="bar">
               <div class="bar-title">성별</div>
               <div class="bar-content">${mypetpage.PET_GENDER}</div>
            </div>
            <div class="bar">
               <div class="bar-title">특이사항</div>
               <div class="bar-content">${mypetpage.PET_COMMENT}</div>
            </div>
            <div id="bottom">
            	 <input type="button" value="수  정" onclick="goPetUpdate()" class="buttons" >
               <input type="button" value="삭  제" onclick="" class="buttons">
          
            </div>
         </c:forEach>
           </div> <!-- catinfo tle --> 
          
          <div>
          
          </div>
          
         </div>
      </div>
   </div>
<div id="ex1" class="modal">
  
	
	<div id="m-wrap">
	 <div id="m-head">
         <h1 align="center">내 고양이 정보 추가</h1> 
      </div>
      <form action="myPetPage.do" method="post">
		<div id="m-bar">종류
		<div id="m-bar-content1">
			<input id="m-inputstyle" type="text" name="pet_kind"/>		
		</div>
		</div>
		
		<div id="m-bar1">종류의종류	
		<div id="m-bar-content2">
			<input id="m-inputstyle" type="text" name="pet_variety"/>
		</div>
		</div>
		
		<div id="m-bar2">이름
		
		<div id="m-bar-content3">
			<input id="m-inputstylephone" type="text" name="pet_name"/>
		</div>
		</div>
		
		<div id="m-bar3">나이
		
		<div id="m-bar-content5">
			<input id="m-inputstylemail" type="text" name="pet_age"/>
		</div>
		</div>
		
		<div id="m-bar2">성별
		
		<div id="m-bar-content5">
			<input id="m-inputstyle" type="text" name="pet_gender"/>
		</div>
		</div>
		
		<div id="m-bar4">특이사항
		<div id="m-bar-content6">
			<textarea id="m-textareastyle" name="pet_comment"></textarea>
		</div>
		</div>
		</form>
	</div>
	 <a href="#" rel="modal:close">
	 <input type="submit" value="완료" class="myPetPage_buttons" >
	 </a>
  <a href="#" rel="modal:close">닫기</a>
</div>   
</body>
</html>


