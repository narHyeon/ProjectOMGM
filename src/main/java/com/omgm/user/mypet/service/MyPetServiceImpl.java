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
	public void insertMyPet(MyPetVO vo) {
		myPetDAO.insertMyPet(vo);
	}

	@Override
	public void updateMyPet(MyPetVO vo) {
		myPetDAO.updateMyPet(vo);
	}

	@Override
	public void deleteMyPet(MyPetVO vo) {
		myPetDAO.deleteMyPet(vo);
	}
	
	@Override
	public MyPetVO getMyPet(MyPetVO vo) {
		return myPetDAO.getMyPet(vo);
	}
	@Override
	public List<MyPetVO> getAllMyPetList(MyPetVO vo){
		return myPetDAO.getAllMyPetList(vo);
	} 
}
