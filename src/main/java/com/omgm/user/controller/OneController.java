package com.omgm.user.controller;

import com.omgm.user.board.BoardService;
import com.omgm.user.board.BoardVO;
import com.omgm.user.review.bean.ReviewVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class OneController {
    @Autowired
    private BoardService boardService;

    // 메인화면
    @RequestMapping(value="/main.do")
    public ModelAndView put(BoardVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/main");
        return mav;
    }

    // 약관
    @RequestMapping(value="/term.do")
    public ModelAndView term(BoardVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/term/siteHelp");
        mav.addObject("termTitle",vo);
        return mav;
    }

    // 유치원 소개 페이지 이동
    @RequestMapping(value="/kinderGarden.do")
    public ModelAndView kinderGarden(BoardVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("kinderGardenSchedule");
        return mav;
    }





    // 픽업서비스 소개 페이지 이동
    @RequestMapping(value="/pickupService_info.do")
    public ModelAndView pickupService_info(BoardVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/pickupService_info/pickupService_info");
        return mav;
    }

    // 로그인 페이지 이동
    @RequestMapping(value="/login.do")
    public ModelAndView login(BoardVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/login");
        return mav;
    }

    // 회원가입 페이지 이동
    @RequestMapping(value="/signUp.do")
    public ModelAndView signUp(BoardVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/signUp");
        return mav;
    }

    // 문자서비스 페이지 이동
    @RequestMapping(value="/messageService.do")
    public ModelAndView messageService(BoardVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/messageService");
        return mav;
    }

    // 예약 페이지 이동
    @RequestMapping(value = "/reservation.do")
    public ModelAndView reservation(ReviewVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/reservation");
        return mav;
    }

}
