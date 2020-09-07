package com.omgm.admin.main.controller;

import com.omgm.admin.main.beans.RoomReservationVO;
import com.omgm.admin.main.service.MainService;
import com.omgm.admin.mall.beans.OrderVO;
import com.omgm.admin.mall.service.MallService;
import com.omgm.user.common.beans.KinderGardenReservationVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class MainController {
    @Autowired
    MainService mainService;
    @Autowired
    MallService mallService;
    // barChart
    // 몰(상품) 관련
    @ResponseBody
    @RequestMapping("/getBarChartWeekSales.mdo")
    public OrderVO getBarChartWeekSales(@RequestBody OrderVO vo) throws Exception {
        vo.setOrder_price(mainService.getBarChartWeekSales(vo));
        return vo;
    }
    // 유치원 관련
    @ResponseBody
    @RequestMapping("/getBarChartWeekSales01.mdo")
    public KinderGardenReservationVO getBarChartWeekSales01(@RequestBody KinderGardenReservationVO vo) throws Exception {
        vo.setPrice(mainService.getBarChartWeekSales01(vo));
        return vo;
    }
    // 유치원 관련
    @ResponseBody
    @RequestMapping("/getBarChartWeekSales02.mdo")
    public int getBarChartWeekSales02(@RequestBody RoomReservationVO vo) throws Exception {

        return mainService.getBarChartWeekSales02(vo);
    }
    // areaChart
    // 상품 몰 매출
    @ResponseBody
    @RequestMapping("/getAreaChartMonthlySales.mdo")
    public OrderVO getAreaChartMonthlySales(@RequestBody OrderVO vo) throws Exception {
        vo.setOrder_price(mainService.getAreaChartMonthlySales(vo));
        return vo;
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
        System.out.println(vo.getDay1()+ "~"+vo.getDay2());
        int sum = mainService.getAreaChartMonthlySales02(vo);
        return sum;
    }

    // 관리자 메인 불러오기
    @RequestMapping("/adminMain.mdo")
    public ModelAndView main(RoomReservationVO vo) throws Exception {
        ModelAndView mav = new ModelAndView();
        OrderVO vo1 = new OrderVO();
        mav.setViewName("/main");
        // 월간판매 매출 하단 값들
        mav.addObject("RRSales",mainService.getTotalRRSales());
        mav.addObject("TMCount",mainService.getTotalMallCount(vo1));
        mav.addObject("TMEMCount",mainService.getTotalMemberCount());
        mav.addObject("TKGSales",mainService.getTotalKGSales());

        // 메인페이지 맨 상단 값들
        mav.addObject("RRCount",mainService.getRoomReservationCount());
        mav.addObject("KGRCount", mainService.getKGReservationCount());
        mav.addObject("MSCount", mainService.getMallSalesCount());
        mav.addObject("MCount", mainService.getMemberCount());

        List<KinderGardenReservationVO> kgList = mainService.getKGReservation();
        int notConfirm = 0;
        for(KinderGardenReservationVO list : kgList) {
            if(list.getState().equals("미확인")) {
                notConfirm++;
            }
        }
//        mav.addObject("kgReservation",kgList);
//        mav.addObject("kgCount",mainService.);
        // 금일
        mav.addObject("RRList", mainService.getRRListToday());
        mav.addObject("kgReservation",mainService.getKGListToday());
        mav.addObject("MList", mainService.getMallListToday());

        mav.addObject("ExDate", mallService.getExpirationFeedList());
        return mav;
    }
    //금일 호텍 예약
    @ResponseBody
    @RequestMapping("/getRRListToday.mdo")
    public ModelAndView getRRListToday(@RequestBody RoomReservationVO vo) throws Exception{
        ModelAndView mav = new ModelAndView();
        mav.addObject("data", mainService.getRRListToday());
        mav.setViewName("/main");
        return mav;
    }
}
