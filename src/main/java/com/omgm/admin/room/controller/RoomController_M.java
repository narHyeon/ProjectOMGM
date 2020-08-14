package com.omgm.admin.room.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.omgm.admin.room.beans.RoomVO_M;
import com.omgm.admin.room.service.RoomService_M;
import com.omgm.user.review.beans.PageNavigator;

@Controller("roomController_M")
public class RoomController_M {
	
	@Autowired
	RoomService_M roomService_M;

	@RequestMapping(value = "/roomInsert.mdo" , method = RequestMethod.GET)
	public ModelAndView roomInsert(RoomVO_M vo, ModelAndView mav) {

		mav.setViewName("/room/roomInsert");
		
		return mav;
	}

	@RequestMapping(value = "/roomInsert.mdo" , method = RequestMethod.POST)
	public ModelAndView afterRoomInsert(RoomVO_M vo, ModelAndView mav) {

		roomService_M.roomInsert(vo);
		
		mav.setViewName("redirect:/roomList.mdo");
		
		return mav;
	}
	
	@RequestMapping(value = "/roomUpdate.mdo" , method = RequestMethod.GET)
	public ModelAndView roomUpdate(RoomVO_M vo, ModelAndView mav) {
		
		RoomVO_M roomInfo = new RoomVO_M();
		roomInfo = roomService_M.roomRead(vo);
		
		mav.addObject("roomInfo", roomInfo);
		mav.setViewName("/room/roomUpdate");
		
		return mav;
	}
	@RequestMapping(value = "/roomUpdate.mdo" , method = RequestMethod.POST)
	public ModelAndView AfterRoomUpdate(RoomVO_M vo, ModelAndView mav) {
	
		roomService_M.roomUpdate(vo);
		
		mav.setViewName("redirect:/roomRead.mdo?ROOM_NO="+ vo.getROOM_NO());
		
		return mav;
	}	
	
	
	@RequestMapping(value = "/roomDelete.mdo" , method = RequestMethod.GET)
	public ModelAndView roomDelete(RoomVO_M vo, ModelAndView mav) {

		
		roomService_M.roomDelete(vo);
		mav.setViewName("redirect:/roomList.mdo");
		
		return mav;
	}

	
	
	@RequestMapping(value = "/roomRead.mdo" , method = RequestMethod.GET)
	public ModelAndView roomRead(RoomVO_M vo, ModelAndView mav) {

		RoomVO_M roomInfo = new RoomVO_M();
		roomInfo = roomService_M.roomRead(vo);
		
		mav.addObject("roomInfo", roomInfo);
		mav.setViewName("/room/roomRead");
		
		return mav;
	}
	
	@RequestMapping(value = "/roomList.mdo" , method = RequestMethod.GET)
	public ModelAndView getRoomList(RoomVO_M vo, ModelAndView mav,
			@RequestParam(value="page", defaultValue = "1") int page
			) {
		int COUNTPERPAGE = 8; // 페이지당 10개의 글
        int PAGEPERGROUP = 5; // 페이지 그룹당 5개의 페이지
        int count = roomService_M.selectCountRoom(vo);
        PageNavigator navi = new PageNavigator(COUNTPERPAGE,PAGEPERGROUP, page,count);
        List<RoomVO_M> list = roomService_M.getListRoom(vo, navi);
        
		mav.addObject("roomList",list);
		mav.addObject("navi",navi);
		mav.addObject("page", page);
		mav.setViewName("/room/roomList");
		return mav;
	}
	
}
