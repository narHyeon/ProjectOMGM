package com.omgm.admin.kinderGarden.controller;

import com.omgm.admin.kinderGarden.beans.KinderGardenVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class KinderGardenController {

    // 관리자 유치원 시간표
    @RequestMapping("/kinderGardenSchedule.mdo")
    public ModelAndView kinderGardenSchedule(KinderGardenVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/kinderGarden/kinderGardenSchedule");
        return mav;
    }

    // 관리자 유치원 달력
    @RequestMapping("/kinderGardenScheduleMonth.mdo")
    public ModelAndView kinderGardenScheduleMonth(KinderGardenVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/kinderGarden/kinderGardenScheduleMonth");
        return mav;
    }

    // 관리자 유치원 예약 현황
    @RequestMapping("/kinderGardenReservation.mdo")
    public ModelAndView kinderGardenReservation(KinderGardenVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/kinderGarden/kinderGardenReservation");
        return mav;
    }

}
