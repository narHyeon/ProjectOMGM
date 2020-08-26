package com.omgm.user.roomreservation.beans;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("roomReservationDAO")
public class RoomReservationDAO {


	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<RoomReservationVO> getSelectedDateInfo(String selectedDate){
		
		return sqlSessionTemplate.selectList("RoomReservationDAO.selectListRoomReservation", selectedDate);
	}
	
}
