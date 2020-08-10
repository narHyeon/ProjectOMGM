package com.omgm.admin.eventmanagement.controller.service;

import java.util.List;

import com.omgm.admin.eventmanagement.beans.EventVO_M;

public interface EventService_M {

	void insertEvent_M(EventVO_M vo);
	void updateEvent_M(EventVO_M vo);
	EventVO_M getEvent_M(EventVO_M vo);
	List<EventVO_M> getAllEventList_M(EventVO_M vo);

}
