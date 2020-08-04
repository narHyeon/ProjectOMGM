<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
<script>
    var naverLogin = new naver.LoginWithNaverId(
        {
            clientId: "자기 클라이언트 아이디",
            callbackUrl: "http://localhost:8080/naverCallback/",
            isPopup: false,
            callbackHandle: true
        }
    );
    naverLogin.init();

    window.addEventListener('load', function () {
        naverLogin.getLoginStatus(function (status) {

            if (status) {
                var email = naverLogin.user.getEmail();
                var name = naverLogin.user.getName();
                var id = naverLogin.user.getId();
                alert( email );
                alert( name );
                alert( id );
            } else {
                console.log("callback 처리에 실패하였습니다.");
            }
        });
    });
</script>

</body>
</html>
