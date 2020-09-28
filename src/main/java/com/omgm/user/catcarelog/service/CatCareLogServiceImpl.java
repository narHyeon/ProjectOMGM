package com.omgm.user.catcarelog.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.omgm.user.catcarelog.beans.CatCareLogDAO;
import com.omgm.user.catcarelog.beans.CatCareLogVO;

@Service("catCareLogServiceImpl")
public class CatCareLogServiceImpl implements CatCareLogService {

	@Autowired
	CatCareLogDAO catCareLogDAO;
	
	@Override
	public CatCareLogVO getCatCareLog(CatCareLogVO vo) {
		return catCareLogDAO.getCatCareLog(vo);
	}


	
	
}
