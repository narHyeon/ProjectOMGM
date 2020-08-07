package com.omgm.admin.kinderGarden.controller;

import com.omgm.admin.kinderGarden.beans.KinderGardenRowVO;
import com.omgm.admin.kinderGarden.beans.KinderGardenVO;
import com.omgm.admin.kinderGarden.service.KinderGardenService;
import com.omgm.admin.memberManagement.beans.ManagementVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.List;

@Controller
public class KinderGardenController {

    @Resource(name="kinderGardenService")
    private KinderGardenService kinderGardenService;

    // 관리자 유치원 시간표
    @RequestMapping("/kinderGardenSchedule.mdo")
    public ModelAndView kinderGardenSchedule(KinderGardenVO vo) {
        ModelAndView mav = new ModelAndView();
        vo = kinderGardenService.getSchedule(vo);
        List<KinderGardenRowVO> list = kinderGardenService.getScheduleRow(vo);
        mav.addObject("day",vo);
        mav.addObject("dayRow",list);
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

    // 관리자 유치원 시간표 등록
    @RequestMapping("/addSchedule.mdo")
    public ModelAndView addSchedule(KinderGardenVO vo, List<KinderGardenRowVO> rvoList) {
        ModelAndView mav = new ModelAndView();
        kinderGardenService.addSchedule(vo);
        for(KinderGardenRowVO rvo : rvoList) {
            kinderGardenService.addScheduleRow(rvo);
        }
        mav.setViewName("/kinderGarden/kinderGardenSchedule");
        return mav;
    }
}
