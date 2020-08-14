package com.omgm.user.qna.beans;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository("qnaDAO")
public class QnaDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<QnaVO> getAllQnaList(QnaVO vo) {
		System.out.println("----> MyBatis로 getAllQnaList() 기능 처리");
		return sqlSessionTemplate.selectList("QnaDAO.getAllQnaList", vo);
	}

	public void updateQna(QnaVO vo) {
		System.out.println("----> MyBatis로 getAllQnaList() 기능 처리");		
		sqlSessionTemplate.update("QnaDAO.updateQna", vo);
	}

	public void insertQna(QnaVO vo) {
		System.out.println("----> MyBatis로 getAllQnaList() 기능 처리");
		sqlSessionTemplate.insert("QnaDAO.insertQna", vo);
	}

	public QnaVO getQna(QnaVO vo) {
		System.out.println("----> MyBatis로 getAllQnaList() 기능 처리");
		return sqlSessionTemplate.selectOne("QnaDAO.getQna", vo);
	}

}
