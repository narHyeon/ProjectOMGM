package com.omgm.admin.faq.beans;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.omgm.user.review.beans.PageNavigator;

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
    public int selectCount(){
        return sqlSessionTemplate.selectOne("FAQDAO_M.selectCount");
    }
	public FAQVO_M selectFAQ(FAQVO_M vo) {
		return sqlSessionTemplate.selectOne("FAQDAO_M.selectFAQ",vo);
	}
	public List<FAQVO_M> selectListAllFAQ(FAQVO_M vo, PageNavigator navi){
		RowBounds rb = new RowBounds(navi.getStartRecord(),navi.getCountPerPage());
		return sqlSessionTemplate.selectList("FAQDAO_M.selectListAllFAQ", vo, rb);
	}
	
	
}
