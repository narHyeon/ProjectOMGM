package com.omgm.admin.main.controller;

import com.omgm.admin.common.beans.AdminVO;
import com.omgm.admin.main.service.MainService;
import com.omgm.admin.mall.beans.OrderVO;
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
    @ResponseBody
    @RequestMapping("/getAreaChartMonthlySales.mdo")
    public int getAreaChartMonthlySales(@RequestBody OrderVO vo) throws Exception {
        int sum = mainService.getAreaChartMonthlySales(vo);
        return sum;
    }

}
