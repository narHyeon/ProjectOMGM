package com.omgm.admin.hotel.controller;

import com.omgm.admin.hotel.beans.HotelVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HotelController {

    // 호텔 예약현황 페이지 이동
    @RequestMapping(value="/hotelReservation.mdo")
    public ModelAndView kinderGarden(HotelVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/hotel/hotelReservation");
        return mav;
    }
}
