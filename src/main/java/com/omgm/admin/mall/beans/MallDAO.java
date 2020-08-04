package com.omgm.admin.mall.beans;

import com.omgm.admin.mall.beans.MallToyVO;
import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MallDAO {

    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    public void insertMallToy(MallToyVO vo) {
        sqlSessionTemplate.insert("MallDAO.insertMallToy", vo);
    }

    public List<MallToyVO> getMallToyList () {
        return sqlSessionTemplate.selectList("MallDAO.getMallToyList");
    }

    /////////////////  feed 관련 DAO 설정  ///////////////////////////////////////////////////////////
    public void insertMallFeed(MallFeedVO vo) {
        sqlSessionTemplate.insert("MallDAO.insertMallFeed", vo);
    }

    public List<MallFeedVO> getMallFeedList () {
        return sqlSessionTemplate.selectList("MallDAO.getMallFeedList");
    }
}
