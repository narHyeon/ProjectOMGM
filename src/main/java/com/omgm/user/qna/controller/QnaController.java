package com.omgm.user.qna.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.omgm.admin.eventmanagement.beans.EventVO_M;
import com.omgm.user.qna.beans.QnaVO;
import com.omgm.user.qna.service.QnaService;

@Controller
public class QnaController {

	@Autowired
	QnaService qnaService;
	
	@RequestMapping(value="/qnaList.do", method = RequestMethod.GET)
	public ModelAndView getAllQnaList(QnaVO vo, ModelAndView mav) {
		List<QnaVO> qnalist = qnaService.getAllQnaList(vo);
		mav.addObject("QnaList", qnalist);
		mav.setViewName("/qna/qnaList");
		return mav;
	}
	
	@RequestMapping(value="/getQna.do", method = RequestMethod.GET)
	public ModelAndView getQna(QnaVO vo, ModelAndView mav){
	QnaVO getVO = new QnaVO();
	mav.addObject("qnaInfo", getVO);
	mav.setViewName("/qna/getQna");	
	return mav;	
	
	}
	
	@RequestMapping(value="updateQna.do", method = RequestMethod.GET)
	public ModelAndView goupdateQna(QnaVO vo, ModelAndView mav) {
		QnaVO getVO = new QnaVO();
		mav.addObject("qnaInfo", getVO);
		mav.setViewName("qna/updateQna");
		return mav;	
	}
	
	@RequestMapping(value="updateQna.do", method = RequestMethod.POST)
	public String afterupdateQna(QnaVO vo, RedirectAttributes rttr) {
		qnaService.updateQna(vo);
		QnaVO getVO = new QnaVO();
		getVO = qnaService.getQna(vo);
		rttr.addFlashAttribute("qnaInfo", getVO);
		return "";	
	}
	
	@RequestMapping(value="/qnaList.do", method = RequestMethod.POST)
	public ModelAndView insertQna(QnaVO vo) throws IOException{
		ModelAndView mav = new ModelAndView();
		qnaService.insertQna(vo);
		mav.addObject("qnaInfo", vo);
		mav.setViewName("redirect:/qnaList.do");
		return mav;
	}
	
}
