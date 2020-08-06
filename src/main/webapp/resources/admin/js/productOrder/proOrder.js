'use strict';

let order;
let orderNum = 0;

// 로그인 버튼
function detail(event) {
    const num01 = document.getElementById('orderSeq');
    const num02 = document.getElementById('orderSeq2');
    num02.value = num01.value;
    event.preventDefault();
    document.querySelector('#detail_popup').checked = true;
}

function createForm(order) {
    const row =
        ` <th id="orderSeq">`+order.no+`</th>
                <th>`+order.id+`</th>
                <th>`+order.date+`</th>
                <th>`+order.phone+`</th>
                <th>`+order.state+`</th>
                <th>`+order.price+`</th>
                <th><button onclick="detail(event)" type="button" class="btn btn-info btn-update">상세보기</button></th>
            `;

    const addOrder = document.createElement('tr');
    addOrder.setAttribute('class',`pro_order_tr`);
    addOrder.innerHTML = row;
    document.querySelector('#productOrder_form').appendChild(addOrder);

    const trOrder = document.querySelector(`#productOrder_form tr:nth-child(${++orderNum})`);
    const th = document.createElement('th');
    const button = document.createElement('button');
    button.setAttribute('type','button');
    button.setAttribute('class','btn btn-info btn-delete');
    button.setAttribute('value',order.no);
    button.innerText = '삭제';
    button.addEventListener('click',() => {

        window.location.href = 'productOrderDelete.mdo?order_no='+order.no;
        // const xhr = new XMLHttpRequest();
        // xhr.open('POST', 'productOrderDelete.mdo',true);
        // xhr.setRequestHeader('Content-type', 'application/json');
        // const data = {order_no: order.no};
        // xhr.send(JSON.stringify(data));
    });
    trOrder.appendChild(th);
    th.appendChild(button);
}
