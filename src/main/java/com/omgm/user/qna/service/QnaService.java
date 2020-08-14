package com.omgm.user.qna.service;


import java.util.List;

import com.omgm.user.qna.beans.QnaVO;

public interface QnaService {

	void insertQna(QnaVO vo);
	void updateQna(QnaVO vo);
	QnaVO getQna(QnaVO vo);
	List<QnaVO> getAllQnaList(QnaVO vo);
	
}
