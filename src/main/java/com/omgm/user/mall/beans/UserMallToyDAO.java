package com.omgm.user.mall.beans;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class UserMallToyDAO {
    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    public List<UserMallToyVO> getMallToyList () { return sqlSessionTemplate.selectList("UserMallToyDAO.getMallToyList"); }

}