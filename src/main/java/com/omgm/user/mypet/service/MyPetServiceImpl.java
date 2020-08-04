package com.omgm.user.mypet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.omgm.user.mypet.beans.MyPetDAO;
import com.omgm.user.mypet.beans.MyPetVO;

@Service("myPetServiceImpl")
public class MyPetServiceImpl implements MyPetService {

	@Autowired
	MyPetDAO myPetDAO;
	
	@Override
	public List<MyPetVO> getAllMyPetList(MyPetVO vo){
		return myPetDAO.getAllMyPetList(vo);
	} 
}
