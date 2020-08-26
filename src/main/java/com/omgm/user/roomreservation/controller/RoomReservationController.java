package com.omgm.user.roomreservation.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.omgm.user.room.beans.RoomVO;
import com.omgm.user.roomreservation.beans.RoomReservationVO;
import com.omgm.user.roomreservation.service.RoomReservationService;

@Controller("roomReservationController")
public class RoomReservationController {

	@Autowired
	RoomReservationService roomReservationService;
	
	
	@RequestMapping(value = "/ajaxinsertRoomReservation.do", method = RequestMethod.POST)
	@ResponseBody
	public List<RoomVO>  getAllFAQList(RoomReservationVO vo, Model model,
			@RequestParam(value = "year", defaultValue = "9999") String year,
			@RequestParam(value = "month", defaultValue = "99") String month,
			@RequestParam(value = "day", defaultValue = "99") String day
			) {

		if (month.length()==1) {
			month = "0" + month;
		}
		if (day.length()==1) {
			day = "0" + day;
		}
		
		String selectedDate = year+month+day;	
		List<RoomVO> roomList = roomReservationService.getSelectedDateInfo(selectedDate);
		
		return roomList;
	}
	@RequestMapping(value = "/insertRoomReservation.do", method = RequestMethod.GET)
	public ModelAndView gqtqd(ModelAndView mav) {
		mav.setViewName("/roomReservation/insertRoomReservation");
		return mav;
	}
	
	
}
