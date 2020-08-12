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
	public void insertFAQ(List<FAQVO_M> volist) {
		fAQDAO_M.insertFAQ(volist);
		
	}
	@Override
	public void updateFAQ(FAQVO_M vo) {
		fAQDAO_M.updateFAQ(vo);
	}
	@Override
	public void deleteFAQ(List<FAQVO_M> volist) {
		fAQDAO_M.deleteFAQ(volist);
	}
	@Override
	public int selectCountFAQ(FAQVO_M vo) {
		return fAQDAO_M.selectCount(vo);
	} 
	
	@Override
	public FAQVO_M selectFAQ(FAQVO_M vo) {
		return null;
	}
	@Override
	public void updateManyFAQ(List<FAQVO_M> volist) {
		fAQDAO_M.updateManyFAQ(volist);
	}
	@Override
	public List<FAQVO_M> selectListAllFAQ(FAQVO_M vo, PageNavigator navi) {
		return fAQDAO_M.selectListAllFAQ(vo, navi);
	}

	
}
