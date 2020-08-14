package com.omgm.admin.room.beans;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.omgm.user.review.beans.PageNavigator;

@Repository("roomDAO_M")
public class RoomDAO_M {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public List<RoomVO_M> getListRoom(RoomVO_M vo, PageNavigator navi) {
		RowBounds rb = new RowBounds(navi.getStartRecord(),navi.getCountPerPage());
		return sqlSessionTemplate.selectList("RoomDAO_M.selectListROOM", vo, rb);
	}

	public int selectCountRoom(RoomVO_M vo) {
		return sqlSessionTemplate.selectOne("RoomDAO_M.selectCountRoom",vo);
	}

	public void roomInsert(RoomVO_M vo) {
		sqlSessionTemplate.insert("RoomDAO_M.roomInsert",vo);
	}

	public RoomVO_M roomRead(RoomVO_M vo) {
		return sqlSessionTemplate.selectOne("RoomDAO_M.roomRead",vo);
	}

	public void roomDelete(RoomVO_M vo) {
		sqlSessionTemplate.delete("RoomDAO_M.roomDelete",vo);
	}

	public void roomUpdate(RoomVO_M vo) {
		sqlSessionTemplate.update("RoomDAO_M.roomUpdate",vo);
	}

	
	
}
