package com.omgm.admin.main.service;

import com.omgm.admin.main.beans.MainDAO;
import com.omgm.admin.main.beans.RoomReservationVO;
import com.omgm.admin.mall.beans.OrderVO;
import com.omgm.user.common.beans.KinderGardenReservationVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("mainService")
public class MainServiceImpl implements MainService {

    @Autowired
    MainDAO mainDAO;
    // 상품 몰 매출
    @Override
    public int getAreaChartMonthlySales(OrderVO vo) throws Exception {
        return mainDAO.getAreaChartMonthlySales(vo);
    }
    // 유치원 매출
    @Override
    public int getAreaChartMonthlySales01(KinderGardenReservationVO vo) throws Exception {
        return mainDAO.getAreaChartMonthlySales01(vo);
    }

    @Override
    public int getAreaChartMonthlySales02(RoomReservationVO vo) throws Exception {
        return mainDAO.getAreaChartMonthlySales02(vo);
    }
}
