package com.omgm.admin.room.service;

import java.util.List;

import com.omgm.admin.room.beans.RoomVO_M;
import com.omgm.user.review.beans.PageNavigator;

public interface RoomService_M {

	List<RoomVO_M> getListRoom(RoomVO_M vo, PageNavigator navi); //jury

	int selectCountRoom(RoomVO_M vo);

	void roomInsert(RoomVO_M vo);

	RoomVO_M roomRead(RoomVO_M vo);

	void roomDelete(RoomVO_M vo);

	void roomUpdate(RoomVO_M vo);

}
