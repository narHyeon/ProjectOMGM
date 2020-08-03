package com.omgm.user.catcarelog.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.omgm.user.catcarelog.beans.CatCareLogVO;
import com.omgm.user.catcarelog.service.CatCareLogService;

@Controller("catCareLogController")
public class CatCareLogController {

	@Autowired
	CatCareLogService catCareLogService;
	
	@RequestMapping(value = "/writeCatCareLog.do", method = RequestMethod.GET)
	public ModelAndView goWriteCatCareLog(CatCareLogVO vo,ModelAndView mav) {
		vo.setCATCARELOG_WRITER(1); //세션에서 계정 id 받아서 처리할부분
		vo.setCATCARELOG_USERNUM(1);      //서비스 리스트에서 클릭할때 파라미터로 받을부분 
		vo.setCATCARELOG_SERVICENUM(1);   //서비스 리스트에서 클릭할때 파라미터로 받을부분
		
		mav.addObject("careInfo", vo);
		mav.setViewName("/myInfo/writeCatCareLog");
		return mav;
	}
	@RequestMapping(value = "/writeCatCareLog.do", method = RequestMethod.POST)
	public ModelAndView afterWriteCatCareLog(CatCareLogVO vo,ModelAndView mav) {
		catCareLogService.insertCatCareLog(vo);
		mav.setViewName("/myInfo/myCatCareLog");
		return mav;
	}
	@RequestMapping(value = "/getCatCareLog.do", method = RequestMethod.GET)
	public ModelAndView goGetCatCareLog(CatCareLogVO vo,ModelAndView mav) {
		vo.setCATCARELOG_NO(1);			//냥박 리스트에서 클릭할때 파라미터로 받을 부분
		CatCareLogVO getVO = new CatCareLogVO();
		getVO =  catCareLogService.getCatCareLog(vo);
		mav.addObject("careInfo",getVO);
		mav.setViewName("/myInfo/getCatCareLog");
		return mav;
	}
	@RequestMapping(value = "/updateCatCareLog.do", method = RequestMethod.GET)
	public ModelAndView goUpdateCatCareLog(CatCareLogVO vo,ModelAndView mav) {
		CatCareLogVO getVO = new CatCareLogVO();
		getVO =  catCareLogService.getCatCareLog(vo);
		mav.addObject("careInfo",getVO);
		mav.setViewName("/myInfo/updateCatCareLog");
		return mav;
	}
	@RequestMapping(value = "/updateCatCareLog.do", method = RequestMethod.POST)
	public ModelAndView afterUpdateCatCareLog(CatCareLogVO vo,ModelAndView mav) {
		vo.setCATCARELOG_LASTUPDATER(1); //세션에서 계정 id 받아서 처리할부분
		catCareLogService.updateCatCareLog(vo);
		CatCareLogVO getVO = new CatCareLogVO();
		getVO =  catCareLogService.getCatCareLog(vo);
		mav.addObject("careInfo",getVO);
		mav.setViewName("/myInfo/getCatCareLog");
		return mav;
	}
	@RequestMapping(value = "/deleteCatCareLog.do", method = RequestMethod.POST)
	public ModelAndView afterDeleteCatCareLog(CatCareLogVO vo,ModelAndView mav) {
		vo.setCATCARELOG_LASTUPDATER(1); //세션에서 계정 id 받아서 처리할부분
		catCareLogService.updateCatCareLog(vo);
		mav.setViewName("/myInfo/myCatCareLog");
		return mav;
	}
}
