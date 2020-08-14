package com.omgm.admin.eventmanagement.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.omgm.admin.eventmanagement.beans.EventVO_M;
import com.omgm.admin.eventmanagement.controller.service.EventService_M;

@Controller
public class EventController_M {

	@Autowired
	EventService_M eventService_M;
	
	
	@RequestMapping(value = "/event_M.mdo", method = RequestMethod.GET)
	public ModelAndView getAllEventList_M(EventVO_M vo, ModelAndView mav) {
		List<EventVO_M> eventlist = eventService_M.getAllEventList_M(vo);
		for (int i = 0; i < eventlist.size(); i++) {
			String content = eventlist.get(i).getEVENT_CONTENT();
			String[] tags = content.split("<|>");
			ArrayList<String> list = new ArrayList<String>();
			ArrayList<String> list2 = new ArrayList<String>();
			for(String tag : tags) {
				if (tag.contains("img src=")) {
					list.add(tag);
				}
			}
			for (int j = 0; j < list.size(); j++) {
				String [] tags2 = list.get(j).split("\""); 
				for(String tag : tags2) {
					if (tag.contains("data:image")) {
						list2.add(tag);
					}	
				}
			}
			//getVO.setCATCARELOG_FILES(String.join("|", list2)); // 여러개인경우 합쳐서 저장함
			eventlist.get(i).setEVENT_IMG(list2.get(0));  // 컨탠츠 내의 첫 사진 불러옴
		} //end for문
		
		mav.addObject("EventList", eventlist);
		mav.setViewName("/event/event_M");
		return mav;
	}
	
	@RequestMapping(value="/eventWrite_M.mdo", method = RequestMethod.GET)
	public ModelAndView insertEvent_M(EventVO_M vo ) {
		ModelAndView mav = new ModelAndView();
		eventService_M.insertEvent_M(vo);
		mav.addObject("eventInfo", vo);
		mav.setViewName("/event/eventWrite_M");
		return mav;
	}
	
	@RequestMapping(value="/getEvent_M.mdo", method = RequestMethod.GET)
	public ModelAndView getEvent_M(EventVO_M vo, ModelAndView mav) {
		EventVO_M getVO = new EventVO_M();
		getVO = eventService_M.getEvent_M(vo);
		mav.addObject("eventInfo", getVO);
		mav.setViewName("/event/getEvent_M");
		return mav;
	}
	
	@RequestMapping(value="/updateEvent_M.mdo", method = RequestMethod.GET)
	public ModelAndView goupdateEvent_M(EventVO_M vo, ModelAndView mav) {
		EventVO_M getVO = new EventVO_M();
		getVO = eventService_M.getEvent_M(vo);
		mav.addObject("eventInfo", getVO);
		mav.setViewName("/event/updateEvent_M");
		return mav;
	}
	
	@RequestMapping(value="/updateEvent_M.mdo", method = RequestMethod.POST)
	public String afterupdateEvent_M(EventVO_M vo, RedirectAttributes rttr) {
		eventService_M.updateEvent_M(vo);
		EventVO_M getVO = new EventVO_M();
		getVO = eventService_M.getEvent_M(vo);
		System.out.println(getVO.toString());
		rttr.addFlashAttribute("eventInfo", getVO);
		return "redirect:/event_M.mdo";
	}
	
	@RequestMapping(value="/delete", method = RequestMethod.POST)
	public ModelAndView getEv(EventVO_M vo) {
		ModelAndView mav = new ModelAndView();
		EventVO_M getVO = new EventVO_M();
		mav.addObject("eventInfo", getVO);
		mav.setViewName("/event/getEvent_M");
		return mav;
	}
}
