package com.omgm.user.review.impl;

import com.omgm.user.review.beans.PageNavigator;
import com.omgm.user.review.beans.ReviewDAO;
import com.omgm.user.review.beans.ReviewVO;
import com.omgm.user.review.service.ReviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("reviewService")
public class ReviewServiceImpl implements ReviewService {

    @Autowired
    ReviewDAO reviewDAO;

    @Override
    public List<ReviewVO> getReviewList(ReviewVO vo) {
        return reviewDAO.getReviewList(vo);
    }

}
