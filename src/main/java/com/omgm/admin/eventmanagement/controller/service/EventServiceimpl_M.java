package com.omgm.admin.eventmanagement.controller.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.omgm.admin.eventmanagement.beans.EventDAO_M;
import com.omgm.admin.eventmanagement.beans.EventVO_M;

@Service("eventServiceImpl_M")
public class EventServiceimpl_M implements EventService_M {

		@Autowired
		EventDAO_M eventDAO_M;
		
		@Override
		public void insertEvent_M(EventVO_M vo) {
			eventDAO_M.insertEvent_M(vo);
		}
		
		@Override
		public void updateEvent_M(EventVO_M vo) {
			eventDAO_M.updateEvent_M(vo);
		}
		
		@Override
		public List<EventVO_M> getAllEventList_M(EventVO_M vo) {
			return eventDAO_M.getAllEventList_M(vo);
		}
		
		public EventVO_M getEvent_M(EventVO_M vo) {
			return eventDAO_M.getEvent_M(vo);
		}
		
}
