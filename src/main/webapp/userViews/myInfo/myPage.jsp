<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<style>
#wrap {
   display: flex;
   flex-direction: column;
}
#head {
   min-width: 60%;
   margin-right: 15%;
   margin-top: 2%;
   margin-left: 28%;
   margin-bottom: 2%;
   font-size: 20px;
   padding-bottom: 1%;
   border-bottom: 2px solid #FFABB9;
}
#body {
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
#content {
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
</style>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
   $("#myPageFs").click(function(){
      window.location.href = 'myPage.do';
   });
   $("#myCatPageFs").click(function(){
      window.location.href = 'myCatPage.do';
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
</script>
<body>
   <div id="wrap">
      <div id="head">
         <h1>MY PAGE</h1>
      </div>
      <div id="body">
         <div id="banner">
            <fieldset class="fieldsetstyle" id="myPageFs">
               내 정보
            </fieldset>
            <fieldset class="fieldsetstyle" id="myCatPageFs">
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
         <div id="content">
            <div class="bar">
               <div class="bar-title">아이디</div>
               <div class="bar-content">lsmonkey</div>
            </div>
            <div class="bar">
               <div class="bar-title">비밀번호</div>
               <div class="bar-content">1234</div>
            </div>
            <div class="bar">
               <div class="bar-title">이름</div>
               <div class="bar-content">이승민</div>
            </div>
            <div class="bar">
               <div class="bar-title">닉네임</div>
               <div class="bar-content">닉네임</div>
            </div>
            <div class="bar">
               <div class="bar-title">휴대전화</div>
               <div class="bar-content">010- 7193- 9554</div>
            </div>
            <div class="bar">
               <div class="bar-title">이메일</div>
               <div class="bar-content">lsmonkey@naver.com</div>
            </div>
            <div class="bar">
               <div class="bar-title">주소</div>
               <div class="bar-content">대한민국</div>
            </div>
            <div class="bar">
               <div class="bar-title">상세주소</div>
               <div class="bar-content">서울</div>
            </div>
            <div id="bottom">
               <input type="button" value="내 정보 수정" onclick="goUpdate()" class="buttons">
               <input type="button" value="회원 탈퇴" onclick="" class="buttons">
            </div>
         </div>
      </div>
   </div>
</body>
</html>