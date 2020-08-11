package com.omgm.admin.common.impl;

import com.omgm.admin.common.beans.AdminDAO;
import com.omgm.admin.common.service.AdminService;
import com.omgm.user.review.beans.PageNavigator;
import com.omgm.user.review.beans.ReviewVO;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("adminService")
public class AdminServiceImpl implements AdminService {

    @Resource(name="adminDAO")
    private AdminDAO adminDAO;

    @Override
    public List<ReviewVO> getReviewList(ReviewVO vo, PageNavigator navi) {
        return adminDAO.getReviewList(vo, navi);
    }

    @Override
    public int selectCount() {
        return adminDAO.selectCount();
    }
}
