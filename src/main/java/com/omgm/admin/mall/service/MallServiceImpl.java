package com.omgm.admin.mall.service;


import com.omgm.admin.mall.beans.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("mallService")
public class MallServiceImpl implements MallService {

    @Autowired
    MallDAO mallDAO;

    //  ###### 장난감 관련 서비스 ###########################################################
    // 장난감(상품) 등록 삭제
    @Override
    public void deleteMallToy(MallToyVO vo) throws Exception {
        mallDAO.deleteMallToy(vo);
    }

    // 장난감(상품) 등록
    @Override
    public void insertMallToy(MallToyVO vo) {
        mallDAO.insertMallToy(vo);
    }

    // 장난감(상품) 수정
    @Override
    public void updateMallToy(MallToyVO vo) throws Exception {
        mallDAO.updateMallToy(vo);
    }

    // 장난감(상품)목록 나열
    @Override
    public List<MallToyVO> getMallToyList() throws Exception{
        return mallDAO.getMallToyList();
    }

    // 장난감(상품) 상세정보 페이지
    @Override
    public MallToyVO getMallToyOne(MallToyVO vo) throws Exception {
        return mallDAO.getMallToyOne(vo);
    }

    // 장난감 이미지 정보 불러오기
    @Override
    public MallToyVO getMallToyImgOne(MallToyVO vo) throws Exception {
        return mallDAO.getMallToyImgOng(vo);
    }


    //  ###### 사료 관련 서비스 ###########################################################
    // 사료 3일 이하로 남은 리스트
    @Override
    public List<MallFeedVO> getExpirationFeedList() throws Exception {
        return mallDAO.getExpirationFeedList();
    }
    // 사료 유통기한 설정
    @Override
    public void expirationFeed(MallFeedVO vo) throws Exception {
        mallDAO.expirationFeed(vo);
    }
    // 사료(상품) 상품등록
    @Override
    public void insertMallFeed(MallFeedVO vo) throws Exception {
        mallDAO.insertMallFeed(vo);
    }

    // 사료(상품) 상품 삭제
    @Override
    public void deleteMallFeed(MallFeedVO vo) throws Exception {
        mallDAO.deleteMallFeed(vo);
    }

    // 사료(상품) 수정(업데이트)
    @Override
    public void updateMallFeed(MallFeedVO vo) throws Exception {
        mallDAO.updateMallFeed(vo);
    }

    // 사료(상품) 상세정보 페이지
    @Override
    public MallFeedVO getMallFeedOne(MallFeedVO vo) throws Exception {
        return mallDAO.getMallFeedOne(vo);
    }

    // 사료(상품)목록 나열
    @Override
    public List<MallFeedVO> getMallFeedList() throws Exception {
        return mallDAO.getMallFeedList();
    }

//  #######################################################################################
    @Autowired
    MallOrderDAO mallOrderDAO;

    ///////////////// 몰 정산 관련 DAO 설정 ////////////////////////////////////////
    // 몰 날짜 기간내 총 매출
    @Override
    public int getBetweenPrice(OrderVO vo) throws Exception {
        return mallOrderDAO.getBetweenPrice(vo);
    }
    //몰 정산 페이지 주차별 매출
    @Override
    public int getWeekPrice00(OrderVO vo) throws Exception {
        return mallOrderDAO.getWeekPrice00(vo);
    }
    //몰 정산 페이지 주차별 매출
    @Override
    public int getWeekPrice01(OrderVO vo) throws Exception {
        return mallOrderDAO.getWeekPrice01(vo);
    }
    //몰 정산 페이지 주차별 매출
    @Override
    public int getWeekPrice02(OrderVO vo) throws Exception {
        return mallOrderDAO.getWeekPrice02(vo);
    }
    //몰 정산 페이지 주차별 매출
    @Override
    public int getWeekPrice03(OrderVO vo) throws Exception {
        return mallOrderDAO.getWeekPrice03(vo);
    }
    // 몰 정산 페이지 요일별 매출
    @Override
    public int getDayPrice(OrderVO vo) throws Exception {
        return mallOrderDAO.getDayPrice(vo);
    }
    // 몰 정산 페이지 하루 매출
    @Override
    public int getTodaySales(OrderVO vo) throws Exception{
        return mallOrderDAO.getTodaySales(vo);
    }
    // 몰 정산 페이지 이번주 매출
    @Override
    public int getWeekSales(OrderVO vo) throws Exception {
        return mallOrderDAO.getWeekSales(vo);
    }
    // 몰 정산 페이지 이번달 매출
    @Override
    public int getMonthSales(OrderVO vo) throws Exception {
        return mallOrderDAO.getMonthSales(vo);
    }
//    //주문등록(상세)
//    @Override
//    public void insertMallOrder(MallOrderVO vo) {
//        mallOrderDAO.insertMallOrder(vo);
//    }
//
//    //주문삭제(상세)
//    @Override
//    public void deleteMallOrder(MallOrderVO vo) {
//         mallOrderDAO.deleteMallOrder(vo);
//    }
//
//    //주문목록불러오기(상세)
//    @Override
//    public List<OrderVO> getMallOrderList(OrderVO vo) throws Exception{
//        return mallOrderDAO.getMallOrderList(vo);
//    }

//    @Override
//    public List<MallOrderVO> getDetailOrder(OrderVO vo) {
//        return mallOrderDAO.getDetailOrder(vo);
//    }
//
//    @Override
//    public OrderVO getDetail(OrderVO vo) {
//        return mallOrderDAO.getDetail(vo);
//    }

    //주문목록불러오기
    @Override
    public List<OrderVO> getOrderList() throws Exception{
        return mallOrderDAO.getOrderList();
    }

    //주문삭제
    @Override
    public void deleteOrder(OrderVO vo) {
        mallOrderDAO.deleteOrder(vo);
    }

    // 주문상태 수정
    @Override
    public void updateState(OrderVO vo) throws Exception {
        mallOrderDAO.updateState(vo);
    }

    // 주문상태 수정
    @Override
    public void stateSuccess(OrderVO vo) throws Exception {
        mallOrderDAO.stateSuccess(vo);
    }

//    @Override
//    public void updateMemberPoint(MemberOrderVO vo) throws Exception{
//        mallOrderDAO.updateMemberPoint(vo);
//    }

    /////////////////////// ORDER_LIST //////////////////////////////////


    // 사료관련 ORDER 정보 ORDER_LIST 테이블에 넣기
    @Override
    public void insertOrderFeed(OrderVO vo) {mallOrderDAO.insertOrderFeed(vo);}

    @Override
    public List<OrderVO> getOrderList(OrderVO vo) throws Exception {
        return null;
    }

    /////////////////////// ORDER_STATUS //////////////////////////////////
    // 사료관련 ORDER 정보 ORDER_STATUS 테이블에 넣기
//    @Override
//    public void insertOrderStatusFeed(MallOrderVO vo) {mallOrderDAO.insertOrderStatusFeed(vo);}

    //포인트적립 불러오기
    @Override
    public List<MallOrderVO> getMallPointList(MallOrderVO vo) throws Exception {
        return mallOrderDAO.getMallPointList();
    }


}
