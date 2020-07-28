<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        #app {
            width:100%;
            height:500px;
            background-color: skyblue;
            text-align: center;
        }
    </style>
</head>
<body>
<div id="app">
    <button id="btn" >jquery button</button>
    <button @click="getList" >json receive</button>
    <button @click="sendData" >json send</button>
    <button @click="getMap" >map receive</button>
    <form @submit.prevent="put">
        <input  id="input">
        <button type="submit">input test</button>
    </form>
    <p>seq : {{seq}}</p>
    <p>writer : {{writer}}</p>
    <div id="test"></div>
</div>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    const app = new Vue({
        el:'#app',
        data: {
            seq: 123,
            writer: '1',
            title: '',
            content: '',
            regDate: '',
            cnt: '',
        },
        methods: {
            getData({seq, writer}) {
                this.seq = seq;
                this.writer = writer;
            },
            sendData() {
                const xhr = new XMLHttpRequest();

                xhr.open('POST', 'test.do',true);
                xhr.setRequestHeader('Content-type', 'application/json');
                const data = { seq: 3, title: 'JavaScript', writer: 'Park', cnt: 5000};
                xhr.send(JSON.stringify(data));
            },
            put(e) {
                console.log(e); // 호출한 태그
                const data = document.querySelector('#input').value
                document.querySelector('#input').value = "";
                console.log(data);

                const xhr = new XMLHttpRequest();

                xhr.open("POST", "put.do", true); // 전송방식, 경로, true는 비동기
                xhr.setRequestHeader('Content-type', 'application/json');
                xhr.send(JSON.stringify(data));
            },
            getList() {
                const xhr = new XMLHttpRequest();
                const get = this.getData; // 내부 메서드

                xhr.onload = function() {
                    if (xhr.status === 200) {
                        console.log('---------- JSON List -----------');
                        console.log('xhr.responseText: ' + xhr.responseText);
                        const object = JSON.parse(xhr.responseText);
                        console.log('object: ');
                        console.log(object);
                        console.log('---------------');
                        console.log('object[0]: ');
                        console.log(object[0]);
                        const map = new Map();
                        map.set('1',123);

                        console.log(map.get('1'))

                        get({ // 매개 변수 오브젝트로 전달
                            seq : object[0].seq,
                            writer : object[0].writer
                        }); // 메서드를 이용해 값 이동
                        document.querySelector('#test').innerHTML = `<div> JSON으로 데이터 받아오기 LIST형식 글 작성자 이름: `+object[0].writer+`</div>`;
                    }
                };
                xhr.open("GET", "data.do", true); // 전송방식, 경로, true는 비동기
                xhr.send(null);
            },
            getMap() {
                const xhr = new XMLHttpRequest();

                xhr.onload = function() {
                    if (xhr.status === 200) {
                        console.log('---------- JSON Map -----------');
                        console.log('xhr.responseText' + xhr.responseText);
                        const object = JSON.parse(xhr.responseText);
                        console.log('object: ');
                        console.log(object);
                        console.log('---------------');
                        console.log('object.vo: ');
                        console.log(object.vo);
                        document.querySelector('#test').innerHTML = `<div> JSON으로 데이터 받아오기 MAP형식 글 번호 : `+object.vo.seq+`</div>`;
                    }
                };
                xhr.open("GET", "map.do", true); // 전송방식, 경로, true는 비동기
                xhr.send(null);
            },
        }
    });
</script>
<script>
    $(document).ready(function() {
        $("#btn").click(function() {
            // const result = document.getElementById('p');
            $.ajax({
                type: 'GET',
                url : "data.do", // data.do에서 받아옴
                dataType :"json", // 데이터타입을 json 으로 받아옴
                success : function(data) {
                   console.log('성공');
                },
                error : function(e) {
                    console.log(e.responseText);
                }
            });
        });
    });
</script>
</body>
</html>
