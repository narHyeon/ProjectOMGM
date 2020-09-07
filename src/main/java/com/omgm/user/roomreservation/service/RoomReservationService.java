package com.omgm.user.roomreservation.service;

import java.util.List;

import com.omgm.user.review.beans.PageNavigator;
import com.omgm.user.room.beans.RoomVO;
import com.omgm.user.roomreservation.beans.RoomReservationVO;

public interface RoomReservationService {

	List<RoomVO> getSelectedDateInfo(String selectedDate);

	void insertReservation(RoomReservationVO vo);

	RoomReservationVO selectRoomReservation(RoomReservationVO vo);

	int selectCountReservation(RoomReservationVO vo);

	List<RoomReservationVO> selectListRoomReservation(RoomReservationVO vo, PageNavigator navi);
	

}
