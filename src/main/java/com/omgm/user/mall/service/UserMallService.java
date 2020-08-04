package com.omgm.user.mall.service;

import com.omgm.admin.mall.beans.MallOrderVO;
import com.omgm.user.mall.beans.UserMallFeedVO;
import com.omgm.user.mall.beans.UserMallToyVO;

import java.util.List;


public interface UserMallService {

    List<UserMallFeedVO> getMallFeedList() throws Exception;


}
