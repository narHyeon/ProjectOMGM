package com.omgm.admin.main.beans;

import com.omgm.admin.mall.beans.OrderVO;
import com.omgm.user.common.beans.KinderGardenReservationVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MainDAO {

    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    // areaChart 관련 값 불러오기
    // 상품 매출
    public int getAreaChartMonthlySales(OrderVO vo){
        return sqlSessionTemplate.selectOne("adminMainDAO.getAreaChartMonthlySales", vo);
    }
    // 유치원 매출
    public int getAreaChartMonthlySales01(KinderGardenReservationVO vo){
        return sqlSessionTemplate.selectOne("adminMainDAO.getAreaChartMonthlySales01", vo);
    }
    // 호텔 예약 매출
    public int getAreaChartMonthlySales02(RoomReservationVO vo){
        return sqlSessionTemplate.selectOne("adminMainDAO.getAreaChartMonthlySales02", vo);
    }

    // 몰 총 판매 건수
    public int getTotalMallCount(OrderVO vo) {
        return sqlSessionTemplate.selectOne("adminMainDAO.getTotalMallCount", vo);
    }

    //이번년도 총 회원가입 건 수
    public int getTotalMemberCount() {
        return sqlSessionTemplate.selectOne("adminMainDAO.getTotalMemberCount");
    }

    // 이번년도 총 유치원 판매 액
    public int getTotalKGSales(){
        return sqlSessionTemplate.selectOne("adminMainDAO.getTotalKGSales");
    }

    //이번년도 호텔 총 판매 액
    public int getTotalRRSales(){
        return sqlSessionTemplate.selectOne("adminMainDAO.getTotalRRSales");
    }

    // 월 호텔 예약 건수
    public int getRoomReservationCount() {
        return sqlSessionTemplate.selectOne("adminMainDAO.getRoomReservationCount");
    }

    // 월 유치원 예약 건수
    public int getKGReservationCount() {
        return sqlSessionTemplate.selectOne("adminMainDAO.getKGReservationCount");
    }

    // 월 몰 판매 건수
    public int getMallSalesCount() {
        return sqlSessionTemplate.selectOne("adminMainDAO.getMallSalesCount");
    }
    // 월 신규가입 수
    public int getMemberCount(){
        return sqlSessionTemplate.selectOne("adminMainDAO.getMemberCount");
    }

    // 금일 효텔 예약 현왕
    public List<RoomReservationVO> getRRListToday(){
        return sqlSessionTemplate.selectList("adminMainDAO.getRRListToday");
    }

    public List<KinderGardenReservationVO> getKGReservation() {
        return sqlSessionTemplate.selectList("adminMainDAO.getKGReservation");
    }
}
