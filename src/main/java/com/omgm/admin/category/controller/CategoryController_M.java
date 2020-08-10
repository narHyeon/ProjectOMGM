package com.omgm.admin.category.controller;

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

@Controller("categoryController_M")
public class CategoryController_M {

	@Autowired
	CategoryService_M categoryService_M;
	
	@RequestMapping(value = "/insertCategory.mdo", method = RequestMethod.GET)
	public ModelAndView insertCategory(CategoryVO_M vo, ModelAndView mav) {
		
		return mav;
	}
	
	@RequestMapping(value = "/updateCategory.mdo", method = RequestMethod.POST)
	@ResponseBody
	public void updateCategory(CategoryVO_M vo) {
		categoryService_M.updateCategory(vo);
	}
	
	@RequestMapping(value = "/updateManyCategory.mdo", method = RequestMethod.POST)
	@ResponseBody
	public void updateManyCategory(
			@RequestParam("checkList[]") List<String> checkList,
			@RequestParam("useList[]") List<String> useList
			) {
		List<CategoryVO_M> volist = new ArrayList<CategoryVO_M>();
		for (int i = 0; i < checkList.size(); i++) {
			CategoryVO_M vo = new CategoryVO_M();
			vo.setCATEGORY_NO(Integer.parseInt(checkList.get(i)));
			vo.setCATEGORY_USE(Integer.parseInt(useList.get(i)));
			volist.add(vo);
		}
		
		categoryService_M.updateManyCategory(volist);
	}
	
	@RequestMapping(value = "/deleteCategory.mdo", method = RequestMethod.POST)
	@ResponseBody
	public void deleteCategory(
			@RequestParam("checkList[]") List<String> checkList
			) {
		List<CategoryVO_M> volist = new ArrayList<CategoryVO_M>();
		for (int i = 0; i < checkList.size(); i++) {
			CategoryVO_M vo = new CategoryVO_M();
			vo.setCATEGORY_NO(Integer.parseInt(checkList.get(i)));
			volist.add(vo);
		}
		categoryService_M.deleteCategory(volist);		
		
	}
	@RequestMapping(value = "/selectCategory.mdo", method = RequestMethod.GET)
	public ModelAndView selectCategory(CategoryVO_M vo, ModelAndView mav) {
		
		return mav;
	}
	@RequestMapping(value = "/categoryList.mdo", method = RequestMethod.GET)
	public ModelAndView selectListAllCategory(CategoryVO_M vo, ModelAndView mav) {
		
		List<CategoryVO_M> list = categoryService_M.selectListAllCategory(vo);
		
		mav.addObject("categoryList", list);
		mav.setViewName("/category/categoryList");
		return mav;
	}
	
}
