<%--
  Created by IntelliJ IDEA.
  User: Jury
  Date: 2020-08-18
  Time: 오후 7:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
<style>
    .alert.alert-info {
        background: #FAFAFA;
        border-color: #36b9cc;
    }
    .alert {
        border-radius: 0;
        border: none;
        border-left: 4px solid transparent;
        color: #4A4A4A;
        font-size: 14px;
        line-height: 1.6;
    }
    .messageTxt{
        border: 0;
        outline:0 ;
        border-bottom:2px solid #9da0a5 ;
    }
    .messageInfo{
        padding-left: 10px;
    }
    #messageTextarea{
        width:50%;
    }

</style>
</head>
<body>
<!-- Page Heading -->

<!-- DataTales Example -->
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-info">메세지 보내기</h6>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <br>
            <div class="alert alert-info">
                <a class="text-primary" href="#sms_ad_warning" role="button" data-toggle="collapse" aria-expanded="true" aria-controls="collapseExample">광고성 문자메시지 전송시 주의사항</a><br>
                <div id="sms_ad_warning" class="collapse in" style="padding-top: 12px;" aria-expanded="true">
                    <ol class="no-margin">
                        <li>전송시 (광고)를 메시지 시작되는 부분에 입력해 주세요. (광/고), (광_고), (광,고) 와 같이 변칙 표기는 안됩니다.</li>
                        <li>수신자가 어디에서 온 광고인지 인지 할수 있도록 전송자의 명칭(업체명)을 표시하여야 합니다.</li>
                        <li>수신거부, 수신동의철회 할 수 있는 방식을 수신자가 비용을 부담하지 아니한다는 것과 함께 안내 하여야 합니다.<br>(수신거부시 14일 이내에 조치하고 처리 결과를 알려주어야 합니다.)</li>
                        <li><strong>수신자가 통신사의 스팸차단 서비스를 이용 중인 경우 광고성 문자가 전송되지 않을 수 있으나 도달 여부를 시스템에서 알 수 없기에 과금처리 됩니다.</strong></li>
                    </ol>
                    <p>위 사항 위반시 3천만원 이하의 과태료가 부과될 수 있습니다.</p>
                </div>
            </div>
            <br>
            <form action="smsMessage.mdo">
                <div class="messageInfo">받는사람번호 : <input type="text" class="messageTxt" name="sendNumber"></div><br>
                <div class="messageInfo">보내는사람번호 : <input type="text" class="messageTxt" name="receiveNumber"></div><br>
                <div class="messageInfo">보내실 내용 <br><input type="text" class="messageTxt" id="messageTextarea" name="message"></div><br>
<%--                <button type="submit">전송</button>--%>
                <button type="submit" style="padding-left:10px" class="btn btn-info">보내기</button>
            </form>
        </div>
    </div>
</div>

</body>
</html>
