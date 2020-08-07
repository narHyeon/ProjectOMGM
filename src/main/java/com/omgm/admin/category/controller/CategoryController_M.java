package com.omgm.admin.category.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.omgm.admin.category.beans.CategoryVO_M;
import com.omgm.admin.category.service.CategoryService_M;

@Controller("categoryController_M")
public class CategoryController_M {

	@Autowired
	CategoryService_M categoryService_M;
	
	@RequestMapping(value = "/insertCategory.do", method = RequestMethod.GET)
	public ModelAndView insertCategory(CategoryVO_M vo, ModelAndView mav) {
		
		return mav;
	}
	@RequestMapping(value = "/updateCategory.do", method = RequestMethod.GET)
	public ModelAndView updateCategory(CategoryVO_M vo, ModelAndView mav) {
		
		return mav;
	}
	@RequestMapping(value = "/deleteCategory.do", method = RequestMethod.GET)
	public ModelAndView deleteCategory(CategoryVO_M vo, ModelAndView mav) {
		
		return mav;
	}
	@RequestMapping(value = "/insertCategory.do", method = RequestMethod.GET)
	public ModelAndView selectCategory(CategoryVO_M vo, ModelAndView mav) {
		
		return mav;
	}
	@RequestMapping(value = "/insertCategory.do", method = RequestMethod.GET)
	public ModelAndView selectListAllCategory(CategoryVO_M vo, ModelAndView mav) {
		
		return mav;
	}
	
	
	
	
	
	
	
	
}
