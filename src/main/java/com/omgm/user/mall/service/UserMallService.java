package com.omgm.user.mall.service;

import com.omgm.admin.mall.beans.MemberOrderVO;
import com.omgm.admin.mall.beans.OrderVO;
import com.omgm.user.mall.beans.CartListVO;
import com.omgm.user.mall.beans.PageNavigatorMall;
import com.omgm.user.mall.beans.UserMallFeedVO;
import com.omgm.user.mall.beans.UserMallToyVO;

import java.util.List;


public interface UserMallService {

    /////////////// 사료 관련 서비스 //////////////////////
    // 사료 구매시 수량 감소
    void feedStockDecrease(UserMallFeedVO vo) throws Exception;
    //사료 상품 나열
    public List<UserMallFeedVO> getMallFeedList(UserMallFeedVO vo, PageNavigatorMall navi) throws Exception;

    // 사료 갯수
    int selectCountMall();

    // 사용자가 사료 누르면 정보와 함께 결제 페이지로 이동
    UserMallFeedVO getMallFeedOneInfo(UserMallFeedVO vo) throws Exception;

    /////////////// 장난감 관련 서비스 //////////////////////
    // 장난감 구매시 수량 감소
    void toyStockDecrease(UserMallToyVO vo) throws Exception;
    // 장난감 상품 나열
    public List<UserMallToyVO> getMallToyList(UserMallToyVO vo, PageNavigatorMall navi) throws Exception;


    /////////////// 장바구니 /////////////////////////////



    // 장난감 갯수
    int selectCountToyMall();


    // 사용자가 장난감 누르면 정보와 함께 결제 페이지로 이동
    UserMallToyVO getMallToyOneInfo(UserMallToyVO vo) throws Exception;

    /////////////// CARTLIST ///////////////////////////////////////////
    void insertCartList(com.omgm.user.mall.beans.CartListVO vo) throws Exception;
    void updateCartListCount(CartListVO vo) throws Exception;
    public List<CartListVO> selectCartList(CartListVO vo) throws Exception;
    OrderVO selectCartListWayBill(OrderVO vo) throws Exception;
    void deleteCartListOne(CartListVO vo) throws Exception;
    void deleteCartListAll(CartListVO vo) throws Exception;
    void insertOrderCartList(OrderVO vo) throws Exception;
    void updateMemberPoint(MemberOrderVO vo) throws Exception;

    /////////////// mypage mall order ///////////////////////////////////////////
    public List<OrderVO> myOrder(OrderVO vo) throws Exception;
    void updateOrder(OrderVO vo) throws Exception;
    void exchangeOrder(OrderVO vo) throws Exception;
}
