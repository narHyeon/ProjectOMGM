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

function signUp(event) {
    event.preventDefault();
    document.querySelector('#popup').checked = true;
    document.querySelectorAll('.signup-form div input')
        .forEach((sign) => {
            sign.value = '';
            sign.blur();
            sign.classList.remove('focus');
        });
}

function login(event) {
    event.preventDefault();
    document.querySelector('#login_popup').checked = true;
}


// 회원가입시 체크 사항

function idCheck(check) {
    const input = document.querySelector('.txtboxID input');
    if(input.value === '') {
        alert('아이디를 입력해주세요!');
        return true;
    }
    const xhr = new XMLHttpRequest();

    xhr.onload = function() {
        if (xhr.status === 200) {
            const object = JSON.parse(xhr.responseText);
            if(0 !== object.point) {
                alert('이미 사용하고 있는 아이디입니다!');
                return true;
            }
            else if(!check) {
                alert('사용할 수 있는 아이디입니다.');
                return false;
            }
        }
    }

    xhr.open('POST', 'idCheck.lo',true);
    xhr.setRequestHeader('Content-type', 'application/json');
    const data = { id: input.value };
    xhr.send(JSON.stringify(data));
}

function pwdCheck() {
    const pwd = document.querySelector('#pwd').value;
    const copwd = document.querySelector('#copwd').value;

    if(pwd === copwd) return false;
    else {
        alert('비밀번호가 일치하지 않습니다');
        return true;
    };
}

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
        address: form.address.value
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

// sns 회원가입
function signGoogle() {
    const xhr = new XMLHttpRequest();

    xhr.onload = function() {
        if (xhr.status === 200) {
            const object = JSON.parse(xhr.responseText);
            console.log(object.url);
        }
    }

        xhr.open('GET', 'google.lo',true);
        xhr.setRequestHeader('Content-type', 'application/json');
        xhr.send(null);
}

