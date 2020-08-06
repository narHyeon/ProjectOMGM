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


    ///////////// 장난감 관련 서비스 임플 ////////////////////////////
    @Override
    public List<UserMallToyVO> getMallToyList(UserMallToyVO vo, PageNavigatorMall navi) throws Exception {
        return userMallDAO.getMallToyList(vo, navi);
    }
}
