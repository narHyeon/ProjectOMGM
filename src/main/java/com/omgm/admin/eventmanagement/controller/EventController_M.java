package com.omgm.admin.eventmanagement.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.omgm.admin.eventmanagement.beans.EventVO_M;
import com.omgm.admin.eventmanagement.controller.service.EventService_M;

@Controller
public class EventController_M {

	@Autowired
	EventService_M eventService_M;
	
	
	@RequestMapping(value = "/event_M.mdo", method = RequestMethod.GET)
	public ModelAndView getAllEventList_M(EventVO_M vo, ModelAndView mav) {
		List<EventVO_M> eventlist = eventService_M.getAllEventList_M(vo);
		mav.addObject("EventList", eventlist);
		mav.setViewName("/event/event_M");
		return mav;
	}
	@RequestMapping(value="/eventWrite_M", method = RequestMethod.GET)
	public ModelAndView insertEvent_M(EventVO_M vo) {
		ModelAndView mav = new ModelAndView();
		vo.setEVENT_NO(7);
		mav.addObject("eventInfo", vo);
		mav.setViewName("/event/eventWrite_M");
		return mav;
	}
	@RequestMapping(value="/eventWrite_M", method = RequestMethod.POST)
	public ModelAndView afterinsertEvent_M(EventVO_M vo) {
		ModelAndView mav = new ModelAndView();
		eventService_M.insertEvent_M(vo);
		mav.setViewName("redirect:/event_M.mdo");
		return mav;
	}
}