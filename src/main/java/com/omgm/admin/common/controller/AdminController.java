package com.omgm.admin.common.controller;

import com.omgm.admin.common.beans.AdminVO;
import com.omgm.admin.common.service.AdminService;
import com.omgm.user.review.beans.PageNavigator;
import com.omgm.user.review.beans.ReviewVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;

@Controller
public class AdminController {

    @Resource(name="adminService")
    private AdminService adminService;



    // 관리자 배송 현황 페이지
    @RequestMapping("/deliveryStatus.mdo")
    public ModelAndView deliveryStatus(AdminVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/delivery/deliveryStatus");
        return mav;
    }

    // 관리자 배송 현황 페이지
//    @RequestMapping("/productInquiry.mdo")
//    public ModelAndView productInquiry(AdminVO vo) {
//        ModelAndView mav = new ModelAndView();
//        mav.setViewName("/productRegister/productInquiry");
//        return mav;
//    }
    // 상품등록 페이지
    @RequestMapping("/productRegister.mdo")
    public ModelAndView productRegister(AdminVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/mall/productRegister");
        return mav;
    }

    //픽업서비스 관리 페이지
    @RequestMapping("/pickupServiceManagement.mdo")
    public ModelAndView pickupServiceManagement(AdminVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/manageMent/pickupServiceManagement");
        return mav;
    }

    //주문조회 페이지 이동
    @RequestMapping("/orderInquiry.mdo")
    public ModelAndView orderInquiry(AdminVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/orderInquiry/orderInquiry");
        return mav;
    }

    //포인트 지급내역 페이지 이동
    @RequestMapping("/point.mdo")
    public ModelAndView point(AdminVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/mall/point");
        return mav;
    }

    //객실관리 페이지 이동
    @RequestMapping("/Room.mdo")
    public ModelAndView Room(AdminVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/hotel/room");
        return mav;
    }

    //객실등록 페이지 이동
    @RequestMapping("/hotelRegister.mdo")
    public ModelAndView hotelRegister(AdminVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/hotel/hotelRegister");
        return mav;
    }

    //정산페이지 이동
    @RequestMapping("/calculateTest.mdo")
    public ModelAndView calculateTest(AdminVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/calculate/calculateTest");
        return mav;
    }

    //이용후기 관리 페이지
    @RequestMapping("/adminReview.mdo")
    public ModelAndView adminReview(ReviewVO vo,@RequestParam(value="page", defaultValue = "1") int page ) {
        ModelAndView mav = new ModelAndView();

        int COUNTPERPAGE = 9; // 페이지당 2개의 글
        int PAGEPERGROUP = 5; // 페이지 그룹당 3개의 페이지

        PageNavigator navi = new PageNavigator(COUNTPERPAGE, PAGEPERGROUP, page, adminService.selectCount());
        mav.addObject("reviewList", adminService.getReviewList(vo, navi));
        mav.addObject("navi", navi);
        vo.setCnt(page);
        mav.addObject("page", vo);
        mav.setViewName("/adminReview");
        return mav;
    }
}
