package com.omgm.user.roomreservation.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
		List<RoomReservationVO>	seletedDateReservedRoomList =
				roomReservationDAO.getSelectedDateInfo(selectedDate); // 그날 예약된 예약 정보 리스트
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
		}
		
		if (seletedDateReservedRoomList.size()==0) {
			for (int i = 0; i < roomList.size(); i++) {
				roomList.get(i).setROOM_RESERVATIONYN("Y");
				
			}
		}else {
			int j = 0;
		      for (int i = 0; i < roomList.size(); i++) {
		            if (roomList.get(i).getROOM_NO() == seletedDateReservedRoomList.get(j).getROOMRESERVATION_ROOMNO()) {
		                  roomList.get(i).setROOM_RESERVATIONYN("Y");
		                  j++; // 이거 추가된부분
		            }
		      }
		}
		
		return roomList;
	}
}
