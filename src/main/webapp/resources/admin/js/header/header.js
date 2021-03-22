let webSocket;
let nickname;

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
        const field = document.querySelector('#admin_chatting_field');
        field.innerHTML += `<p>${evt.data}</p><br>`;

        const height = document.querySelectorAll('#admin_chatting_field p').length;
        field.scrollTo({top:height*100, left:0, behavior:'auto'});
    }
    function onClose(){
        console.log('접속이 닫혔습니다!');
    }
}

function send(event){
    if(event !== undefined && event.button === 0) event.stopPropagation();
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
