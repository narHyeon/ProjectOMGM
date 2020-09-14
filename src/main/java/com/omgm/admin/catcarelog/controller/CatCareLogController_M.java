package com.omgm.admin.catcarelog.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.omgm.admin.catcarelog.beans.CatCareLogVO_M;
import com.omgm.admin.catcarelog.service.CatCareLogService_M;
import com.omgm.admin.roomreservation.beans.RoomReservationVO_M;
import com.omgm.admin.roomreservation.service.RoomReservationService_M;
import com.omgm.member.beans.MemberVO;
import com.omgm.user.review.beans.PageNavigator;

@Controller("catCareLogController_M")
public class CatCareLogController_M {

	@Autowired
	CatCareLogService_M catCareLogService_M;
	@Autowired
	RoomReservationService_M roomReservationService_M;

	@RequestMapping(value = "/catCareLogList.mdo", method = RequestMethod.GET)
	public ModelAndView roomReservationList(RoomReservationVO_M vo, ModelAndView mav,
			@RequestParam(value = "page", defaultValue = "1") int page) {
		int COUNTPERPAGE = 5; // 페이지당 10개의 글
		int PAGEPERGROUP = 5; // 페이지 그룹당 5개의 페이지
		int count = roomReservationService_M.countRoomReservation(vo);
		PageNavigator navi = new PageNavigator(COUNTPERPAGE, PAGEPERGROUP, page, count);
		List<RoomReservationVO_M> list = roomReservationService_M.roomReservationListAndCatCareLog(vo, navi);
		mav.addObject("navi", navi);
		mav.addObject("page", page);
		mav.addObject("roomReservationList", list);
		mav.setViewName("catcarelog/catCareLogList");
		return mav;
	}

	// 냥박일지 리스트에서 냥박일지 클릭시 냥박일지 상세보기 페이지로 가는 컨트롤러
	@RequestMapping(value = "/getCatCareLog.mdo", method = RequestMethod.GET)
	public ModelAndView selectListRoomReservation(CatCareLogVO_M vo, ModelAndView mav) {
		CatCareLogVO_M getvo = new CatCareLogVO_M();
		getvo = catCareLogService_M.getCatCareLog(vo);
		mav.addObject("catcarelogInfo", getvo);
		mav.setViewName("catcarelog/getCatCareLog");
		return mav;
	}

	// 냥박일지 작성 페이지로 이동
	@RequestMapping(value = "/writeCatCareLog.mdo", method = RequestMethod.GET)
	public ModelAndView goInsertCatCareLog(CatCareLogVO_M vo, ModelAndView mav) {
		mav.addObject("catcarelogInfo", vo);
		mav.setViewName("catcarelog/writeCatCareLog");
		return mav;
	}

	// 냥박일지 작성후 작성 로직 처리
	@RequestMapping(value = "/writeCatCareLog.mdo", method = RequestMethod.POST)
	public ModelAndView afterInsertCatCareLog(CatCareLogVO_M vo, ModelAndView mav, HttpSession session) {
		MemberVO memvo = new MemberVO();
		memvo = (MemberVO) session.getAttribute("member");
		vo.setCATCARELOG_WRITER(memvo.getSeq());
		catCareLogService_M.insertCatCareLog(vo);
		mav.setViewName("redirect:/catCareLogList.mdo");
		return mav;
	}

	// 냥박일지 수정 페이지로 이동
	@RequestMapping(value = "/updateCatCareLog.mdo", method = RequestMethod.GET)
	public ModelAndView goUpdateCatCareLog(CatCareLogVO_M vo, ModelAndView mav) {
		CatCareLogVO_M getvo = new CatCareLogVO_M();
		getvo = catCareLogService_M.getCatCareLog(vo);
		mav.addObject("catcarelogInfo", getvo);
		mav.setViewName("catcarelog/updateCatCareLog");
		return mav;
	}
	
	// 냥박일지 수정 로직 처리
	@RequestMapping(value = "/updateCatCareLog.mdo", method = RequestMethod.POST)
	public ModelAndView afterUpdateCatCareLog(CatCareLogVO_M vo, ModelAndView mav) {
		catCareLogService_M.updateCatCareLog(vo);
		mav.setViewName("redirect:/getCatCareLog.mdo?CATCARELOG_NO=" + vo.getCATCARELOG_NO());
		return mav;
	}

	// 냥박일지 삭제 로직 처리
	@RequestMapping(value = "/deleteCatCareLog.mdo", method = RequestMethod.GET)
	public ModelAndView deleteCatCareLog(CatCareLogVO_M vo, ModelAndView mav) {
		catCareLogService_M.deleteCatCareLog(vo);
		mav.setViewName("redirect:/catCareLogList.mdo");
		return mav;
	}

}
