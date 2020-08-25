package com.omgm.admin.main.service;

import com.omgm.admin.main.beans.RoomReservationVO;
import com.omgm.admin.mall.beans.OrderVO;
import com.omgm.user.common.beans.KinderGardenReservationVO;

import java.util.List;

public interface MainService {

    //areaChart 관련 서비스
    // 상품(몰)
    int getAreaChartMonthlySales(OrderVO vo) throws Exception;
    // 유치원
    int getAreaChartMonthlySales01(KinderGardenReservationVO vo) throws Exception;
    // 호텔
    int getAreaChartMonthlySales02(RoomReservationVO vo) throws Exception;

    // 몰 총 판매 건수
    int getTotalMallCount(OrderVO vo) throws Exception;
    // 총 회원가입 건수
    int getTotalMemberCount() throws Exception;
    // 총 유치원 판매 금액
    int getTotalKGSales() throws Exception;
    // 호텔 총 판매 금액
    int getTotalRRSales() throws Exception;

    // 이번달 호텔 예약건
    int getRoomReservationCount() throws Exception;
    // 이번달 유치원 에약건
    int getKGReservationCount() throws Exception;
    // 이번달 상품 판매 건수
    int getMallSalesCount() throws Exception;
    // 이번달 회원가입 수 명
    int getMemberCount() throws Exception;

    // 금일 호텍 예약 현왕
    List<RoomReservationVO> getRRListToday() throws Exception;

    // 유치원 예약 현황
    List<KinderGardenReservationVO> getKGReservation();
}
