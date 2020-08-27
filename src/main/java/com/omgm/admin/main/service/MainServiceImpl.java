package com.omgm.admin.main.service;

import com.omgm.admin.main.beans.MainDAO;
import com.omgm.admin.main.beans.RoomReservationVO;
import com.omgm.admin.mall.beans.OrderVO;
import com.omgm.user.common.beans.KinderGardenReservationVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.concurrent.ExecutionException;

@Service("mainService")
public class MainServiceImpl implements MainService {

    @Autowired
    MainDAO mainDAO;

    // 상품 몰 한주 매출
    @Override
    public int getBarChartWeekSales(OrderVO vo) throws Exception {
        return mainDAO.getBarChartWeekSales(vo);
    }
    // 유치원 한주 매출
    @Override
    public int getBarChartWeekSales01(KinderGardenReservationVO vo) throws Exception {
        return mainDAO.getBarChartWeekSales01(vo);
    }
    // 호텔 한주 매출
    @Override
    public int getBarChartWeekSales02(RoomReservationVO vo) throws Exception {
        return mainDAO.getBarChartWeekSales02(vo);
    }
    // 상품 몰  월 매출
    @Override
    public int getAreaChartMonthlySales(OrderVO vo) throws Exception {
        return mainDAO.getAreaChartMonthlySales(vo);
    }
    // 유치원 월 매출
    @Override
    public int getAreaChartMonthlySales01(KinderGardenReservationVO vo) throws Exception {
        return mainDAO.getAreaChartMonthlySales01(vo);
    }
    // 호텔 월 매출
    @Override
    public int getAreaChartMonthlySales02(RoomReservationVO vo) throws Exception {
        return mainDAO.getAreaChartMonthlySales02(vo);
    }
    // 몰 올해 총 건수
    @Override
    public int getTotalMallCount(OrderVO vo) throws Exception {
        return mainDAO.getTotalMallCount(vo);
    }
    // 회원가입 수
    @Override
    public int getTotalMemberCount() throws Exception {
        return mainDAO.getTotalMemberCount();
    }
    // 회원가입 수
    @Override
    public int getTotalKGSales() throws Exception {
        return mainDAO.getTotalKGSales();
    }
    // 호텔 총 판매 금액
    @Override
    public int getTotalRRSales() throws Exception {
        return mainDAO.getTotalRRSales();
    }

    // 이번달 호텔 예약건
    public int getRoomReservationCount() throws Exception{
        return mainDAO.getRoomReservationCount();
    }
    // 이번달 유치원 예약건
    public int getKGReservationCount() throws Exception {
        return mainDAO.getKGReservationCount();
    }
    // 이번달 상품 판매건수
    @Override
    public int getMallSalesCount() throws Exception {
        return mainDAO.getMallSalesCount();
    }
    // 이번달 회원가입수 명
    @Override
    public int getMemberCount() throws Exception {
        return mainDAO.getMemberCount();
    }
    // 금일 호텍예약 현황
    @Override
    public List<RoomReservationVO> getRRListToday() throws Exception {
        return mainDAO.getRRListToday();
    }

    //금일 유치원예약 현황
    @Override
    public List<KinderGardenReservationVO> getKGListToday() throws Exception{
        return mainDAO.getKGListToday();
    }

    // 금일 몰 주문 현황
    @Override
    public List<OrderVO> getMallListToday() throws Exception{
        return mainDAO.getMallListToday();
    }
}
