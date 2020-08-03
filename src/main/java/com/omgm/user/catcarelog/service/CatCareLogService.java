package com.omgm.user.catcarelog.service;

import com.omgm.user.catcarelog.beans.CatCareLogVO;

public interface CatCareLogService {

	void insertCatCareLog(CatCareLogVO vo);

	CatCareLogVO getCatCareLog(CatCareLogVO vo);

	void updateCatCareLog(CatCareLogVO vo);

}
