package com.omgm.user.faq.beans;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository("fAQDAO")
public class FAQDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public List<FAQVO> getAllFAQList(FAQVO vo) {
		return sqlSessionTemplate.selectList("FAQDAO.getAllFAQList", vo);
	}
	public List<FAQVO> getCategoryedFAQList(FAQVO vo) {
		return sqlSessionTemplate.selectList("FAQDAO.getCategoryedFAQList", vo);
	}
	
	public List<CategoryVO> getAllCategoryList(CategoryVO vo) {
		return sqlSessionTemplate.selectList("CategoryDAO.getAllCategoryList", vo);
	}
}
