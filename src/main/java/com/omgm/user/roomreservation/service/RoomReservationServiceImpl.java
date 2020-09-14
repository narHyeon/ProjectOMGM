package com.omgm.user.roomreservation.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.omgm.user.catcarelog.beans.CatCareLogDAO;
import com.omgm.user.catcarelog.beans.CatCareLogVO;
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
	@Autowired
	CatCareLogDAO catCareLogDAO; 
	
	@Override
	public List<RoomVO> getSelectedDateInfo(String selectedDate){
		List<RoomVO> roomList =	roomdao.getListRoomAll(); //모든 방의 종류
		List<RoomReservationVO>	seletedDateReservedRoomList = roomReservationDAO.getSelectedDateInfo(selectedDate); // 그날 예약된 예약 정보 리스트
		//그날 예약 가능여부 바꿔주는 부분
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

	@Override
	public List<RoomReservationVO> selectListRoomReservationAndCatCareLog(RoomReservationVO vo, PageNavigator navi) {
		//해당 페이지에 보여줄 예약리스트
		List<RoomReservationVO> reservationList = roomReservationDAO.selectListRoomReservation(vo,navi); 
		
		//뽑아온 예약번호를 이용하여 해당 예약번호들에해당하는 모든 냥박일지를 얻어오는 메소드
		List<CatCareLogVO> catCareLogList =  catCareLogDAO.getCatCareLogListByReserNo(reservationList);
		
		//예약 번호에 해당하는 냥박일지를 넣어주는 로직
		for (int i = 0; i < reservationList.size(); i++) {
			List<CatCareLogVO> careList = new ArrayList<CatCareLogVO>();
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
