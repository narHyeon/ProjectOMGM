package com.omgm.user.mypet.service;

import java.util.List;

import com.omgm.user.mypet.beans.MyPetVO;

public interface MyPetService {

	
	void insertMyPet(MyPetVO vo);
	void updateMyPet(MyPetVO vo);
	void deleteMyPet(MyPetVO vo);
	List<MyPetVO> getAllMyPetList(MyPetVO vo);
	
}
