package com.omgm.admin.faq.service;

import java.util.List;

import com.omgm.admin.faq.beans.FAQVO_M;
import com.omgm.user.review.beans.PageNavigator;

public interface FAQService_M {

	public void insertFAQ(FAQVO_M vo);
	
	public void updateFAQ(FAQVO_M vo);
	
	public void deleteFAQ(FAQVO_M vo);
	
	public int selectCountFAQ();
	
	public FAQVO_M selectFAQ(FAQVO_M vo);
	
	public List<FAQVO_M> selectListAllFAQ(FAQVO_M vo, PageNavigator navi);
	
}
