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
	
}
