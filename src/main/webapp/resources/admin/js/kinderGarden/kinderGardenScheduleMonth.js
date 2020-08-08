'use strict';

let adminNumber = 0;
let adminScheduleNumber = 0;
const plusMonth = (rowMonth) => {
    const row = ` 
        <thead class="education_schedule_title_month">
            <tr>
                <th>요일</th> <th>월</th> <th>화</th> <th>수</th> <th>목</th> <th>금</th>
            </tr>
        </thead>
        <tbody class="education_schedule_month_tbody">
            <tr class="education_schedule_month_subTitle">
                <td>구분</td> <td></td> <td></td> <td>${--adminNumber}주차</td> <td></td> <td></td>
            </tr>
            <tr class="education_schedule_month_subTitle">
                <td>오전수업</td>
                <td><input type="text" class="form-control form-control-user" placeholder="program" value="${rowMonth.monday_am}"></td>
                <td><input type="text" class="form-control form-control-user" placeholder="program" value="${rowMonth.monday_am}"></td>
                <td><input type="text" class="form-control form-control-user" placeholder="program" value="${rowMonth.monday_am}"></td>
                <td><input type="text" class="form-control form-control-user" placeholder="program" value="${rowMonth.monday_am}"></td>
                <td><input type="text" class="form-control form-control-user" placeholder="program" value="${rowMonth.monday_am}"></td>
            </tr>
            <tr class="education_schedule_month_subTitle">
                <td>오후수업</td>
                <td><input type="text" class="form-control form-control-user" placeholder="program" value="${rowMonth.monday_am}"></td>
                <td><input type="text" class="form-control form-control-user" placeholder="program" value="${rowMonth.monday_am}"></td>
                <td><input type="text" class="form-control form-control-user" placeholder="program" value="${rowMonth.monday_am}"></td>
                <td><input type="text" class="form-control form-control-user" placeholder="program" value="${rowMonth.monday_am}"></td>
                <td><input type="text" class="form-control form-control-user" placeholder="program" value="${rowMonth.monday_am}"></td>
            </tr>
        </tbody> `;
    
    const addMonth = document.querySelector('.admin_kindergarden_schedule_month')
    addMonth.innerHTML += row;
};
const minusMonth = () => {
    const child = document.querySelector(`.admin_kindergarden_schedule_row${adminNumber--}`);
    if(child !== null) {
        document.querySelector('#admin_kindergarden_schedule_day').removeChild(child);
    }
};

let i = 1;

function addSchedule(event) {
    event.preventDefault();
    // 아작스 처리
    const xhr = new XMLHttpRequest();

    xhr.onload = function() {
        if (xhr.status === 200) {
            if(0 !== adminNumber) {
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
            i++;
            if(0 === --adminNumber) {
                i = 1;
                alert('유치원 스케쥴 등록이 정상적으로 처리되었습니다!');
            } else {
                const timeSelector = `.admin_kindergarden_schedule_row${i} li:nth-child(1) input`
                const programSelector = `.admin_kindergarden_schedule_row${i} li:nth-child(2) input`
                const time = document.querySelector(timeSelector).value;
                const program = document.querySelector(programSelector).value;
                const data = { time:time, program:program };
                addScheduleRow(data);
            }
        }
    }
    xhr.open('POST', 'addScheduleRow.mdo',true);
    xhr.setRequestHeader('Content-type', 'application/json');
    xhr.send(JSON.stringify(data));
}
