<%--
  Created by IntelliJ IDEA.
  User: YongSun Jang
  Date: 2020-08-01
  Time: 오후 2:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>

<script type="text/javascript">
    var naver_id_login = new naver_id_login("epIAIQoP1jJTDyUpzFxX", "http://localhost:8080/loginCallback.do"); // 역시 마찬가지로 'localhost'가 포함된 CallBack URL

    // 접근 토큰 값 출력
    alert(naver_id_login.oauthParams.access_token);

    // 네이버 사용자 프로필 조회
    naver_id_login.get_naver_userprofile("naverSignInCallback()");

    // 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
    function naverSignInCallback() {
        alert(naver_id_login.getProfileData('email')+
            naver_id_login.getProfileData('nickname')+
            naver_id_login.getProfileData('age')+
            naver_id_login.getProfileData('id')+
            naver_id_login.getProfileData('name')+
            naver_id_login.getProfileData('gender')+
            naver_id_login.getProfileData('birthday')+
            naver_id_login.getProfileData('profile_image'));

    }
</script>

</body>
</html>
