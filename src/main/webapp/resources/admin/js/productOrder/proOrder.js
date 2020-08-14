'use strict';

function sendData(no){
    console.log(111111);
    $.ajax({
        type: 'POST',
        url: "updateState.mdo", //cross-domain error가 발생하지 않도록 주의해주세요
        dataType: 'json',
        contentType : 'application/json',
        data: JSON.stringify({
            order_no : no
        }),
        success : function(data) {
            console.log('success');
            document.querySelector(`.order_feild${no} #orderState`).innerHTML = '발송처리';
            // setTimeout(update,10000, no);
            update(no);
            // window.location.reload();
        },
        error: function(xhr) {
            console.log(xhr);
        }
    });
}




