package com.omgm.user.review.service;

import com.omgm.user.review.beans.ReviewVO;

import java.util.List;

public interface ReviewService {
    List<ReviewVO> getReviewList(ReviewVO vo);
}
