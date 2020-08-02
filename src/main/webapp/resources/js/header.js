$(document).ready(function(){
    $(".sub_menu").hide();
    $(".sidebar_content li").click(function(){
        $("ul",this).slideToggle("fast");
    });
});
$(".dropmenu ol li").hover(function () {
    $(this).find("ul").stop().fadeToggle(300);
});

$(".txt input, .txtboxID input, .txtboxTEL1 input, .txtbox input").on("focus",function(){
    $(this).addClass("focus");
});

$(".txt input, .txtboxID input, .txtboxTEL1 input, .txtbox input").on("blur",function(){
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
    const xhr = new XMLHttpRequest();

    xhr.onload = function() {
        if (xhr.status === 200) {
            const object = JSON.parse(xhr.responseText);
            if(input.value === '') {
                alert('아이디를 입력해주세요!');
                return true;
            } else if(input.value === object.id) alert('이미 사용하고 있는 아이디입니다!');
            else if(!check) alert('사용할 수 있는 아이디입니다.');
            return false;
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

    if(pwd === copwd) return true;
    else {
        alert('비밀번호가 일치하지 않습니다');
        return false
    };
}

function joinCheck() {
    if(idCheck(true)) return false;
    if(pwdCheck()) return false;

    return true;
}
