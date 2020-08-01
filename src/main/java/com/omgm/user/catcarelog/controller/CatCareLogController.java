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
	
	@RequestMapping(value = "/writeCatCareLog.do", method = RequestMethod.POST)
	public ModelAndView qwefrwr(CatCareLogVO vo,ModelAndView mav) {

		
		mav.setViewName("/myInfo/boardtest");
		return mav;
	}
	
	@RequestMapping(value = "/writeCatCareLog.do", method = RequestMethod.GET)
	public ModelAndView qwefwrwr(CatCareLogVO vo,ModelAndView mav) {


		mav.setViewName("/myInfo/writeReView");
		return mav;
		
	}
	
}
