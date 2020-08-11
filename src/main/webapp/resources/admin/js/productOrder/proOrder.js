'use strict';

let order;
let orderNum = 0;


function detail(event) {
    const num = event.target.value;
    const th1 = document.querySelector(`.pro_order_tr${num} th:nth-child(1)`);
    const th2 = document.querySelector(`.pro_order_tr${num} th:nth-child(2)`);
    const th3 = document.querySelector(`.pro_order_tr${num} th:nth-child(3)`);
    const th4 = document.querySelector(`.pro_order_tr${num} th:nth-child(7)`);
    const th5 = document.querySelector(`.pro_order_tr${num} th:nth-child(8)`);
    const th6 = document.querySelector(`.pro_order_tr${num} th:nth-child(9)`);
    console.log(th4);
    console.log(th5);
    console.log(th6);


    document.querySelector(`#detail_order_header`).innerHTML = `
    <p class="productOrderField"><span style="padding-right:10px; font-weight: bold;">주문자</span>${th2.innerHTML}</p>
    <p class="productOrderField"><span style="padding-right:10px; font-weight: bold;">주문날짜</span>${th3.innerHTML}</p>
`;
    document.querySelector(`#detail_order_footer`).innerHTML = `
    <p class="productOrderField"><span style="padding-right:10px; font-weight: bold;">수령인</span>${th4.innerHTML}</p>
    <p class="productOrderField"><span style="padding-right:10px; font-weight: bold;">주소</span>${th5.innerHTML}</p>
    <p class="productOrderField"><span style="padding-right:10px; font-weight: bold;">메모</span>${th6.innerHTML}</p>
    `;


    // const num01 = document.getElementById('');
    // const num02 = document.getElementById('orderSeq2');
    // num02.value = num01.value;
    // event.preventDefault();
    document.querySelector('#detail_popup').checked = true;

}

let num = 0;

function createForm(order) {
    const row =
        ` <th id="orderSeq">`+order.no+`</th>
                <th>`+order.date+`</th>
                <th>`+order.id+`</th>
                <th>`+order.phone+`</th>
                <th>`+order.receiver+`</th>
                <th>`+order.address+`</th>
                <th>`+order.quantity+`</th>
                <th>`+order.price+`</th>
                <th>`+order.memo+`</th>
                <th>`+order.state+`</th>
              
                
                
<!--                <th><button id="order_detail_btn${++num}" onclick="detail(event)" type="button" class="btn btn-info btn-update" value="${num}">상세보기</button></th>-->
            `;



    const addOrder = document.createElement('tr');
    addOrder.setAttribute('class',`pro_order_tr${num}`);
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
        window.location.href = 'productOrderDelete.mdo?order_status_no='+order.no;
    });
    trOrder.appendChild(th);
    th.appendChild(button);
}