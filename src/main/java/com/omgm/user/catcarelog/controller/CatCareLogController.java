package com.omgm.user.catcarelog.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.omgm.user.catcarelog.beans.CatCareLogVO;
import com.omgm.user.catcarelog.service.CatCareLogService;
import com.omgm.user.review.beans.PageNavigator;
import com.omgm.user.roomreservation.beans.RoomReservationVO;
import com.omgm.user.roomreservation.service.RoomReservationService;

@Controller("catCareLogController")
public class CatCareLogController {

	@Autowired
	CatCareLogService catCareLogService;
	@Autowired
	RoomReservationService roomReservationService;
	
	//냥박일지 리스트 페이지 갈때 예약 리스트 와 냥박일지 물고가는 컨트롤러
	@RequestMapping(value = "/myCatCareLogList.do", method = RequestMethod.GET)
	public ModelAndView selectListRoomReservation(RoomReservationVO vo, ModelAndView mav, HttpSession session,
			@RequestParam(value="page", defaultValue = "1") int page){
		//MemberVO memvo = (MemberVO) session.getAttribute("member");
		//vo.setROOMRESERVATION_MEMBERNO(memvo.getSeq());
		vo.setROOMRESERVATION_MEMBERNO(23);
		int COUNTPERPAGE = 5; // 페이지당 10개의 글
        int PAGEPERGROUP = 5; // 페이지 그룹당 5개의 페이지
        int count = roomReservationService.selectCountReservation(vo);
        PageNavigator navi = new PageNavigator(COUNTPERPAGE,PAGEPERGROUP, page,count);
		List<RoomReservationVO> list = roomReservationService.selectListRoomReservationAndCatCareLog(vo, navi);
		mav.addObject("reservationList",list);
		mav.addObject("navi",navi);
		mav.addObject("page", page);
		//mav.addObject("userInfo", memvo);
		mav.setViewName("myInfo/myCatCareLogList");
		return mav;
	}
	//냥박일지 리스트에서 냥박일지 클릭시 냥박일지 상세보기 페이지로 가는 컨트롤러
	@RequestMapping(value = "/getMyCatCareLog.do", method = RequestMethod.GET)
	public ModelAndView selectListRoomReservation(CatCareLogVO vo, ModelAndView mav){
		
		CatCareLogVO getvo = new CatCareLogVO();
		getvo = catCareLogService.getCatCareLog(vo);
		mav.addObject("catcarelogInfo", getvo);
		mav.setViewName("myInfo/getMyCatCareLog");
		return mav;
	}

}
