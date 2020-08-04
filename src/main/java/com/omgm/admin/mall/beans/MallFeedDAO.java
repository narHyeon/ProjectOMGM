package com.omgm.admin.mall.beans;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MallFeedDAO {
    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    public List<MallFeedVO> getMallOrderList () { return sqlSessionTemplate.selectList("MallFeedDAO.getMallFeedList"); }
}
