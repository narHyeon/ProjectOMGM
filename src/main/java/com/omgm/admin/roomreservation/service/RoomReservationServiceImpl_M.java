package com.omgm.admin.roomreservation.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.omgm.admin.catcarelog.beans.CatCareLogDAO_M;
import com.omgm.admin.catcarelog.beans.CatCareLogVO_M;
import com.omgm.admin.roomreservation.beans.RoomReservationDAO_M;
import com.omgm.admin.roomreservation.beans.RoomReservationVO_M;
import com.omgm.user.review.beans.PageNavigator;

@Service("roomReservationServiceImpl_M")
public class RoomReservationServiceImpl_M implements RoomReservationService_M{

	@Autowired
	RoomReservationDAO_M roomReservationDAO_M;
	@Autowired
	CatCareLogDAO_M catCareLogDAO_M; 
	
	@Override
	public int countRoomReservation(RoomReservationVO_M vo) {
		return roomReservationDAO_M.countRoomReservation(vo);
	}

	@Override
	public RoomReservationVO_M getRoomReservation(RoomReservationVO_M vo) {
		return roomReservationDAO_M.getRoomReservation(vo);
	}
	
	@Override
	public List<RoomReservationVO_M> roomReservationList(RoomReservationVO_M vo, PageNavigator navi) {
		return roomReservationDAO_M.roomReservationList(vo,navi);
	}

	@Override
	public List<RoomReservationVO_M> roomReservationListAndCatCareLog(RoomReservationVO_M vo, PageNavigator navi) {

		List<RoomReservationVO_M> reservationList = roomReservationDAO_M.roomReservationList(vo,navi); 
		
		//뽑아온 예약번호를 이용하여 해당 예약번호들에해당하는 모든 냥박일지를 얻어오는 메소드
		List<CatCareLogVO_M> catCareLogList =  catCareLogDAO_M.getCatCareLogListByReserNo(reservationList);
		
		//예약 번호에 해당하는 냥박일지를 넣어주는 로직
		for (int i = 0; i < reservationList.size(); i++) {
			List<CatCareLogVO_M> careList = new ArrayList<CatCareLogVO_M>();
			for (int j = 0; j < catCareLogList.size(); j++) {
				if (reservationList.get(i).getROOMRESERVATION_NO() == catCareLogList.get(j).getCATCARELOG_SERVICENUM()) {
					careList.add(catCareLogList.get(j));
				}
			}
			reservationList.get(i).setCatCareList(careList);
		}
		return reservationList;
	}

}
