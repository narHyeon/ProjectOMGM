<%--
  Created by IntelliJ IDEA.
  User: Jury
  Date: 2020-08-03
  Time: 오전 9:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>

    <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
</head>

<body>
<a id="kakao-login-btn"></a>

<script type='text/javascript'>
    //<![CDATA[
    // 사용할 앱의 JavaScript 키를 설정해 주세요.
    Kakao.init('24643592d6715878e7cd5aa89f148e76');

    // 카카오 로그인 버튼을 생성합니다.
    Kakao.Auth.createLoginButton({
        container: '#kakao-login-btn',
        success: function(authObj) {

            // 로그인 성공시, API를 호출합니다.
            Kakao.API.request({
                url: '/v2/user/me',
                success: function(res) {
                    console.log(res);

                    var userID = res.id;  //유저의 카카오톡 고유 id
                    var userEmail = res.kaccount_email;   //유저의 이메일
                    var userNickName = res.properties.nickname; //유저가 등록한 별명

                    console.log(userID);
                    console.log(userEmail);
                    console.log(userNickName);
                },
                fail: function(error) {
                    alert(JSON.stringify(error));
                }
            });
        },
        fail: function(err) {
            alert(JSON.stringify(err));
        }
    });
    //]]>
</script>
</body>
</html>