package com.omgm.user.mall.service;

import com.omgm.user.mall.beans.UserMallFeedDAO;
import com.omgm.user.mall.beans.UserMallFeedVO;
import com.omgm.user.mall.beans.UserMallToyDAO;
import com.omgm.user.mall.beans.UserMallToyVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("UserMallService")
public class UserUserMallServiceImpl implements UserMallService {

    @Autowired
    UserMallFeedDAO UserMallFeedDAO;

    @Override
    public List<UserMallFeedVO> getMallFeedList() throws Exception {
        return UserMallFeedDAO.getMallFeedList();
    }

    @Autowired
    UserMallToyDAO UserMallToyDAO;
    @Override
    public List<UserMallToyVO> getMallToyList() throws Exception {
        return UserMallToyDAO.getMallToyList();
    }
}
