package com.omgm.user.roomreservation.beans;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.omgm.user.review.beans.PageNavigator;

@Repository("roomReservationDAO")
public class RoomReservationDAO {


	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<RoomReservationVO> getSelectedDateInfo(String selectedDate){
		
		return sqlSessionTemplate.selectList("RoomReservationDAO.selectListRoomReservation", selectedDate);
	}

	public void insertReservation(RoomReservationVO vo) {
		sqlSessionTemplate.insert("RoomReservationDAO.insertReservation",vo);
	}

	public RoomReservationVO selectRoomReservation(RoomReservationVO vo) {
		return sqlSessionTemplate.selectOne("RoomReservationDAO.selectRoomReservation",vo);
	}

	public int selectCountReservation(RoomReservationVO vo) {
		return sqlSessionTemplate.selectOne("RoomReservationDAO.selectCountReservation", vo);
	}

	public List<RoomReservationVO> selectListRoomReservation(RoomReservationVO vo, PageNavigator navi) {
		RowBounds rb = new RowBounds(navi.getStartRecord(),navi.getCountPerPage());
		return sqlSessionTemplate.selectList("RoomReservationDAO.selectMyRoomReservationList", vo, rb);
	}
	
}
