package com.omgm.user.catcarelog.service;

import com.omgm.user.catcarelog.beans.CatCareLogVO;

public interface CatCareLogService {

	void insertCatCareLog(CatCareLogVO vo);

	void deleteCatCareLog(CatCareLogVO vo);
	
	void updateCatCareLog(CatCareLogVO vo);
	
	CatCareLogVO getCatCareLog(CatCareLogVO vo);

	

	

}
