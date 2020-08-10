package com.omgm.admin.faq.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
	
	
	
	@RequestMapping(value = "/selectListFAQ.mdo", method = RequestMethod.GET)
	public ModelAndView selectListAllFAQ(FAQVO_M vo, ModelAndView mav,
			@RequestParam(value="page", defaultValue = "1") int page 
			) {
		int COUNTPERPAGE = 10; // 페이지당 10개의 글
        int PAGEPERGROUP = 5; // 페이지 그룹당 5개의 페이지
		PageNavigator navi = new PageNavigator(COUNTPERPAGE,PAGEPERGROUP, page,fAQService_M.selectCountFAQ());
		
		List<FAQVO_M> list = fAQService_M.selectListAllFAQ(vo, navi);
		List<CategoryVO_M> list2 = categoryService_M.selectListAllCategory();		
		mav.addObject("faqList", list);
		mav.addObject("categoryList", list2);
		mav.addObject("navi",navi);
		mav.addObject("page", page);

		
		mav.setViewName("/faq/selectListFAQ");
		return mav;
	}
	
}
