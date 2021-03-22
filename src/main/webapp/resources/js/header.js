$(document).ready(function(){
    $(".sub_menu").hide();
    $(".sidebar_content li").click(function(){
        $("ul",this).slideToggle("fast");
    });
});
$(".dropmenu ol li").hover(function () {
    $(this).find("ul").stop().fadeToggle(300);
});

$(".txt input, .txtboxID input, .txtboxTEL1 input, .txtbox input, .txt_zipCode input").on("focus",function(){
    $(this).addClass("focus");
});

$(".txt input, .txtboxID input, .txtboxTEL1 input, .txtbox input, .txt_zipCode input").on("blur",function(){
    if($(this).val() === "") {
        $(this).removeClass("focus");
    }
});

// 회원가입 버튼
function signUp(event) {
    event.preventDefault();
    document.querySelector('#login_popup').checked = false;
    document.querySelector('#popup').checked = true;
    document.querySelectorAll('.signup-form div input')
        .forEach((sign) => {
            sign.value = '';
            sign.blur();
            sign.classList.remove('focus');
        });
    setTimeout(() => document.querySelector('#join_id_input').focus(),50);

}

// 로그인 버튼
function login(event) {
    event.preventDefault();
    document.querySelector('#popup').checked = false;
    document.querySelector('#login_popup').checked = true;
    setTimeout(() => document.querySelector('#login_id_input').focus(),50);
}


// 회원가입시 체크 사항
// 아이디 체크
function idCheck(check) {
    const input = document.querySelector('.txtboxID input');
    if(input.value === '') {
        swal('아이디를 입력해주세요!');
        return true;
    }
    const xhr = new XMLHttpRequest();

    xhr.onload = function() {
        if (xhr.status === 200) {
            const object = JSON.parse(xhr.responseText);
            if(0 !== object.point) {
                swal('이미 사용하고 있는 아이디입니다!');
                return true;
            }
            else if(!check) {
                swal('사용할 수 있는 아이디입니다.');
                return false;
            }
        }
    }

    xhr.open('POST', 'idCheck.lo',true);
    xhr.setRequestHeader('Content-type', 'application/json');
    const data = { id: input.value };
    xhr.send(JSON.stringify(data));
}

// 비밀번호 체크
function pwdCheck() {
    const pwd = document.querySelector('#pwd').value;
    const copwd = document.querySelector('#copwd').value;

    if(pwd === copwd) return false;
    else {
        swal('비밀번호가 일치하지 않습니다');
        return true;
    };
}

// 회원가입 체크
function joinCheck(event) {
    if(idCheck(true)) return false;
    else if(pwdCheck()) return false;

    event.preventDefault();

    const form = document.querySelector('.signup-form');
    const phone = form.tel1.value + '-' + form.tel2.value + '-' +  form.tel3.value;
    const data = {
        id: form.id.value,
        pwd: form.pwd.value,
        name: form.name.value,
        phone: phone,
        email: form.email.value,
        zipcode: form.zipCode.value,
        address: form.address.value,
        code: '',
        type: '일반'
    };

    const xhr = new XMLHttpRequest();

    xhr.onload = function() {
        if (xhr.status === 200) {
            const object = JSON.parse(xhr.responseText);
            console.log(object.id);
            document.querySelector('signUp div div').innerHTML =
                `<label for="popup"></label>
            <div style="background-color: #F28888; height: 300px; color: white; text-align: center;">
                <img style="width:300px; margin: 30px auto;" src="resources/img/자산%208.png" alt="">
                <h1 style="margin: 30px;">저희 오묘가묘의 가족이 되신 것을 진심으로 환영합니다!</h1>
                <h1 style="margin: 30px;">로그인 하셔서 반려동물을 위한 다양한 서비스를 경험하세요!</h1>
            </div>
        `;
        }
    }

    xhr.open('POST', 'addMember.lo',true);
    xhr.setRequestHeader('Content-type', 'application/json');
    xhr.send(JSON.stringify(data));
}
//이메일 인증번호받기
function emailCheck(){

    const original = document.getElementById("original");
    $("#original").attr({"data-placeholder":"인증번호"});
    const original1 = document.getElementById("original1");
    $("#original1").attr({"name":"code","type":"text"});
    original1.value='';
    const checkbtnSend = document.getElementById("checkbtnSend");
    $("#checkbtnSend").attr({"type":"hidden"});

    const v1 = form2.code_check.value;
    const v2 = form2.code.value;
    if(v2!="") {
        if (v1 != v2) {
            $("#original").attr({"data-placeholder": "Email"});
        } else {
            alert("인증번호가 틀렸습니다.");
        }
    }
}

