package com.omgm.admin.eventmanagement.beans;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("eventDAO_M")
public class EventDAO_M {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<EventVO_M> getAllEventList_M(EventVO_M vo){
		System.out.println("----> MyBatis로 getAllEventList() 기능 처리");
		return sqlSessionTemplate.selectList("EventDAO_M.getAllEventList_M", vo);
	}
	
	public void insertEvent_M(EventVO_M vo) {
		System.out.println("----> MyBatis로 insertEvent_M() 기능 처리");
		sqlSessionTemplate.insert("EventDAO_M.insertEvent_M", vo);
	}
	
	public void updateEvent_M(EventVO_M vo) {
		System.out.println("----> MyBatis로 updateEvent_M() 기능 처리");
		sqlSessionTemplate.update("EventDAO_M.updateEvent_M", vo);
	}
	
	public EventVO_M getEvent_M(EventVO_M vo) {
		System.out.println("----> MyBatis로 getEvent_M() 기능 처리");
		return sqlSessionTemplate.selectOne("EventDAO_M.getEvent_M", vo);
	}
	
}
