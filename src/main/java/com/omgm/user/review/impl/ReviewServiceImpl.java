package com.omgm.user.review.impl;

import com.omgm.user.review.beans.ReviewDAO;
import com.omgm.user.review.beans.ReviewReplyVO;
import com.omgm.user.review.beans.ReviewVO;
import com.omgm.user.review.service.ReviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("reviewService")
public class ReviewServiceImpl implements ReviewService {

    @Autowired
    ReviewDAO reviewDAO;

    @Override
    public ReviewVO getReview(ReviewVO vo) {
        return reviewDAO.getReview(vo);
    }

    @Override
    public void addReview(ReviewReplyVO rvo) {
        reviewDAO.addReviewReply(rvo);
    }

    @Override
    public List<ReviewVO> getReviewList(ReviewVO vo) {
        return reviewDAO.getReviewList(vo);
    }
}
