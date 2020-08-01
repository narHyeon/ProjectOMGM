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
		
	};
	
	
}
