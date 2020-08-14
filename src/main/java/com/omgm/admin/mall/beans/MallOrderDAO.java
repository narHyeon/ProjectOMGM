package com.omgm.admin.mall.beans;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public class MallOrderDAO {
    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    // 멤버 결제시 포인트 삭제
//    public void updateMemberPoint(MemberOrderVO vo) {
//        sqlSessionTemplate.update("MallOrderDAO.updateMemberPoint", vo);
//    }

    ///////// ORDER_lIST /////////////////////////////////////////
    // 주문했을시 주문 정보 ORDER_LIST 에 입력
    public void insertOrderFeed(OrderVO vo) {
        sqlSessionTemplate.insert("MallOrderDAO.insertOrderFeed", vo);
    }

    //주문목록보기
    public List<OrderVO> getOrderList() {
        return sqlSessionTemplate.selectList("MallOrderDAO.getOrderList");
    }

    //주문삭제
    public int deleteOrder(OrderVO vo) {
        return sqlSessionTemplate.delete("MallOrderDAO.deleteOrder", vo);
    }

    // 주문상태수정(배송처리)
    public void updateState(OrderVO vo) {sqlSessionTemplate.update("MallOrderDAO.updateState", vo);}

    // 주문상태수정(배송완료)
    public void stateSuccess(OrderVO vo) {sqlSessionTemplate.update("MallOrderDAO.stateSuccess", vo);}


    //////// ORDER_STATUS ///////////////////////////////////////
    // 주문했을시 주문 정보 ORDER_STATUS 에 입력
//    public void insertOrderStatusFeed(MallOrderVO vo) {sqlSessionTemplate.insert("MallOrderDAO.insertOrderStatusFeed", vo);}
    //주문추가(상세)
    public void insertMallOrder(MallOrderVO vo) {
        sqlSessionTemplate.insert("MallOrderDAO.insertMallOrder", vo);
    }
//
//    //주문삭제(상세)
//    public int deleteMallOrder(MallOrderVO vo) { return sqlSessionTemplate.delete("MallOrderDAO.deleteMallOrder",vo); }
//
//    //주문목록보기(상세)
//    public List<OrderVO> getMallOrderList (OrderVO vo) { return sqlSessionTemplate.selectList("MallOrderDAO.getMallOrderList", vo); }
//
//    //주문목록보기
//    public List<OrderVO> getOrderList () { return sqlSessionTemplate.selectList("MallOrderDAO.getOrderList"); }
//
//    //주문삭제
//    public int deleteOrder(OrderVO vo) { return sqlSessionTemplate.delete("MallOrderDAO.deleteOrder",vo); }
//
////    public List<MallOrderVO> getDetailOrder(OrderVO vo) {
////        return sqlSessionTemplate.selectList("MallOrderDAO.getDetailOrder",vo);
////    }

    //포인트 적립
    public List<MallOrderVO> getMallPointList() {
        return sqlSessionTemplate.selectList("MallOrderDAO.getMallPointList");
    }



//    public OrderVO getDetail(OrderVO vo) {
//        return sqlSessionTemplate.selectOne("MallOrderDAO.getDetail",vo);
//    }
}

