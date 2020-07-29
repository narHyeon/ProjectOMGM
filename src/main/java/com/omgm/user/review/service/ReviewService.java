package com.omgm.user.review.service;

import com.omgm.user.review.bean.ReviewVO;
import org.springframework.stereotype.Service;

import java.util.List;

public interface ReviewService {
    List<ReviewVO> getReviewList(ReviewVO vo);
}
