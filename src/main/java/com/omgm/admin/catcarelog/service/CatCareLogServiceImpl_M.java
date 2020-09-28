package com.omgm.admin.catcarelog.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.omgm.admin.catcarelog.beans.CatCareLogDAO_M;
import com.omgm.admin.catcarelog.beans.CatCareLogVO_M;

@Service("catCareLogServiceImpl_M")
public class CatCareLogServiceImpl_M implements CatCareLogService_M{

	@Autowired
	CatCareLogDAO_M catCareLogDAO_M;
	
	@Override
	public CatCareLogVO_M getCatCareLog(CatCareLogVO_M vo) {
		return catCareLogDAO_M.getCatCareLog(vo);
	}

	@Override
	public void insertCatCareLog(CatCareLogVO_M vo) {
		catCareLogDAO_M.insertCatCareLog(vo);
	}

	@Override
	public void updateCatCareLog(CatCareLogVO_M vo) {
		catCareLogDAO_M.updateCatCareLog(vo);
	}

	@Override
	public void deleteCatCareLog(CatCareLogVO_M vo) {
		catCareLogDAO_M.deleteCatCareLog(vo);
	}

}
