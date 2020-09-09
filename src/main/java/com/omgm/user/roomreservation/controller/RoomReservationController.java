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
import com.omgm.user.review.beans.PageNavigator;
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
	public ModelAndView goRoomReservation(ModelAndView mav) {
		mav.setViewName("/roomReservation/insertRoomReservation");
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
		mav.addObject("reservationInfo",vo);
		mav.addObject("userInfo",memvo);
		
		mav.setViewName("/roomReservation/insertPayRoomReservation");
		return mav;
	}
	@RequestMapping(value = "/insertPayRoomReservation.do", method = RequestMethod.POST)
	public ModelAndView afterPayRoomReservation(RoomReservationVO vo, ModelAndView mav){
		
		mav.setViewName("redirect:/insertRoomReservation.do");
		return mav;
	}
	
	@RequestMapping(value = "/ajaxinsertPayRoomReservation.do", method = RequestMethod.POST)
	@ResponseBody
	public void  insertPayReservation(RoomReservationVO vo) {
		roomReservationService.insertReservation(vo);
		
	}
	
	@RequestMapping(value = "/myRoomReservationList.do", method = RequestMethod.GET)
	public ModelAndView selectListRoomReservation(RoomReservationVO vo, ModelAndView mav, HttpSession session,
			@RequestParam(value="page", defaultValue = "1") int page){
		
		
		//MemberVO memvo = (MemberVO) session.getAttribute("member");
		//vo.setROOMRESERVATION_MEMBERNO(memvo.getSeq());
		vo.setROOMRESERVATION_MEMBERNO(23);
		int COUNTPERPAGE = 5; // 페이지당 10개의 글
        int PAGEPERGROUP = 5; // 페이지 그룹당 5개의 페이지
        int count = roomReservationService.selectCountReservation(vo);
        PageNavigator navi = new PageNavigator(COUNTPERPAGE,PAGEPERGROUP, page,count);
		List<RoomReservationVO> list = roomReservationService.selectListRoomReservation(vo, navi);
		mav.addObject("reservationList",list);
		mav.addObject("navi",navi);
		mav.addObject("page", page);
		//mav.addObject("userInfo", memvo);
		mav.setViewName("myInfo/myRoomReservationList");
		return mav;
	}
	
	@RequestMapping(value = "/getMyRoomReservation.do", method = RequestMethod.GET)
	public ModelAndView selectRoomReservation(RoomReservationVO vo,  ModelAndView mav){
		RoomReservationVO reservo = roomReservationService.selectRoomReservation(vo);
		mav.addObject("reservationInfo", reservo);
		mav.setViewName("myInfo/getMyRoomReservation");
		return mav;
	}
	
}
