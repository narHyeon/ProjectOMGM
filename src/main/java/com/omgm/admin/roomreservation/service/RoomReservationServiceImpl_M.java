package com.omgm.admin.roomreservation.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.omgm.admin.roomreservation.beans.RoomReservationDAO_M;
import com.omgm.admin.roomreservation.beans.RoomReservationVO_M;
import com.omgm.user.review.beans.PageNavigator;

@Service("roomReservationServiceImpl_M")
public class RoomReservationServiceImpl_M implements RoomReservationService_M{

	@Autowired
	RoomReservationDAO_M roomReservationDAO_M;
	
	@Override
	public int countRoomReservation(RoomReservationVO_M vo) {
		return roomReservationDAO_M.countRoomReservation(vo);
	}

	@Override
	public List<RoomReservationVO_M> roomReservationList(RoomReservationVO_M vo, PageNavigator navi) {
		return roomReservationDAO_M.roomReservationList(vo,navi);
	}

	@Override
	public RoomReservationVO_M getRoomReservation(RoomReservationVO_M vo) {
		return roomReservationDAO_M.getRoomReservation(vo);
	}

}
