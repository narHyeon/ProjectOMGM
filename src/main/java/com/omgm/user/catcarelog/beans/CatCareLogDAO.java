package com.omgm.user.catcarelog.beans;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("catCareLogDAO")
public class CatCareLogDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public void insertCatCareLog(CatCareLogVO vo) {
		sqlSessionTemplate.insert("CatCareLogDAO.insertCatCareLog", vo);
	}
	public void updateCatCareLog(CatCareLogVO vo) {
		sqlSessionTemplate.update("CatCareLogDAO.updateCatCareLog",vo);
	}
	public void deleteCatCareLog(CatCareLogVO vo) {
		sqlSessionTemplate.update("CatCareLogDAO.deleteCatCareLog",vo);
	}
	public CatCareLogVO getCatCareLog(CatCareLogVO vo) {
		return sqlSessionTemplate.selectOne("CatCareLogDAO.getCatCareLog",vo);
	}
	

}
