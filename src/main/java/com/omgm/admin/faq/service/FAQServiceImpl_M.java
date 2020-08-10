package com.omgm.admin.faq.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.omgm.admin.faq.beans.FAQDAO_M;
import com.omgm.admin.faq.beans.FAQVO_M;
import com.omgm.user.review.beans.PageNavigator;

@Service("fAQServiceImpl_M")
public class FAQServiceImpl_M implements FAQService_M {

	@Autowired
	FAQDAO_M fAQDAO_M;

	@Override
	public void insertFAQ(FAQVO_M vo) {
		
	}
	@Override
	public void updateFAQ(FAQVO_M vo) {

	}
	@Override
	public void deleteFAQ(FAQVO_M vo) {
		
	}
	@Override
	public int selectCountFAQ() {
		return fAQDAO_M.selectCount();
	} 
	
	@Override
	public FAQVO_M selectFAQ(FAQVO_M vo) {
		return null;
	}
	@Override
	public List<FAQVO_M> selectListAllFAQ(FAQVO_M vo, PageNavigator navi) {
		return fAQDAO_M.selectListAllFAQ(vo, navi);
	}
	
}
