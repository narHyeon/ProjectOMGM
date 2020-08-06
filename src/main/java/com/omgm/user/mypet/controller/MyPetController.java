package com.omgm.user.mypet.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.omgm.user.mypet.beans.MyPetVO;
import com.omgm.user.mypet.service.MyPetService;

@Controller
public class MyPetController {

	@Autowired
	MyPetService myPetService;
	
	@RequestMapping(value = "/myPetPage.do", method = RequestMethod.GET)
	public ModelAndView getAllMyPetList(MyPetVO vo, ModelAndView mav) {
		List<MyPetVO> petlist = myPetService.getAllMyPetList(vo);
		mav.addObject("MyPetPageList", petlist);
		mav.setViewName("/myInfo/myPetPage");
		return mav;
	}
}
