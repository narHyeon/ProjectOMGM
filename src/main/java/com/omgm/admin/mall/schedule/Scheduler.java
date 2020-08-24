package com.omgm.admin.mall.schedule;

import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

@Service
public class Scheduler {

//    초 분 시 일 월 요일
    @Scheduled(fixedDelay = 1000)
    public void autoUpdate() {

    }

    public static void main(String[] args) {
        System.out.println("hello");

    }
}
