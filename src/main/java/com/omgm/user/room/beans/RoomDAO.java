package com.omgm.user.room.beans;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.omgm.user.review.beans.PageNavigator;

@Repository("roomDAO")
public class RoomDAO {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public List<RoomVO> getListRoom(RoomVO vo, PageNavigator navi) {
		RowBounds rb = new RowBounds(navi.getStartRecord(),navi.getCountPerPage());
		return sqlSessionTemplate.selectList("RoomDAO.selectListROOM", vo, rb);
	}

	public int selectCountRoom(RoomVO vo) {
		return sqlSessionTemplate.selectOne("RoomDAO.selectCountRoom",vo);
	}

	public RoomVO roomRead(RoomVO vo) {
		return sqlSessionTemplate.selectOne("RoomDAO.roomRead",vo);
	}

	public List<RoomVO> getListRoomAll() {
		return sqlSessionTemplate.selectList("RoomDAO.selectListRoomAll");
	}
	
}
