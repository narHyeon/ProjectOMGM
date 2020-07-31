package com.omgm.user.controller;

import com.omgm.user.board.BoardService;
import com.omgm.user.board.BoardVO;
import com.omgm.user.review.beans.ReviewVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.io.File;
import java.io.IOException;

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
        mav.setViewName("/kinderGarden");
        return mav;
    }

    // 유치원 예약 페이지 이동
    @RequestMapping(value="/kinderGardenReservation.do")
    public ModelAndView kinderGardenReservation(BoardVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/kinderGardenReservation");
        return mav;
    }

    // 픽업서비스 소개 페이지 이동
    @RequestMapping(value="/pickupService_info.do")
    public ModelAndView pickupService_info(BoardVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/pickupServiceInfo/pickupServiceInfo");
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

    //오시는길 이용안내 페이지 이동
    @RequestMapping(value="/introductionPage.do")
    public ModelAndView introductionPage(ReviewVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/introductionPage/introductionPage");
        return mav;
    }

    //상품 판매 페이지 이동
    @RequestMapping(value="/toySales.do")
    public ModelAndView toySales(ReviewVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/sales/toySales");
        return mav;
    }

    //룸 소개 페이지 이동
    @RequestMapping(value="/roomIntroduction.do")
    public ModelAndView roomIntroduction(ReviewVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/roomIntroduction/roomIntroduction");
        return mav;
    }

    @RequestMapping("/upload.do")
    public void upload(BoardVO vo) throws IOException {
        System.out.println("파일 업로드 테스트");
        MultipartFile uploadFile = vo.getUploadFile();
        if(!uploadFile.isEmpty()) {
            String fileName = uploadFile.getOriginalFilename();
            System.out.println(fileName);
            uploadFile.transferTo(new File("D:/" + fileName));
        }
    }



}
