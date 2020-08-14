package com.omgm.admin.room.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.omgm.admin.room.beans.RoomDAO_M;
import com.omgm.admin.room.beans.RoomVO_M;
import com.omgm.user.review.beans.PageNavigator;

@Service("roomServiceImpl_M")
public class RoomServiceImpl_M implements RoomService_M {

	@Autowired
	RoomDAO_M roomDAO_M;

	@Override
	public List<RoomVO_M> getListRoom(RoomVO_M vo, PageNavigator navi) {
		
		List<RoomVO_M> roomList = roomDAO_M.getListRoom(vo,navi);
		
		for (int j = 0; j < roomList.size(); j++) {
			RoomVO_M room = roomList.get(j);
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
		return roomList;
	}
	
	@Override
	public int selectCountRoom(RoomVO_M vo) {
		return roomDAO_M.selectCountRoom(vo);
	}

	@Override
	public void roomInsert(RoomVO_M vo) {
		roomDAO_M.roomInsert(vo);
	}

	@Override
	public RoomVO_M roomRead(RoomVO_M vo) {
		return roomDAO_M.roomRead(vo);
	}

	@Override
	public void roomDelete(RoomVO_M vo) {
		roomDAO_M.roomDelete(vo);
	}

	@Override
	public void roomUpdate(RoomVO_M vo) {
		roomDAO_M.roomUpdate(vo);
	}





}
