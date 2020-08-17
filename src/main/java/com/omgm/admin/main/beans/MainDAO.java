package com.omgm.admin.main.beans;

import com.omgm.admin.mall.beans.OrderVO;
import com.omgm.user.common.beans.KinderGardenReservationVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
}