// 우편번호 체크
function zipCheck() {
    const width = 380;
    const height = 480;
    return new daum.Postcode({
        width: width,
        height: height,
        oncomplete: function(data) {
            const zipcode = document.querySelector('#sign_zipCode');
            const address = document.querySelector('#sign_address');
            zipcode.classList.add('focus');
            address.classList.add('focus');
            zipcode.value = data.zonecode;
            address.value = data.address;
        },
        theme: {
            bgColor: '#F28888'
        }
    }).open({
        popupName: '우편번호 검색',
        left: (window.screen.width / 2) - (width / 2),
        top: (window.screen.height / 2) - (height / 2)
    });
}

// sns 회원가입 구글로 넘김
function signGoogle() {
    const xhr = new XMLHttpRequest();

    xhr.onload = function() {
        if (xhr.status === 200) {
            const object = JSON.parse(xhr.responseText);
            window.location.href = object.url;
        }
    }

        xhr.open('GET', 'google.lo',true);
        xhr.setRequestHeader('Content-type', 'application/json');
        xhr.send(null);
};

// sns 아이디로 회원가입 진행
function snsSign(result) {
    document.querySelector('signUp div div').innerHTML =
        `<label for="sns_popup"></label>
                <form action="#" class="sns_signup-form" onsubmit="return snsSignCheck(event, result)">
                    <h1 style="font-weight: 700;">${result.type} 회원가입</h1>
                    <div class="txtboxID">
                       <input name="id" type="text" required autocomplete=off>
                       <span data-placeholder="ID"></span>
                   </div>
                   <input type="button" class="checkbtn" value="check" onclick="idCheck(false)">
                    <div class="txtboxTEL1">
                        <input name="tel1"  type="tel" pattern="0[0-9]{2}" required autocomplete=off>
                        <span data-placeholder="Tel"></span><a>ㅡ</a>
                    </div>
                    <div class="txtboxTEL2">
                        <input name="tel2"  type="tel" pattern="[0-9]{4}" required autocomplete=off><a>ㅡ</a>
                        <span data-placeholder="Tel2"></span>
                    </div>
                    <div class="txtboxTEL3">
                        <input name="tel3"  type="tel" pattern="[0-9]{4}" required autocomplete=off>
                        <span data-placeholder="Tel3"></span>
                    </div>
                    <div class="txt_zipCode">
                        <input id="sign_zipCode" name="zipCode"  type="number" required autocomplete=off>
                        <span data-placeholder="ZipCode"></span>
                    </div>
                    <input type="button" class="searchbtn" value="search" onclick="zipCheck()">
                    <div class="txt">
                        <input id="sign_address"  name="address"  type="text" required autocomplete=off>
                        <span data-placeholder="Address"></span>
                    </div>
                    <input type="submit" class="signup" value="Sign UP">
               </form>
                `;
    document.querySelector('#popup').checked = true;
    $(".txt input, .txtboxID input, .txtboxTEL1 input, .txtbox input, .txt_zipCode input").on("focus",function(){
        $(this).addClass("focus");
    });

    $(".txt input, .txtboxID input, .txtboxTEL1 input, .txtbox input, .txt_zipCode input").on("blur",function(){
        if($(this).val() === "") {
            $(this).removeClass("focus");
        }
    });
};

// sns 아이디로 가입
function snsSignCheck(event, result) {
    if(idCheck(true)) return false;

    event.preventDefault();

    const form = document.querySelector('.sns_signup-form');
    const phone = form.tel1.value + '-' + form.tel2.value + '-' +  form.tel3.value;
    const data = {
        id: form.id.value,
        pwd: '#$%&*%#@',
        name: result.name,
        phone: phone,
        email: result.email,
        zipcode: form.zipCode.value,
        address: form.address.value,
        code: result.code,
        type: result.type
    };

    const xhr = new XMLHttpRequest();

    xhr.onload = function() {
        if (xhr.status === 200) {
            const object = JSON.parse(xhr.responseText);
            console.log(object.id);
            document.querySelector('signUp div div').innerHTML =
                `<label for="popup"></label>
            <div style="background-color: #F28888; height: 300px; color: white; text-align: center;">
                <img style="width:300px; margin: 30px auto;" src="resources/img/자산%208.png" alt="">
                <h1 style="margin: 30px;">저희 오묘가묘의 가족이 되신 것을 진심으로 환영합니다!</h1>
                <h1 style="margin: 30px;">로그인 하셔서 반려동물을 위한 다양한 서비스를 경험하세요!</h1>
            </div>
        `;
        }
    }

    xhr.open('POST', 'addMember.lo',true);
    xhr.setRequestHeader('Content-type', 'application/json');
    xhr.send(JSON.stringify(data));
};

