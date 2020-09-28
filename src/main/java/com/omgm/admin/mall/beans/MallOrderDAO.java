package com.omgm.admin.mall.beans;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public class MallOrderDAO {
    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    ///////////////// 몰 정산 관련 DAO 설정 ////////////////////////////////////////
    // 몰 날짜 기간내 매출
    public int getBetweenPrice(OrderVO vo) {return sqlSessionTemplate.selectOne("MallOrderDAO.getBetweenPrice", vo);}
    // 몰 주차별 매출
    public int getWeekPrice00(OrderVO vo) {return sqlSessionTemplate.selectOne("MallOrderDAO.getWeekPrice00", vo);}
    // 몰 주차별 매출
    public int getWeekPrice01(OrderVO vo) {return sqlSessionTemplate.selectOne("MallOrderDAO.getWeekPrice01", vo);}
    // 몰 주차별 매출
    public int getWeekPrice02(OrderVO vo) {return sqlSessionTemplate.selectOne("MallOrderDAO.getWeekPrice02", vo);}
    // 몰 주차별 매출
    public int getWeekPrice03(OrderVO vo) {return sqlSessionTemplate.selectOne("MallOrderDAO.getWeekPrice03", vo);}

    // 몰 요일별 매출
    public int getDayPrice(OrderVO vo) {return sqlSessionTemplate.selectOne("MallOrderDAO.getDayPrice", vo);}

    public MallToyVO getMallToyOne(MallToyVO vo) { return sqlSessionTemplate.selectOne("MallDAO.getMallToyOne", vo);}
    // 몰 하루 매출
    public int getTodaySales(OrderVO vo){return sqlSessionTemplate.selectOne("MallOrderDAO.getTodaySales", vo);}
    // 몰 한주 매출
    public int getWeekSales(OrderVO vo){return sqlSessionTemplate.selectOne("MallOrderDAO.getWeekSales", vo);}
    // 몰 이번달 매출
    public int getMonthSales(OrderVO vo){return sqlSessionTemplate.selectOne("MallOrderDAO.getMonthSales", vo);}
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

