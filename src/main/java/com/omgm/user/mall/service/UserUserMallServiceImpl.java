package com.omgm.user.mall.service;

import com.omgm.user.mall.beans.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("UserMallService")
public class UserUserMallServiceImpl implements UserMallService {

    @Autowired
    UserMallDAO userMallDAO;

    ///////////// 사료 관련 서비스 임플 ////////////////////////////
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

}
