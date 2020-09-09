package com.omgm.admin.roomreservation.beans;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.omgm.user.review.beans.PageNavigator;

@Repository("RoomReservationDAO_M")
public class RoomReservationDAO_M {
    
	@Autowired
    private SqlSessionTemplate sqlSessionTemplate;
	
	public int countRoomReservation(RoomReservationVO_M vo) {
		return sqlSessionTemplate.selectOne("RoomReservationDAO_M.countRoomReservation",vo);
	}

	public List<RoomReservationVO_M> roomReservationList(RoomReservationVO_M vo, PageNavigator navi) {
		RowBounds rb = new RowBounds(navi.getStartRecord(),navi.getCountPerPage());
		return sqlSessionTemplate.selectList("RoomReservationDAO_M.roomReservationList",vo,rb) ;
	}

	public RoomReservationVO_M getRoomReservation(RoomReservationVO_M vo) {
		return sqlSessionTemplate.selectOne("RoomReservationDAO_M.getRoomReservation",vo);
	}

}
