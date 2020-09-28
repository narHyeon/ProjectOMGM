package com.omgm.user.catcarelog.beans;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.omgm.user.roomreservation.beans.RoomReservationVO;

@Repository("catCareLogDAO")
public class CatCareLogDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public CatCareLogVO getCatCareLog(CatCareLogVO vo) {
		return sqlSessionTemplate.selectOne("CatCareLogDAO.getCatCareLog",vo);
	}

	public List<CatCareLogVO> getCatCareLogListByReserNo(List<RoomReservationVO> reservationList) {
		return sqlSessionTemplate.selectList("CatCareLogDAO.getCatCareLogListByReserNo",reservationList);
	}
	

}
