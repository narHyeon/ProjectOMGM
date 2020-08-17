package com.omgm.admin.main.beans;

import com.omgm.admin.mall.beans.OrderVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MainDAO {

    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    // areaChart 관련 값 불러오기
    public int getAreaChartMonthlySales(OrderVO vo){
        return sqlSessionTemplate.selectOne("adminMainDAO.getAreaChartMonthlySales", vo);
    }
}
