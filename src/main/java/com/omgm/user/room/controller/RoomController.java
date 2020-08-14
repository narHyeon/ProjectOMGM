package com.omgm.user.room.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.omgm.user.review.beans.PageNavigator;
import com.omgm.user.room.beans.RoomVO;
import com.omgm.user.room.service.RoomService;

@Controller("roomController")
public class RoomController {
	
	@Autowired
	RoomService roomService;

	@RequestMapping(value = "/roomRead.do" , method = RequestMethod.GET)
	public ModelAndView roomRead(RoomVO vo, ModelAndView mav) {

		RoomVO roomInfo = new RoomVO();
		roomInfo = roomService.roomRead(vo);
		
		mav.addObject("roomInfo", roomInfo);
		mav.setViewName("/room/roomRead");
		
		return mav;
	}
	
	@RequestMapping(value = "/roomList.do" , method = RequestMethod.GET)
	public ModelAndView getRoomList(RoomVO vo, ModelAndView mav,
			@RequestParam(value="page", defaultValue = "1") int page
			) {
		int COUNTPERPAGE = 8; // 페이지당 10개의 글
        int PAGEPERGROUP = 5; // 페이지 그룹당 5개의 페이지
        int count = roomService.selectCountRoom(vo);
        PageNavigator navi = new PageNavigator(COUNTPERPAGE,PAGEPERGROUP, page,count);
        List<RoomVO> list = roomService.getListRoom(vo, navi);
        
		mav.addObject("roomList",list);
		mav.addObject("navi",navi);
		mav.addObject("page", page);
		mav.setViewName("/room/roomList");
		return mav;
	}

	
}
