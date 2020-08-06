'use strict';

let adminNumber = 0;
let adminScheduleNumber = 0;
const plusTime = (rowTime, rowProgram) => {
    const row = ` 
        <li>
            <label for="admin_kindergarden_schedule_time${adminScheduleNumber+1}">시간</label>
            <input type="text" id="admin_kindergarden_schedule_time${++adminScheduleNumber}" 
            class="form-control form-control-user" placeholder="time" value="${rowTime}">
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


