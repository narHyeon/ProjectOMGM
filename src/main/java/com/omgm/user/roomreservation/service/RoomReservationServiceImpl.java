package com.omgm.user.roomreservation.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.omgm.user.review.beans.PageNavigator;
import com.omgm.user.room.beans.RoomDAO;
import com.omgm.user.room.beans.RoomVO;
import com.omgm.user.roomreservation.beans.RoomReservationDAO;
import com.omgm.user.roomreservation.beans.RoomReservationVO;

@Service("roomReservationServiceImpl")
public class RoomReservationServiceImpl implements RoomReservationService{

	@Autowired
	RoomReservationDAO roomReservationDAO;
	@Autowired
	RoomDAO roomdao;
	
	@Override
	public List<RoomVO> getSelectedDateInfo(String selectedDate){

		List<RoomVO> roomList =	roomdao.getListRoomAll(); //모든 방의 종류
		List<RoomReservationVO>	seletedDateReservedRoomList = roomReservationDAO.getSelectedDateInfo(selectedDate); // 그날 예약된 예약 정보 리스트
		for (int j = 0; j < roomList.size(); j++) {
			RoomVO room = roomList.get(j);
			String content = room.getROOM_CONTENT();
			String[] tags = content.split("<|>");
			ArrayList<String> list = new ArrayList<String>();
			ArrayList<String> list2 = new ArrayList<String>();
			for(String tag : tags) {
				if (tag.contains("img src=")) {
					list.add(tag);
				}
			}
			for (int i = 0; i < list.size(); i++) {
				String [] tags2 = list.get(i).split("\""); 
				for(String tag : tags2) {
					if (tag.contains("data:image")) {
						list2.add(tag);
					}	
				}
			}
			room.setROOM_IMG(list2.get(0));
		}// end 썸네일 이미지 만들기

		if (seletedDateReservedRoomList.size() != 0) {
			for (int i = 0; i < roomList.size(); i++) {
				for (int j = 0; j < seletedDateReservedRoomList.size(); j++) {
					if (roomList.get(i).getROOM_NO() == seletedDateReservedRoomList.get(j)
							.getROOMRESERVATION_ROOMNO()) {
						roomList.get(i).setROOM_RESERVATIONYN("N");
					}//end if
				}//end for seletedDateReservedRoomList
			}//end for roomlist
		}
//			int j = 0;
//		      for (int i = 0; i < roomList.size(); i++) {
//		            if (roomList.get(i).getROOM_NO() == seletedDateReservedRoomList.get(j).getROOMRESERVATION_ROOMNO()) {
//		                  roomList.get(i).setROOM_RESERVATIONYN("Y");
//		                  j++; // 이거 추가된부분
//		            }
		
		return roomList;
	}//end getSelectedDateInfo(String selectedDate)

	@Override
	public void insertReservation(RoomReservationVO vo) {
		roomReservationDAO.insertReservation(vo);
	}

	@Override
	public RoomReservationVO selectRoomReservation(RoomReservationVO vo) {
		
		return roomReservationDAO.selectRoomReservation(vo);
	}

	@Override
	public int selectCountReservation(RoomReservationVO vo) {
		return roomReservationDAO.selectCountReservation(vo);
	}

	@Override
	public List<RoomReservationVO> selectListRoomReservation(RoomReservationVO vo, PageNavigator navi) {
		return roomReservationDAO.selectListRoomReservation(vo,navi);
	}
}
