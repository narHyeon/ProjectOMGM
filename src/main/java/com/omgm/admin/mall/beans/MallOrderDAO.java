package com.omgm.admin.mall.beans;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public class MallOrderDAO {
    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    public void insertMallOrder(MallOrderVO vo) {
        sqlSessionTemplate.insert("MallOrderDAO.insertMallOrder", vo);
    }
    public int deleteMallOrder(MallOrderVO vo) { return sqlSessionTemplate.delete("MallOrderDAO.deleteMallOrder",vo); }
    public List<MallOrderVO> getMallOrderList () { return sqlSessionTemplate.selectList("MallOrderDAO.getMallOrderList"); }
}
