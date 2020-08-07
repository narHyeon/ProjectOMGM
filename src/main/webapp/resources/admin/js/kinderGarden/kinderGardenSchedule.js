'use strict';

let adminNumber = 0;
let adminScheduleNumber = 0;
const plusTime = (rowTime, rowProgram) => {
    const row = ` 
        <li>
            <label for="admin_kindergarden_schedule_time${adminScheduleNumber+1}">시간</label>
            <input type="text" id="admin_kindergarden_schedule_time${++adminScheduleNumber}" 
            class="form-control form-control-user admin_kindergarden_schedule_time" placeholder="time" value="${rowTime}">
        </li>
        <li>
            <label for="admin_kindergarden_schedule_time${adminScheduleNumber+1}">교육 내용</label>
            <input type="text" id="admin_kindergarden_schedule_time${++adminScheduleNumber}" 
            class="form-control form-control-user admin_kindergarden_schedule_program" 
            placeholder="program" value="${rowProgram}">
        </li> `;
    const addrow = document.createElement('ul');
    addrow.classList.add(`admin_kindergarden_schedule_input`);
    addrow.classList.add(`admin_kindergarden_schedule_row${++adminNumber}`);
    addrow.innerHTML = row;
    document.querySelector('#admin_kindergarden_schedule_day').appendChild(addrow);

};
const minusTime = () => {
    const child = document.querySelector(`.admin_kindergarden_schedule_row${adminNumber--}`);
    if(child !== null) {
        document.querySelector('#admin_kindergarden_schedule_day').removeChild(child);
    }
};

function addSchedule(event) {
    event.preventDefault();
    // 아작스 처리
    const xhr = new XMLHttpRequest();

    xhr.onload = function() {
        if (xhr.status === 200) {
            console.log(JSON.parse(xhr.responseText));
            for(let i=1;i<=adminNumber;i++) {
                const timeSelector = `.admin_kindergarden_schedule_row${i} li:nth-child(1) input`
                const programSelector = `.admin_kindergarden_schedule_row${i} li:nth-child(2) input`
                const time = document.querySelector(timeSelector).value;
                const program = document.querySelector(programSelector).value;
                const data = { time:time, program:program };
                addScheduleRow(data);
            }
        }
    }

    xhr.open('POST', 'addSchedule.mdo',true);
    xhr.setRequestHeader('Content-type', 'application/json');
    const title = document.querySelector('#admin_kindergarden_schedule_title').value;
    const data = { title:title}
    xhr.send(JSON.stringify(data));
}

function addScheduleRow(data) {
    const xhr = new XMLHttpRequest();

    xhr.onload = function() {
        if (xhr.status === 200) {
            alert('스케쥴 등록이 정상적으로 처리되었습니다!');
        }
    }
    xhr.open('POST', 'addScheduleRow.mdo',true);
    xhr.setRequestHeader('Content-type', 'application/json');
    xhr.send(JSON.stringify(data));
}
