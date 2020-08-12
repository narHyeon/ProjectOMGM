package com.omgm.admin.faq.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.omgm.admin.category.beans.CategoryVO_M;
import com.omgm.admin.category.service.CategoryService_M;
import com.omgm.admin.faq.beans.FAQVO_M;
import com.omgm.admin.faq.service.FAQService_M;
import com.omgm.user.review.beans.PageNavigator;

@Controller("fAQController_M")
public class FAQController_M {

	@Autowired
	FAQService_M fAQService_M;
	@Autowired
	CategoryService_M categoryService_M;

	
	@RequestMapping(value = "/insertFAQ.mdo", method = RequestMethod.POST)
	@ResponseBody
	public void insertCategory(
			@RequestParam("categoryList[]") List<String> categoryList,
			@RequestParam("useList[]") List<String> useList,
			@RequestParam("askList[]") List<String> askList,
			@RequestParam("answerList[]") List<String> answerList
			) {
		List<FAQVO_M> volist = new ArrayList<FAQVO_M>();
		for (int i = 0; i < categoryList.size(); i++) {
			FAQVO_M vo = new FAQVO_M();
			vo.setFAQ_CATEGORYNUM(Integer.parseInt(categoryList.get(i)));	
			vo.setFAQ_USE(Integer.parseInt(useList.get(i)));
			vo.setFAQ_ASK(askList.get(i));
			vo.setFAQ_ANSWER(answerList.get(i));
			
			volist.add(vo);
		}
		
		fAQService_M.insertFAQ(volist);
		
	}
	
	@RequestMapping(value = "/updateFAQ.mdo", method = RequestMethod.POST)
	@ResponseBody
	public void updateCategory(FAQVO_M vo) {
		fAQService_M.updateFAQ(vo);
	}
	
	@RequestMapping(value = "/updateManyFAQ.mdo", method = RequestMethod.POST)
	@ResponseBody
	public void updateManyCategory(
			@RequestParam("checkList[]") List<String> checkList,
			@RequestParam("useList[]") List<String> useList
			) {
		List<FAQVO_M> volist = new ArrayList<FAQVO_M>();
		for (int i = 0; i < checkList.size(); i++) {
			FAQVO_M vo = new FAQVO_M();
			vo.setFAQ_NO(Integer.parseInt(checkList.get(i)));
			vo.setFAQ_USE(Integer.parseInt(useList.get(i)));
			volist.add(vo);
		}
		
		fAQService_M.updateManyFAQ(volist);
	}
	
	@RequestMapping(value = "/deleteFAQ.mdo", method = RequestMethod.POST)
	@ResponseBody
	public void deleteCategory(
			@RequestParam("checkList[]") List<String> checkList
			) {
		List<FAQVO_M> volist = new ArrayList<FAQVO_M>();
		for (int i = 0; i < checkList.size(); i++) {
			FAQVO_M vo = new FAQVO_M();
			vo.setFAQ_NO(Integer.parseInt(checkList.get(i)));
			volist.add(vo);
		}
		fAQService_M.deleteFAQ(volist);		
		
	}
	
	
	@RequestMapping(value = "/selectListFAQ.mdo", method = RequestMethod.GET)
	public ModelAndView selectListAllFAQ(FAQVO_M vo, ModelAndView mav,
			@RequestParam(value="page", defaultValue = "1") int page 
			) {
		int COUNTPERPAGE = 10; // 페이지당 10개의 글
        int PAGEPERGROUP = 5; // 페이지 그룹당 5개의 페이지
        PageNavigator navi = new PageNavigator(COUNTPERPAGE,PAGEPERGROUP, page,fAQService_M.selectCountFAQ(vo));
		
		List<FAQVO_M> list = fAQService_M.selectListAllFAQ(vo, navi);
		List<CategoryVO_M> list2 = categoryService_M.selectListUseCategory();		
		mav.addObject("faqList", list);
		mav.addObject("categoryList", list2);
		mav.addObject("navi",navi);
		mav.addObject("page", page);
		
		mav.setViewName("/faq/selectListFAQ");
		return mav;
	}
	
}
