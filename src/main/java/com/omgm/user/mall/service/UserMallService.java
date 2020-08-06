package com.omgm.user.mall.service;

import com.omgm.admin.mall.beans.MallOrderVO;
import com.omgm.user.mall.beans.PageNavigatorMall;
import com.omgm.user.mall.beans.UserMallFeedVO;
import com.omgm.user.mall.beans.UserMallToyVO;

import java.util.List;


public interface UserMallService {

    /////////////// 사료 관련 서비스 //////////////////////
    //사료 상품 나열
    public List<UserMallFeedVO> getMallFeedList(UserMallFeedVO vo, PageNavigatorMall navi) throws Exception;

    // 사료 갯수
    int selectCountMall();

    /////////////// 장난감 관련 서비스 //////////////////////
    // 장난감 상품 나열
    public List<UserMallToyVO> getMallToyList() throws Exception;

}
