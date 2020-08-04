package com.omgm.user.mall.beans;

import com.omgm.admin.mall.beans.MallFeedVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class UserMallFeedDAO {
    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    public List<UserMallFeedVO> getMallFeedList () { return sqlSessionTemplate.selectList("UserMallFeedDAO.getMallFeedList"); }
}
