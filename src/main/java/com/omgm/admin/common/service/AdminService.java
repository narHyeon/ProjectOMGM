package com.omgm.admin.common.service;

import com.omgm.user.review.beans.PageNavigator;
import com.omgm.user.review.beans.ReviewVO;

import java.util.List;

public interface AdminService {
    List<ReviewVO> getReviewList(ReviewVO vo, PageNavigator navi);
    int selectCount();
}
