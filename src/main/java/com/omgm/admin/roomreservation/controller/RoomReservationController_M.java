package com.omgm.admin.roomreservation.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.omgm.admin.roomreservation.beans.RoomReservationVO_M;
import com.omgm.admin.roomreservation.service.RoomReservationService_M;
import com.omgm.user.review.beans.PageNavigator;

@Controller("roomReservationController_M")
public class RoomReservationController_M {

	@Autowired
	RoomReservationService_M roomReservationService_M;
	
	@RequestMapping(value = "/roomReservationList.mdo", method = RequestMethod.GET)
	public ModelAndView roomReservationList(RoomReservationVO_M vo, ModelAndView mav,
			@RequestParam(value="page", defaultValue = "1") int page) {

		int COUNTPERPAGE = 5; // 페이지당 10개의 글
        int PAGEPERGROUP = 5; // 페이지 그룹당 5개의 페이지
        int count = roomReservationService_M.countRoomReservation(vo);
        System.out.println(count);
        PageNavigator navi = new PageNavigator(COUNTPERPAGE,PAGEPERGROUP, page,count);
		List<RoomReservationVO_M> list = roomReservationService_M.roomReservationList(vo, navi);
		System.out.println(list.size());
        mav.addObject("navi",navi);
		mav.addObject("page", page);
		mav.addObject("roomReservationList", list);
		mav.setViewName("roomReservation/roomReservationList");
		return mav;
	}
	
	@RequestMapping(value = "/getRoomReservation.mdo", method = RequestMethod.GET)
	public ModelAndView getRoomReservation(RoomReservationVO_M vo, ModelAndView mav) {
		
		RoomReservationVO_M getvo = new RoomReservationVO_M();
		getvo = roomReservationService_M.getRoomReservation(vo);
		
		mav.addObject("reservationInfo",getvo);
		mav.setViewName("roomReservation/getRoomReservation");
		return mav;
	}
}
