package com.omgm.admin.faq.service;

import java.util.List;

import com.omgm.admin.faq.beans.FAQVO_M;
import com.omgm.user.review.beans.PageNavigator;

public interface FAQService_M {

	public void insertFAQ(List<FAQVO_M> volist);
	
	public void updateFAQ(FAQVO_M vo);
	
	public void deleteFAQ(List<FAQVO_M> volist);
	
	public int selectCountFAQ(FAQVO_M vo);
	
	public FAQVO_M selectFAQ(FAQVO_M vo);
	
	void updateManyFAQ(List<FAQVO_M> volist);
	
	public List<FAQVO_M> selectListAllFAQ(FAQVO_M vo, PageNavigator navi);


	
	
}
