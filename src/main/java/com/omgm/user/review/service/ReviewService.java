package com.omgm.user.review.service;

import com.omgm.user.review.beans.ReviewReplyVO;
import com.omgm.user.review.beans.ReviewVO;

import java.util.List;

public interface ReviewService {
    ReviewVO getReview(ReviewVO vo);
    List<ReviewReplyVO> getReviewReply(ReviewReplyVO rvo);
    void addReview(ReviewReplyVO rvo);
    List<ReviewVO> getReviewList(ReviewVO vo);
}
