package com.omgm.admin.faq.beans;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("fAQDAO_M")
public class FAQDAO_M {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public void insertFAQ(FAQVO_M vo) {
		sqlSessionTemplate.insert("FAQDAO_M.insertFAQ",vo);
	}

	public void updateFAQ(FAQVO_M vo) {
		sqlSessionTemplate.update("FAQDAO_M.updateFAQ",vo);
	}

	public void deleteFAQ(FAQVO_M vo) {
		sqlSessionTemplate.delete("FAQDAO_M.deleteFAQ",vo);
	}
	public FAQVO_M selectFAQ(FAQVO_M vo) {
		return sqlSessionTemplate.selectOne("FAQDAO_M.selectFAQ",vo);
	}
	public List<FAQVO_M> selectListAllFAQ(FAQVO_M vo){
		return sqlSessionTemplate.selectList("FAQDAO_M.selectListAllFAQ", vo);
	}
	
	public List<FAQVO_M> selectListCategoryedFAQ(FAQVO_M vo){
		return sqlSessionTemplate.selectList("FAQDAO_M.selectListCategoryedFAQ", vo);
	}
	
}
