package com.omgm.admin.mall.controller;

import com.omgm.admin.mall.beans.MallToyVO;
import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MallToyDAO {

    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    public void insertMallToy(MallToyVO vo) {
        sqlSessionTemplate.insert("MallDAO.insertMallToy");
    }

}