// sns 아이디 가입 여부 검사
function snsSignDuple(result) {
    const xhr = new XMLHttpRequest();
    const data = result;

    xhr.onload = function() {
        if (xhr.status === 200) {
            const object = JSON.parse(xhr.responseText);
            if(object.id === '유') {
                loginSNS(data);
                return;
            }
            return snsSign(result);
        }
    }


    xhr.open('POST', 'snsSignDuple.lo',true);
    xhr.setRequestHeader('Content-type', 'application/json');
    xhr.send(JSON.stringify(data));
};

function signKakao() {
    document.querySelector('#login_popup').checked = false;
    return new Promise((resolve, reject) => {
        // Kakao.init('24643592d6715878e7cd5aa89f148e76');
        Kakao.Auth.login({
            success: function (authObj) {
                // 로그인 성공시, API를 호출합니다.
                Kakao.API.request({
                    url: '/v2/user/me',
                    success: function (res) {
                        const code = res.id;  //유저의 카카오톡 고유 id
                        const email = res.kakao_account.email;   //유저의 이메일
                        const name = res.properties.nickname; //유저가 등록한 별명
                        const result = { code: code, name: name, email: email, type: 'kakao'};

                        snsSignDuple(result);
                    },
                    fail: function (error) {
                        swal(JSON.stringify(error));
                    }
                });
            },
            fail: function (err) {
                swal(JSON.stringify(err));
            }
        })
    })
};

// sns 회원가입 네이버로 넘김
function signNaver() {
    const url = 'https://nid.naver.com/nidlogin.login?oauth_token=eJvN5z7x5d6QzpKZNA&consumer_key=epIAIQoP1jJTDyUpzFxX&logintp=oauth2&nurl=https%3A%2F%2Fnid.naver.com%2Foauth2.0%2Fauthorize%3Fresponse_type%3Dtoken%26state%3D43d2d90f-736b-4f0b-8de6-d7bb1bbbf95a%26client_id%3DepIAIQoP1jJTDyUpzFxX%26redirect_uri%3Dhttp%253A%252F%252Flocalhost%253A8080%252FnaverCallback.lo%26locale%3Dko_KR%26inapp_view%3D%26oauth_os%3D&locale=ko_KR&inapp_view=&svctype=1';
    window.location.href = url;

    // window.location.href = naverLogin.generateAuthorizeUrl();
    // document.querySelector('#naverIdLogin').innerHTML = '';
    // document.querySelector('#naverIdLogin').style = 'display:flex';
};

// 네이버 로그인
function loginSNS(data) {
    const form = document.createElement("form");
    form.setAttribute("charset", "UTF-8");
    form.setAttribute("method", "GET"); // Get 또는 Post 입력
    form.setAttribute("action", "snsLogin.lo");

    const hiddenField = document.createElement("input");
    hiddenField.setAttribute("type", "hidden");
    hiddenField.setAttribute("name", "code");
    hiddenField.setAttribute("value", data.code);
    hiddenField.setAttribute("type", data.type);
    form.appendChild(hiddenField);

    document.body.appendChild(form);
    form.submit();
    document.body.removeChild(form);
}

function mainLogo() {
    window.location.href = 'main.do';
}

/* 설정정보를 초기화하고 연동을 준비 */
window.addEventListener('DOMContentLoaded', (event) => {
    const naverLogin = new naver.LoginWithNaverId(
        {
            clientId: "epIAIQoP1jJTDyUpzFxX",
            callbackUrl: "http://ec2-54-180-118-65.ap-northeast-2.compute.amazonaws.com/OMGM/naverCallback.lo",
            isPopup: false, /* 팝업을 통한 연동처리 여부 */
            loginButton: {color: "green", type: 3, height: 60} /* 로그인 버튼의 타입을 지정 */
        }
    );
    naverLogin.init();
},{once: true});


