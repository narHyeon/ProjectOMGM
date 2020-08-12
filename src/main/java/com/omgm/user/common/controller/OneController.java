package com.omgm.user.common.controller;

import com.omgm.admin.kinderGarden.beans.KinderGardenRowMonthVO;
import com.omgm.user.common.beans.CommonVO;
import com.omgm.user.common.beans.KinderGardenInfoRowVO;
import com.omgm.user.common.beans.KinderGardenInfoVO;
import com.omgm.user.common.beans.KinderGardenReservationVO;
import com.omgm.user.common.service.CommonService;
import com.omgm.user.review.beans.ReviewVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

@Controller
public class OneController {

    @Resource(name="commonService")
    private CommonService commonService;

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
    public ModelAndView kinderGarden(KinderGardenInfoVO vo) {
        ModelAndView mav = new ModelAndView();
        vo = commonService.getSchedule();
        List<KinderGardenInfoRowVO> list = commonService.getScheduleRow(vo);
        mav.addObject("dayRow",list);
        // 달력 불러오기
        KinderGardenInfoVO mvo = new KinderGardenInfoVO();
        mvo = commonService.getScheduleMonth(mvo);
        List<KinderGardenRowMonthVO> monthList = commonService.getScheduleRowMonth(mvo);
        mav.addObject("monthRow",monthList);
        mav.setViewName("/omgmInfo/kinderGarden");
        return mav;
    }

    // 유치원 예약 페이지 이동
    @RequestMapping(value="/kinderGardenReservation.do")
    public ModelAndView kinderGardenReservation(KinderGardenInfoVO vo) {
        ModelAndView mav = new ModelAndView();
        vo = commonService.getSchedule();
        List<KinderGardenInfoRowVO> list = commonService.getScheduleRow(vo);
        mav.addObject("dayRow",list);

        // 데이트 계산
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date());
        DateFormat dateFormat = new SimpleDateFormat("MM월 dd일");
        List<KinderGardenInfoVO> cList = new ArrayList<KinderGardenInfoVO>();
        int dow = calendar.get(Calendar.DAY_OF_WEEK);
        calendar.add(Calendar.DAY_OF_WEEK,-(dow-2));
        for(int i=1;i<=10;i++) {
            KinderGardenInfoVO cvo = new KinderGardenInfoVO();
            calendar.add(Calendar.DAY_OF_WEEK,7);
            cvo.setFormatDate(dateFormat.format(calendar.getTime()));
            cList.add(cvo);
        }
        mav.addObject("day",cList);

        // 달력 불러오기
        KinderGardenInfoVO mvo = new KinderGardenInfoVO();
        mvo = commonService.getScheduleMonth(mvo);
        List<KinderGardenRowMonthVO> monthList = commonService.getScheduleRowMonth(mvo);
        mav.addObject("monthRow",monthList);
        mav.setViewName("/kinderGardenReservation");
        return mav;
    }

    // 픽업서비스 소개 페이지 이동
    @RequestMapping(value="/pickupService_info.do")
    public ModelAndView pickupService_info() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/omgmInfo/pickupServiceInfo");
        return mav;
    }

    // 문자서비스 페이지 이동
    @RequestMapping(value="/messageService.do")
    public ModelAndView messageService() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/omgmInfo/messageService");
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
        mav.setViewName("/omgmInfo/introductionPage");
        return mav;
    }

    //상품 판매 페이지 이동
//    @RequestMapping(value="/toySales.do")
//    public ModelAndView toySales(ReviewVO vo) {
//        ModelAndView mav = new ModelAndView();
//        mav.setViewName("/sales/toySales");
//        return mav;
//    }

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
        mav.setViewName("/omgmInfo/roomIntroduction");
        return mav;
    }

    //장바구니 페이지 이동
    @RequestMapping(value="/cart.do")
    public ModelAndView cart(ReviewVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/sales/cart");
        return mav;
    }

    // 유치원 예약 페이지
    @ResponseBody
    @RequestMapping(value="/kinderGardenPay.do")
    public void kinderGardenReservation(@RequestBody KinderGardenReservationVO vo) {
        commonService.addKinderGardenReservation(vo);
        System.out.println(vo);
    }
}
