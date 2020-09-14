package com.omgm.admin.roomreservation.service;

import java.util.List;

import com.omgm.admin.roomreservation.beans.RoomReservationVO_M;
import com.omgm.user.review.beans.PageNavigator;

public interface RoomReservationService_M {

	int countRoomReservation(RoomReservationVO_M vo);

	List<RoomReservationVO_M> roomReservationList(RoomReservationVO_M vo, PageNavigator navi);

	RoomReservationVO_M getRoomReservation(RoomReservationVO_M vo);

	List<RoomReservationVO_M> roomReservationListAndCatCareLog(RoomReservationVO_M vo, PageNavigator navi);

}
