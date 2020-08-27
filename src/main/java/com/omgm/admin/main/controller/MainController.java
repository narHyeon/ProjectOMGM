package com.omgm.admin.main.controller;

import com.omgm.admin.common.beans.AdminVO;
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
    public RoomReservationVO getBarChartWeekSales02(@RequestBody RoomReservationVO vo) throws Exception {
        vo.setRoomReservation_fee(mainService.getBarChartWeekSales02(vo));
        return vo;
    }
    // areaChart
    // 상품 몰 매출
    @ResponseBody
    @RequestMapping("/getAreaChartMonthlySales.mdo")
    public OrderVO getAreaChartMonthlySales(@RequestBody OrderVO vo) throws Exception {
        vo.setOrder_price(mainService.getAreaChartMonthlySales(vo));
        vo.setOrder_quantity(mainService.getTotalMallCount(vo));
        vo.setOrder_point(mainService.getTotalMemberCount());
        vo.setOrder_point_used(mainService.getTotalKGSales());
        vo.setOrder_no(mainService.getTotalRRSales());
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
    public RoomReservationVO getAreaChartMonthlySales02(@RequestBody RoomReservationVO vo) throws Exception {
        vo.setRoomReservation_no( mainService.getAreaChartMonthlySales02(vo));
        vo.setRoomReservation_roomNo(mainService.getRoomReservationCount());
        vo.setRoomReservation_memberNo(mainService.getKGReservationCount());
        vo.setRoomReservation_foodNo(mainService.getMallSalesCount());
        vo.setRoomReservation_toyNo(mainService.getMemberCount());
        return vo;
    }

    // 관리자 메인 불러오기
    @RequestMapping("/adminMain.mdo")
    public ModelAndView main(RoomReservationVO vo) throws Exception {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/main");
        mav.addObject("RRList", mainService.getRRListToday());
        mav.addObject("KGList",mainService.getKGListToday());
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
