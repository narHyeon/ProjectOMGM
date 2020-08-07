package com.omgm.user.mypet.beans;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("myPetDAO")
public class MyPetDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<MyPetVO> getAllMyPetList(MyPetVO vo){
		return sqlSessionTemplate.selectList("MyPetDAO.getAllMyPetList", vo);
	}

	public void insertMyPet(MyPetVO vo) {
		System.out.println("----> MyBatis로 insertMyPet() 기능 처리");
		sqlSessionTemplate.insert("MyPetDAO.insertMyPet", vo);
	}
	public void updateMyPet(MyPetVO vo) {
		System.out.println("----> MyBatis로 updateMyPet() 기능 처리");
		sqlSessionTemplate.update("MyPetDAO.updateMyPet", vo);
	}

	public void deleteMyPet(MyPetVO vo) {
		System.out.println("----> MyBatis로 deleteMyPet() 기능 처리");
		sqlSessionTemplate.delete("MyPetDAO.deleteMyPet", vo);
	}
}
