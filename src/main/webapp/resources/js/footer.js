const footer = new Vue({
    el: '#foot',
    data: {
        title: '(주) 오묘가묘 한남점',
        name: '레오',
        companyNumber: '123-11-56780',
        address: '서울특별시 용산구 녹사평대로 150 고원빌딩 3층',
        phoneNumber: '1188-9922'
    },
    methods: {
        footTerm(e) {
            e.preventDefault();
            const name = e.target.name;
            const width = '500';
            const height = '600';
            const top = Math.ceil((window.screen.width - height) / 8);
            const left = Math.ceil((window.screen.width - width) / 2);

            window.open('term.do?termTitle='+name, '약관', 'width=' + width + ',height=' + height + ',top=' + top + ',left=' + left);
        },
        facebook() {
            window.location.href = 'https://ko-kr.facebook.com';
        },
        youtube() {
            window.location.href = 'https://youtu.be/hmYVuY7VDZc';
        },
        instagram() {
            window.location.href = 'https://www.instagram.com';
        }
    },
    created() {
    }
});


