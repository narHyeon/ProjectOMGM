package com.omgm.admin.mall.schedule;

import com.omgm.admin.mall.beans.MallFeedVO;
import com.omgm.admin.mall.service.MallService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;

@Service

public class Scheduler {
    @Autowired
    MallService mallService;
//    초 분 시 일 월 요일
    @Scheduled(cron = "0 15 14 * * *")
    public void autoUpdate() throws Exception {
        MallFeedVO vo = new MallFeedVO();
        mallService.expirationFeed(vo);
        
        System.out.println("처리완료");
    }

}
