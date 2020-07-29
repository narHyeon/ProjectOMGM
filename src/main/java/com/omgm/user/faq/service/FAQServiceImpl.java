package com.omgm.user.faq.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.omgm.user.faq.beans.CategoryVO;
import com.omgm.user.faq.beans.FAQDAO;
import com.omgm.user.faq.beans.FAQVO;

@Service("fAQServiceImpl")
public class FAQServiceImpl implements FAQService{

	@Autowired
	FAQDAO fAQDAO;
	
	@Override
	public List<FAQVO> getAllFAQList(FAQVO vo) {
		return fAQDAO.getAllFAQList(vo);
	}
	@Override
	public List<FAQVO> getCategoryedFAQList(FAQVO vo) {
		return fAQDAO.getCategoryedFAQList(vo);
	}

	@Override
	public List<CategoryVO> getAllCategoryList(CategoryVO vo) {
		return fAQDAO.getAllCategoryList(vo);
	}
	
}
