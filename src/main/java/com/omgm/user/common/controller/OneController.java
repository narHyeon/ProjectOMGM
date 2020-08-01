package com.omgm.user.common.controller;

import com.omgm.user.common.beans.CommonVO;
import com.omgm.user.review.beans.ReviewVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class OneController {

    // 메인화면
    @RequestMapping(value="/main.do")
    public ModelAndView put() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/main");
        return mav;
    }

    // 약관
    @RequestMapping(value="/term.do")
    public ModelAndView term(CommonVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("except/term/siteHelp");
        mav.addObject("termTitle",vo);
        return mav;
    }

    // 유치원 소개 페이지 이동
    @RequestMapping(value="/kinderGarden.do")
    public ModelAndView kinderGarden() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/kinderGarden");
        return mav;
    }

    // 유치원 예약 페이지 이동
    @RequestMapping(value="/kinderGardenReservation.do")
    public ModelAndView kinderGardenReservation() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/kinderGardenReservation");
        return mav;
    }

    // 픽업서비스 소개 페이지 이동
    @RequestMapping(value="/pickupService_info.do")
    public ModelAndView pickupService_info() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/pickupServiceInfo/pickupServiceInfo");
        return mav;
    }

    // 문자서비스 페이지 이동
    @RequestMapping(value="/messageService.do")
    public ModelAndView messageService() {
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

    //상품리스트 페이지 이동
    @RequestMapping(value="/productList.do")
    public ModelAndView productList(ReviewVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/sales/productList");
        return mav;
    }

    //룸 소개 페이지 이동
    @RequestMapping(value="/roomIntroduction.do")
    public ModelAndView roomIntroduction(ReviewVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/roomIntroduction/roomIntroduction");
        return mav;
    }



    @RequestMapping("/jusoPopup.do")
    public ModelAndView jusoPopup(CommonVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/jusoPopup");
        return mav;
    }

//    @RequestMapping("/upload.do")
//    public void upload(BoardVO vo) throws IOException {
//        System.out.println("파일 업로드 테스트");
//        MultipartFile uploadFile = vo.getUploadFile();
//        if(!uploadFile.isEmpty()) {
//            String fileName = uploadFile.getOriginalFilename();
//            System.out.println(fileName);
//            uploadFile.transferTo(new File("D:/" + fileName));
//        }
//    }
}
