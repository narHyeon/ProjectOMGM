package com.omgm.user.faq.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.omgm.user.faq.beans.CategoryVO;
import com.omgm.user.faq.beans.FAQVO;
import com.omgm.user.faq.service.FAQService;


@Controller
public class FAQController {

	@Autowired
	FAQService fAQService;
	
	@RequestMapping(value = "/fAQList.do", method = RequestMethod.GET)
	public ModelAndView getAllFAQList(FAQVO vo, ModelAndView mav) {
		List<FAQVO> faqlist = fAQService.getAllFAQList(vo);
		CategoryVO categoryvo = new CategoryVO();
		List<CategoryVO> categorylist = fAQService.getAllCategoryList(categoryvo);
		mav.addObject("fAQList",faqlist);
		mav.addObject("categoryList",categorylist);
		mav.setViewName("/faq/fAQList");
		return mav;
	}
	
	@RequestMapping(value = "/fAQList.do", method = RequestMethod.POST)
	public ModelAndView getFAQCAtegoryList(FAQVO vo, ModelAndView mav) {
		List<FAQVO> faqlist = fAQService.getCategoryedFAQList(vo);
		CategoryVO categoryvo = new CategoryVO();
		List<CategoryVO> categorylist = fAQService.getAllCategoryList(categoryvo);
		mav.addObject("fAQList",faqlist);
		mav.addObject("categoryList",categorylist);
		mav.setViewName("/faq/fAQList");
		return mav;
	}
	
	
	/// 잡동사니 페이지용 컨트롤러
	@RequestMapping(value = "/info.do", method = RequestMethod.GET)
	public ModelAndView abcd(FAQVO vo,ModelAndView mav) {
		List<FAQVO> list = fAQService.getAllFAQList(vo);
		mav.addObject("fAQList",list);
		mav.setViewName("/omgmInfo/info");
		return mav;
	}
	@RequestMapping(value = "/myServiceList.do", method = RequestMethod.GET)
	public ModelAndView abcde(FAQVO vo,ModelAndView mav) {
		List<FAQVO> list = fAQService.getAllFAQList(vo);
		mav.addObject("fAQList",list);
		mav.setViewName("/myInfo/myServiceList");
		return mav;
	}
	@RequestMapping(value = "/myCatCareLog.do", method = RequestMethod.GET)
	public ModelAndView ab(FAQVO vo,ModelAndView mav) {
		List<FAQVO> list = fAQService.getAllFAQList(vo);
		mav.addObject("fAQList",list);
		mav.setViewName("/myInfo/myCatCareLog");
		return mav;
	}
	@RequestMapping(value = "/myPage.do", method = RequestMethod.GET)
	public ModelAndView abc(FAQVO vo,ModelAndView mav) {
		List<FAQVO> list = fAQService.getAllFAQList(vo);
		mav.addObject("fAQList",list);
		mav.setViewName("/myInfo/myPage");
		return mav;
	}
	@RequestMapping(value = "/myPageUpdate.do", method = RequestMethod.POST)
	public ModelAndView abcdf(FAQVO vo,ModelAndView mav) {
		List<FAQVO> list = fAQService.getAllFAQList(vo);
		mav.addObject("fAQList",list);
		mav.setViewName("/myInfo/myPage");
		return mav;
	}
	@RequestMapping(value = "/myPageUpdate.do", method = RequestMethod.GET)
	public ModelAndView abcdfb(FAQVO vo,ModelAndView mav) {
		List<FAQVO> list = fAQService.getAllFAQList(vo);
		mav.addObject("fAQList",list);
		mav.setViewName("/myInfo/myPageUpdate");
		return mav;
	}
	@RequestMapping(value = "/myBuyListLog.do", method = RequestMethod.GET)
	public ModelAndView qwe(FAQVO vo,ModelAndView mav) {
		List<FAQVO> list = fAQService.getAllFAQList(vo);
		mav.addObject("fAQList",list);
		mav.setViewName("/myInfo/myBuyListLog");
		return mav;
	}
	@RequestMapping(value = "/getMyService.do", method = RequestMethod.GET)
	public ModelAndView wqwe(FAQVO vo,ModelAndView mav) {
		List<FAQVO> list = fAQService.getAllFAQList(vo);
		mav.addObject("fAQList",list);
		mav.setViewName("/myInfo/getMyService");
		return mav;
	}
	
	
}
