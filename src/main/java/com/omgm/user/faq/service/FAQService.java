package com.omgm.user.faq.service;


import java.util.List;

import com.omgm.user.faq.beans.CategoryVO;
import com.omgm.user.faq.beans.FAQVO;


public interface FAQService {

	public List<FAQVO> getAllFAQList(FAQVO vo);
	public List<FAQVO> getCategoryedFAQList(FAQVO vo);
	public List<CategoryVO> getAllCategoryList(CategoryVO vo);

	

}
