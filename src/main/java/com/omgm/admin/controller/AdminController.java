package com.omgm.admin.controller;

import com.omgm.user.board.BoardVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminController {

    // 관리자 메인 불러오기
    @RequestMapping("/adminMain.mdo")
    public ModelAndView main(BoardVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/main");
        return mav;
    }

    // 관리자 유치원 시간표
    @RequestMapping("/kinderGardenSchedule.mdo")
    public ModelAndView kinderGardenSchedule(BoardVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/kinderGarden/kinderGardenSchedule");
        return mav;
    }

    // 관리자 유치원 달력
    @RequestMapping("/kinderGardenScheduleMonth.mdo")
    public ModelAndView kinderGardenScheduleMonth(BoardVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/kinderGarden/kinderGardenScheduleMonth");
        return mav;
    }

    // 관리자 배송 현왕 페이지
    @RequestMapping("/deliveryStatus.mdo")
    public ModelAndView deliveryStatus(BoardVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/delivery/deliveryStatus");
        return mav;
    }
}
