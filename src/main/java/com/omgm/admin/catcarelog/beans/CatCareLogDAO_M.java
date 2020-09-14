package com.omgm.admin.catcarelog.beans;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.omgm.admin.roomreservation.beans.RoomReservationVO_M;

@Repository("catCareLogDAO_M")
public class CatCareLogDAO_M {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public CatCareLogVO_M getCatCareLog(CatCareLogVO_M vo) {
		return sqlSessionTemplate.selectOne("CatCareLogDAO_M.getCatCareLog",vo);
	}

	public List<CatCareLogVO_M> getCatCareLogListByReserNo(List<RoomReservationVO_M> reservationList) {
		return sqlSessionTemplate.selectList("CatCareLogDAO_M.getCatCareLogListByReserNo",reservationList);
	}

	public void insertCatCareLog(CatCareLogVO_M vo) {
		sqlSessionTemplate.insert("CatCareLogDAO_M.insertCatCareLog",vo);
	}

	public void updateCatCareLog(CatCareLogVO_M vo) {
		sqlSessionTemplate.update("CatCareLogDAO_M.updateCatCareLog", vo);
	}

	public void deleteCatCareLog(CatCareLogVO_M vo) {
		sqlSessionTemplate.delete("CatCareLogDAO_M.deleteCatCareLog", vo);
	}
	
}
