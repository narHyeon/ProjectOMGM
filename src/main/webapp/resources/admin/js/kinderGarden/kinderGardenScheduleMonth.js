'use strict';

let adminNumber = 0;
let adminScheduleNumber = 0;
const plusMonth = (rowMonth) => {
    if(rowMonth === undefined){
        rowMonth = {
            monday_am:'',
            tuesday_am:'',
            wednesday_am:'',
            thursday_am:'',
            friday_am:'',
            monday_pm:'',
            tuesday_pm:'',
            wednesday_pm:'',
            thursday_pm:'',
            friday_pm:''
        };
    }
    const row = ` 
        <thead class="education_schedule_title_month${++adminScheduleNumber}">
            <tr>
                <th>요일</th> <th>월</th> <th>화</th> <th>수</th> <th>목</th> <th>금</th>
            </tr>
        </thead>
        <tbody class="education_schedule_month_tbody${adminScheduleNumber}">
            <tr class="education_schedule_month_subTitle">
                <td>구분</td> <td></td> <td></td> <td>${++adminNumber}주차</td> <td></td> <td></td>
            </tr>
            <tr class="education_schedule_month_subTitle">
                <td>오전수업</td>
                <td><input type="text" class="form-control form-control-user" placeholder="program" value="${rowMonth.monday_am}"></td>
                <td><input type="text" class="form-control form-control-user" placeholder="program" value="${rowMonth.tuesday_am}"></td>
                <td><input type="text" class="form-control form-control-user" placeholder="program" value="${rowMonth.wednesday_am}"></td>
                <td><input type="text" class="form-control form-control-user" placeholder="program" value="${rowMonth.thursday_am}"></td>
                <td><input type="text" class="form-control form-control-user" placeholder="program" value="${rowMonth.friday_am}"></td>
            </tr>
            <tr class="education_schedule_month_subTitle">
                <td>오후수업</td>
                <td><input type="text" class="form-control form-control-user" placeholder="program" value="${rowMonth.monday_pm}"></td>
                <td><input type="text" class="form-control form-control-user" placeholder="program" value="${rowMonth.tuesday_pm}"></td>
                <td><input type="text" class="form-control form-control-user" placeholder="program" value="${rowMonth.wednesday_pm}"></td>
                <td><input type="text" class="form-control form-control-user" placeholder="program" value="${rowMonth.thursday_pm}"></td>
                <td><input type="text" class="form-control form-control-user" placeholder="program" value="${rowMonth.friday_pm}"></td>
            </tr>
        </tbody> `;

    const addMonth = document.querySelector('.admin_kindergarden_schedule_month')
    addMonth.innerHTML += row;
};
const minusMonth = () => {
    if(adminScheduleNumber === 0) return alert('삭제할 수 없습니다!');
    const table = document.querySelector(`.admin_kindergarden_schedule_month`);
    const thead = document.querySelector(`.education_schedule_title_month${adminScheduleNumber}`);
    const tbody = document.querySelector(`.education_schedule_month_tbody${adminScheduleNumber--}`);
    table.removeChild(thead);
    table.removeChild(tbody);
};

let i = 1;

function addSchedule(event) {
    event.preventDefault();
    // 아작스 처리
    const xhr = new XMLHttpRequest();

    xhr.onload = function() {
        if (xhr.status === 200) {
            if(0 !== adminNumber) {
                const tbody = `.education_schedule_month_tbody${adminScheduleNumber}`;
                const monday_am = document.querySelector(`${tbody} tr:nth-child(2) td input:nth-child(1)`).value;
                const tuesday_am = document.querySelector(`${tbody} tr:nth-child(2) td input:nth-child(2)`).value;
                const wednesday_am = document.querySelector(`${tbody} tr:nth-child(2) td input:nth-child(3)`).value;
                const thursday_am = document.querySelector(`${tbody} tr:nth-child(2) td input:nth-child(4)`).value;
                const friday_am = document.querySelector(`${tbody} tr:nth-child(2) td input:nth-child(5)`).value;

                const monday_pm = document.querySelector(`${tbody} tr:nth-child(3) td input:nth-child(1)`).value;
                const tuesday_pm = document.querySelector(`${tbody} tr:nth-child(3) td input:nth-child(2)`).value;
                const wednesday_pm = document.querySelector(`${tbody} tr:nth-child(3) td input:nth-child(3)`).value;
                const thursday_pm = document.querySelector(`${tbody} tr:nth-child(3) td input:nth-child(4)`).value;
                const friday_pm = document.querySelector(`${tbody} tr:nth-child(3) td input:nth-child(5)`).value;

                const data = {
                    mondayAM: monday_am,
                    tuesdayAM: tuesday_am,
                    wednesdayAM:  wednesday_am,
                    thursdayAM:  thursday_am,
                    fridayAM:  friday_am,
                    mondayPM: monday_pm,
                    tuesdayPM: tuesday_pm,
                    wednesdayPM:  wednesday_pm,
                    thursdayPM:  thursday_pm,
                    fridayPM:  friday_pm
                };
                addScheduleRow(data);
            }
        }
    }

    xhr.open('POST', 'addScheduleMonth.mdo',true);
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
                alert('유치원 달력 등록이 정상적으로 처리되었습니다!');
            } else {
                const tbody = `.education_schedule_month_tbody${adminScheduleNumber}`;
                const monday_am = document.querySelector(`${tbody} tr:nth-child(2) td input:nth-child(1)`).value;
                const tuesday_am = document.querySelector(`${tbody} tr:nth-child(2) td input:nth-child(2)`).value;
                const wednesday_am = document.querySelector(`${tbody} tr:nth-child(2) td input:nth-child(3)`).value;
                const thursday_am = document.querySelector(`${tbody} tr:nth-child(2) td input:nth-child(4)`).value;
                const friday_am = document.querySelector(`${tbody} tr:nth-child(2) td input:nth-child(5)`).value;

                const monday_pm = document.querySelector(`${tbody} tr:nth-child(3) td input:nth-child(1)`).value;
                const tuesday_pm = document.querySelector(`${tbody} tr:nth-child(3) td input:nth-child(2)`).value;
                const wednesday_pm = document.querySelector(`${tbody} tr:nth-child(3) td input:nth-child(3)`).value;
                const thursday_pm = document.querySelector(`${tbody} tr:nth-child(3) td input:nth-child(4)`).value;
                const friday_pm = document.querySelector(`${tbody} tr:nth-child(3) td input:nth-child(5)`).value;

                const data = {
                    mondayAM: monday_am,
                    tuesdayAM: tuesday_am,
                    wednesdayAM:  wednesday_am,
                    thursdayAM:  thursday_am,
                    fridayAM:  friday_am,
                    mondayPM: monday_pm,
                    tuesdayPM: tuesday_pm,
                    wednesdayPM:  wednesday_pm,
                    thursdayPM:  thursday_pm,
                    fridayPM:  friday_pm
                };
                addScheduleRow(data);
            }
        }
    }
    xhr.open('POST', 'addScheduleRowMonth.mdo',true);
    xhr.setRequestHeader('Content-type', 'application/json');
    xhr.send(JSON.stringify(data));
}
