package com.omgm.admin.main.service;

import com.omgm.admin.main.beans.MainDAO;
import com.omgm.admin.mall.beans.OrderVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("mainService")
public class MainServiceImpl implements MainService {

    @Autowired
    MainDAO mainDAO;

    @Override
    public int getAreaChartMonthlySales(OrderVO vo) throws Exception {
        return mainDAO.getAreaChartMonthlySales(vo);
    }
}
