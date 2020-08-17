package com.omgm.admin.main.service;

import com.omgm.admin.mall.beans.OrderVO;

public interface MainService {

    //areaChart 관련 서비스
    int getAreaChartMonthlySales(OrderVO vo) throws Exception;
}
