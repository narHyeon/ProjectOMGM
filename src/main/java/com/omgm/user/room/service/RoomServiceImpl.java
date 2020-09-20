package com.omgm.user.room.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.omgm.user.review.beans.PageNavigator;
import com.omgm.user.room.beans.RoomDAO;
import com.omgm.user.room.beans.RoomVO;

@Service("roomServiceImpl")
public class RoomServiceImpl implements RoomService {

	@Autowired
	RoomDAO roomDAO;

	@Override
	public List<RoomVO> getListRoom(RoomVO vo, PageNavigator navi) {
		List<RoomVO> roomList = roomDAO.getListRoom(vo, navi);

		for (int j = 0; j < roomList.size(); j++) {
			RoomVO room = roomList.get(j);
			String content = room.getROOM_CONTENT();
			String[] tags = content.split("<|>");
			ArrayList<String> list = new ArrayList<String>();
			ArrayList<String> list2 = new ArrayList<String>();
			for (String tag : tags) {
				if (tag.contains("img src=")) {
					list.add(tag);
				}
			}
			for (int i = 0; i < list.size(); i++) {
				String[] tags2 = list.get(i).split("\"");
				for (String tag : tags2) {
					if (tag.contains("data:image")) {
						list2.add(tag);
					}
				}
			}
			room.setROOM_IMG(list2.get(0));

		}
		return roomList;
	}

	@Override
	public int selectCountRoom(RoomVO vo) {
		return roomDAO.selectCountRoom(vo);
	}

	@Override
	public RoomVO roomRead(RoomVO vo) {
		return roomDAO.roomRead(vo);
	}

	@Override
	public List<RoomVO> getRoomListInfoAfterLoadReserve() {
		List<RoomVO> roomList = roomDAO.getRoomListInfoAfterLoadReserve();
		for (int j = 0; j < roomList.size(); j++) {
			RoomVO room = roomList.get(j);
			String content = room.getROOM_CONTENT();
			String[] tags = content.split("<|>");
			ArrayList<String> list = new ArrayList<String>();
			ArrayList<String> list2 = new ArrayList<String>();
			for (String tag : tags) {
				if (tag.contains("img src=")) {
					list.add(tag);
				}
			}
			for (int i = 0; i < list.size(); i++) {
				String[] tags2 = list.get(i).split("\"");
				for (String tag : tags2) {
					if (tag.contains("data:image")) {
						list2.add(tag);
					}
				}
			}
			room.setROOM_IMG(list2.get(0));

		}
		return roomList;
	}

}
