package com.omgm.admin.main.controller;

import com.omgm.admin.common.beans.AdminVO;
import com.omgm.admin.main.beans.RoomReservationVO;
import com.omgm.admin.main.service.MainService;
import com.omgm.admin.mall.beans.OrderVO;
import com.omgm.user.common.beans.KinderGardenReservationVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {
    @Autowired
    MainService mainService;

    //areaChart
    // 상품 몰 매출
    @ResponseBody
    @RequestMapping("/getAreaChartMonthlySales.mdo")
    public int getAreaChartMonthlySales(@RequestBody OrderVO vo) throws Exception {
        int sum = mainService.getAreaChartMonthlySales(vo);
        return sum;
    }
    // 유치원 예약
    @ResponseBody
    @RequestMapping("/getAreaChartMonthlySales01.mdo")
    public int getAreaChartMonthlySales01(@RequestBody KinderGardenReservationVO vo) throws Exception {
        int sum = mainService.getAreaChartMonthlySales01(vo);
        return sum;
    }

    // 호텔 예약
    @ResponseBody
    @RequestMapping("/getAreaChartMonthlySales02.mdo")
    public int getAreaChartMonthlySales02(@RequestBody RoomReservationVO vo) throws Exception {
        int sum = mainService.getAreaChartMonthlySales02(vo);
        return sum;
    }
}
