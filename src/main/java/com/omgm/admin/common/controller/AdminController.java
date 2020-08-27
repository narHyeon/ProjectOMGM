package com.omgm.admin.common.controller;

import com.omgm.admin.common.beans.AdminVO;
import com.omgm.admin.common.service.AdminService;
import com.omgm.user.review.beans.PageNavigator;
import com.omgm.user.review.beans.ReviewVO;
import net.minidev.json.JSONObject;
import net.nurigo.java_sdk.Coolsms;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;

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



    //호텔정산페이지 이동
    @RequestMapping("/hotelCalculate.mdo")
    public ModelAndView hotelCalculate(AdminVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/hotel/hotelCalculate");
        return mav;
    }

    //쇼핑몰 정산페이지 이동
    @RequestMapping("/mallCalculate.mdo")
    public ModelAndView mallCalculate(AdminVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/mall/mallCalculate");
        return mav;
    }

    //메시지 보내는 페이지 이동
    @RequestMapping("/message.mdo")
    public ModelAndView messgae(AdminVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/message/message");
        return mav;
    }



}
