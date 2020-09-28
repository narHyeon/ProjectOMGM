package com.omgm.user.mall.service;

import com.omgm.admin.mall.beans.MemberOrderVO;
import com.omgm.admin.mall.beans.OrderVO;
import com.omgm.user.mall.beans.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("UserMallService")
public class UserUserMallServiceImpl implements UserMallService {

    @Autowired
    UserMallDAO userMallDAO;


    ///////////// 사료 관련 서비스 임플 ////////////////////////////
     // 사료 수량 감소
    @Override
    public void feedStockDecrease(UserMallFeedVO vo) throws Exception{
        userMallDAO.feedStockDecrease(vo);
    }
    // 사료 상품 나열(페이징 처리)
    @Override
    public List<UserMallFeedVO> getMallFeedList(UserMallFeedVO vo, PageNavigatorMall navi) throws Exception {
        return userMallDAO.getMallFeedList(vo, navi);
    }

    // 사료 테이블 상품 갯수
    @Override
    public int selectCountMall() {
        return userMallDAO.selectCountMall();
    }

    // 클라이언트 선택 사료 결제 페이지 이동
    @Override
    public UserMallFeedVO getMallFeedOneInfo(UserMallFeedVO vo) throws Exception {
        return userMallDAO.getMallFeedOneInfo(vo);
    }


    ///////////// 장난감 관련 서비스 임플 ////////////////////////////
    // 장난감 수량 감소
    @Override
    public void toyStockDecrease(UserMallToyVO vo) throws Exception{
        userMallDAO.toyStockDecrease(vo);
    }
    @Override
    public List<UserMallToyVO> getMallToyList(UserMallToyVO vo, PageNavigatorMall navi) throws Exception {
        return userMallDAO.getMallToyList(vo, navi);
    }
    // wkdsksrka 테이블 상품 갯수
    @Override
    public int selectCountToyMall() {
        return userMallDAO.selectCountToyMall();
    }

    // 클라이언트 선택 장난감 결제 페이지 이동
    @Override
    public UserMallToyVO getMallToyOneInfo(UserMallToyVO vo) throws Exception {
        return userMallDAO.getMallToyOneInfo(vo);
    }


    //////////// 장바구니 /////////////////////////////////////////

    // 카트 리스트 나타내기
    @Override
    public List<CartListVO> selectCartList(CartListVO vo) throws Exception{
        return userMallDAO.selectCartList(vo);
    }

    @Override
    public OrderVO selectCartListWayBill(OrderVO vo) throws Exception {
        return userMallDAO.selectCartListWayBill(vo);
    }

    // 카트에 담기
    @Override
    public void insertCartList(CartListVO vo) throws Exception {
        userMallDAO.insertCartList(vo);
    }

    // 결제후 디비에 결제 정보 저장
    @Override
    public void insertOrderCartList(OrderVO vo) throws Exception {
        userMallDAO.insertOrderCartList(vo);
    }
    // 결제시 카트에 수량 변경
    @Override
    public void updateCartListCount(CartListVO vo) throws Exception {
        userMallDAO.updateCartListCount(vo);
    }

    @Override
    public void updateMemberPoint(MemberOrderVO vo) throws Exception {
        userMallDAO.updateMemberPoint(vo);
    }

    //카트에서 물품 하나 삭제하기
    @Override
    public void deleteCartListOne(CartListVO vo) throws Exception {
        userMallDAO.deleteCartListOne(vo);
    }

    //카트에서 전부 삭제하기
    @Override
    public void deleteCartListAll(CartListVO vo) throws Exception {
        userMallDAO.deleteCartListAll(vo);
    }

    //////////// mypage mall order /////////////////////////////////////////

    //마이페이지 구매리스트
    @Override
    public List<OrderVO> myOrder(OrderVO vo) throws Exception{
        return userMallDAO.myOrder(vo);
    }

    //반품
    @Override
    public void updateOrder(OrderVO vo) throws Exception {
        userMallDAO.updateOrder(vo);
    }

    //교환
    @Override
    public void exchangeOrder(OrderVO vo) throws Exception {
        userMallDAO.exchangeOrder(vo);
    }
}
