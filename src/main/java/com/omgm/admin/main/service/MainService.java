package com.omgm.admin.main.service;

import com.omgm.admin.main.beans.RoomReservationVO;
import com.omgm.admin.mall.beans.OrderVO;
import com.omgm.user.common.beans.KinderGardenReservationVO;

public interface MainService {

    //areaChart 관련 서비스
    // 상품(몰)
    int getAreaChartMonthlySales(OrderVO vo) throws Exception;
    // 유치원
    int getAreaChartMonthlySales01(KinderGardenReservationVO vo) throws Exception;
    // 호텔
    int getAreaChartMonthlySales02(RoomReservationVO vo) throws Exception;
}
