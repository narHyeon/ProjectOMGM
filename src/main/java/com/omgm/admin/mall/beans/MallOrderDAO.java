package com.omgm.admin.mall.beans;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public class MallOrderDAO {
    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    //주문추가(상세)
    public void insertMallOrder(MallOrderVO vo) {
        sqlSessionTemplate.insert("MallOrderDAO.insertMallOrder", vo);
    }

    //주문삭제(상세)
    public int deleteMallOrder(MallOrderVO vo) { return sqlSessionTemplate.delete("MallOrderDAO.deleteMallOrder",vo); }

    //주문목록보기(상세)
    public List<MallOrderVO> getMallOrderList (MallOrderVO vo) { return sqlSessionTemplate.selectList("MallOrderDAO.getMallOrderList", vo); }

    //주문목록보기
    public List<OrderVO> getOrderList () { return sqlSessionTemplate.selectList("MallOrderDAO.getOrderList"); }

    //주문삭제
    public int deleteOrder(OrderVO vo) { return sqlSessionTemplate.delete("MallOrderDAO.deleteOrder",vo); }

    //포인트 적립
    public List<MallOrderVO> getMallPointList () { return sqlSessionTemplate.selectList("MallOrderDAO.getMallPointList"); }
}
