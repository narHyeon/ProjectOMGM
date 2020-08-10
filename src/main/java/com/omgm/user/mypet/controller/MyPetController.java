package com.omgm.user.mypet.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
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
	@RequestMapping(value="/myPetPage.do", method = RequestMethod.POST)
	public ModelAndView insertMyPet(MyPetVO vo) throws IOException {
		ModelAndView mav = new ModelAndView();
		vo.setPET_OWNER(3);
		myPetService.insertMyPet(vo);
		mav.setViewName("redirect:/myPetPage.do");
		return mav;
	}
	@RequestMapping(value = "/myPetUpdate.do", method = RequestMethod.GET)
	public ModelAndView getMyPet(MyPetVO vo, ModelAndView mav) {
		myPetService.updateMyPet(vo);
		mav.setViewName("/myInfo/myPetUpdate");
		return mav;
	}
	
}
