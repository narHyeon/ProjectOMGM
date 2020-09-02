package com.omgm.user.roomreservation.controller;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.omgm.member.beans.MemberVO;
import com.omgm.user.room.beans.RoomVO;
import com.omgm.user.roomreservation.beans.RoomReservationVO;
import com.omgm.user.roomreservation.service.RoomReservationService;

@Controller("roomReservationController")
public class RoomReservationController {

	@Autowired
	RoomReservationService roomReservationService;
	

	
	
	//날자 클릭시 db서 예약 현황 ajax로 받아오는 컨트롤러
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
	public ModelAndView goRoomReservation(ModelAndView mav , HttpSession session) {
		mav.setViewName("/roomReservation/insertRoomReservation");
	//	MemberVO memvo = new MemberVO();
	//	memvo = (MemberVO) session.getAttribute("member");
	//	System.out.println(memvo.toString());
		return mav;
	}
	
	@RequestMapping(value = "/insertPayRoomReservation.do", method = RequestMethod.GET)
	public ModelAndView goPayRoomReservation(RoomReservationVO vo,  ModelAndView mav, HttpSession session) throws ParseException {
		
		String strdate = vo.getROOMRESERVATION_STRSTAYDAY();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		Date date = sdf.parse(strdate);
		vo.setROOMRESERVATION_STAYDAY(date);
		//System.out.println(vo.toString());
		MemberVO memvo = new MemberVO();
		memvo = (MemberVO) session.getAttribute("member");
		System.out.println(memvo.toString());
		mav.addObject("reservationInfo",vo);
		mav.addObject("userInfo",memvo);
		
		mav.setViewName("/roomReservation/insertPayRoomReservation");
		return mav;
	}
	@RequestMapping(value = "/insertPayRoomReservation.do", method = RequestMethod.POST)
	public ModelAndView afterPayRoomReservation(RoomReservationVO vo,  ModelAndView mav){
		
		System.out.println(vo.toString2());
		mav.setViewName("redirect:/insertRoomReservation.do");
		return mav;
	}
}
