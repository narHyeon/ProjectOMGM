package com.omgm.user.room.service;

import java.util.List;

import com.omgm.user.review.beans.PageNavigator;
import com.omgm.user.room.beans.RoomVO;

public interface RoomService {

	List<RoomVO> getListRoom(RoomVO vo, PageNavigator navi);

	int selectCountRoom(RoomVO vo);

	RoomVO roomRead(RoomVO vo);

	List<RoomVO> getRoomListInfoAfterLoadReserve();
}
