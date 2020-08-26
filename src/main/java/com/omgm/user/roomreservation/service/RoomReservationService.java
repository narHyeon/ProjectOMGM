package com.omgm.user.roomreservation.service;

import java.util.List;

import com.omgm.user.room.beans.RoomVO;

public interface RoomReservationService {

	List<RoomVO> getSelectedDateInfo(String selectedDate);

}
