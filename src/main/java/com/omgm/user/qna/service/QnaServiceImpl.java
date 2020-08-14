package com.omgm.user.qna.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.omgm.user.qna.beans.QnaDAO;
import com.omgm.user.qna.beans.QnaVO;

@Service("qnaServiceImpl")	
public class QnaServiceImpl implements QnaService {

	@Autowired
	QnaDAO qnaDAO;

	@Override
	public void insertQna(QnaVO vo) {
		qnaDAO.insertQna(vo);
	}

	@Override
	public void updateQna(QnaVO vo) {
		qnaDAO.updateQna(vo);
	}

	@Override
	public List<QnaVO> getAllQnaList(QnaVO vo) {
		return qnaDAO.getAllQnaList(vo);
	}

	@Override
	public QnaVO getQna(QnaVO vo) {
		return qnaDAO.getQna(vo);
	}
	
	


	
}