// 카카오 결제 관련
function kakaoPay(payment,url) {
    let IMP = window.IMP;
    IMP.init('imp95616027');
    IMP.request_pay({
        pg : 'kakao', // version 1.1.0부터 지원.
        pay_method : 'card',
        merchant_uid : 'merchant_' + new Date().getTime(),
        name : payment.name,
        amount : payment.price,
        buyer_email : payment.email,
        buyer_name : payment.buyer_name,
        buyer_tel : payment.phone,
        buyer_addr : payment.address,
        buyer_postcode : payment.zipcode,
        // m_redirect_url : 'https://localhost:8080/main.do'
        }, function(rsp) {
            if ( rsp.success ) {
                console.log(rsp);
                swal('결제가 완료되었습니다. 감사합니다!');
                const data = {
                    name: rsp.name, // "주문명:결제테스트"
                    merchantUid: rsp.merchant_uid, // 거래 고유번호
                    pgProvider: rsp.pg_provider, // "kakaopay"
                    price: rsp.paid_amount, // 결제가격
                    buyerName: rsp.buyer_name, // 주문자 이름
                    phone: rsp.buyer_tel, // 주문자 전화번호
                    email: rsp.buyer_email, // 주문자 이메일
                    address: rsp.buyer_addr, // 주문자 주소
                    zipcode: rsp.buyer_postcode, // 주문자 우편번호
                    service: payment.service,
                    animal: payment.animal,
                    animalAge: payment.animal_age,
                    etc: payment.etc
                };

                const xhr = new XMLHttpRequest();

                xhr.onload = () => {
                    if(xhr.status === 200) {
                        swal({
                            title: "결제완료",
                            text: "메인페이지로 이동합니다.",
                            icon: "success",
                        }).then(() => {
                            window.location.href = 'main.do';
                        });
                    }
                }

                xhr.open('POST',url,true);
                xhr.setRequestHeader('content-type','application/json');
                xhr.send(JSON.stringify(data));
        } else {
            var msg = '결제에 실패하였습니다.';
            msg += '에러내용 : ' + rsp.error_msg;
        }
        // console.log(rsp);
    });
}

let webSocket = null;
let nickname = null;

// 로그인 소켓
function loginSocket(id) {
    nickname = id;
    connect();

    function connect(){
        webSocket = new WebSocket("ws://ec2-54-180-118-65.ap-northeast-2.compute.amazonaws.com/OMGM/chat.lo");
        webSocket.onopen = onOpen;
        webSocket.onclose = onClose;
        webSocket.onmessage = onMessage;
        console.log('접속이 열렸습니다!');
    }

    function onOpen(){
        webSocket.send(nickname + "님이 입장하셨습니다.");
    }
    function onMessage(evt){
        const field = document.querySelector('#chatting_field');
        field.innerHTML += `<p>${evt.data}</p><br>`;

        const height = document.querySelectorAll('#chatting_field p').length;
        field.scrollTo({top:height*100, left:0, behavior:'auto'});
    }
    function onClose(){
        console.log('접속이 닫혔습니다!');
    }
}

function send(){
    if(webSocket.readyState !== 1){
        console.log(webSocket.readyState);
        return;
    }
    const input = document.querySelector('#chatting_input')
    const msg = input.value;
    webSocket.send(nickname + " : " + msg);
    input.value = '';
}

function enterSend(event) {
    if (event.keyCode !== 13) return;
    send();
}

function logOut() {
    if(webSocket !== null) {
        webSocket.send(nickname + "님이 퇴장하셨습니다");
        webSocket.close();
    }
    return window.location.href = 'logout.lo';
}

function chatting(id) {
    if(id === '') {
        swal('로그인을 먼저 해주세요!');
        return;
    }

    document.querySelector('#chatting_modal').checked = true;
    setTimeout(() => document.querySelector('#chatting_input').focus(),50);
}

window.addEventListener('click',(event) => {
    const info = document.querySelector('#header_myInfo');
    if(info === null) return;
    else if(event.target.id === 'myInfo_menu') {
        info.style.display = 'block';
        return;
    }
    info.style.display = 'none';
});

function shopping(event) {
    event.preventDefault();
    swal('로그인을 먼저 해주세요!');
}



