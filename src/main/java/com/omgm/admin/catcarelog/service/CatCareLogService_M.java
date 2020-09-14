package com.omgm.admin.catcarelog.service;

import com.omgm.admin.catcarelog.beans.CatCareLogVO_M;

public interface CatCareLogService_M {

	
	CatCareLogVO_M getCatCareLog(CatCareLogVO_M vo);

	void insertCatCareLog(CatCareLogVO_M vo);

	void updateCatCareLog(CatCareLogVO_M vo);

	void deleteCatCareLog(CatCareLogVO_M vo);
}
