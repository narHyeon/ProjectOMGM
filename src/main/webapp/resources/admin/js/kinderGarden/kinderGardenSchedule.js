'use strict';

let adminNumber = 0;
let adminScheduleNumber = 0;
const plusTime = () => {
    document.querySelector('#admin_kindergarden_schedule_day').innerHTML +=
        ` <ul class="admin_kindergarden_schedule_input admin_kindergarden_schedule_row${++adminNumber}">
                <li>
                    <label for="admin_kindergarden_schedule_time${adminScheduleNumber+1}">시간</label>
                    <input type="text" id="admin_kindergarden_schedule_time${++adminScheduleNumber}" class="form-control form-control-user" placeholder="time">
                </li>
                <li>
                    <label for="admin_kindergarden_schedule_time${adminScheduleNumber+1}">교육 내용</label>
                    <input type="text" id="admin_kindergarden_schedule_time${++adminScheduleNumber}" class="form-control form-control-user admin_kindergarden_schedule_program" placeholder="program">
                </li>
            </ul>`;
};
const minusTime = () => {
    const child = document.querySelector(`.admin_kindergarden_schedule_row${adminNumber--}`);
    if(child !== null) {
        document.querySelector('#admin_kindergarden_schedule_day').removeChild(child);
    }
};

for(let i=0;i<2;i++) plusTime(); // 컬럼 추가
