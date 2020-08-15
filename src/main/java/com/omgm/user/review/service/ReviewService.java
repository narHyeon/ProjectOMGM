package com.omgm.user.review.service;

import com.omgm.user.review.beans.PageNavigator;
import com.omgm.user.review.beans.ReviewReplyVO;
import com.omgm.user.review.beans.ReviewVO;
import java.util.List;

public interface ReviewService {
    void insertReviewBoard(ReviewVO vo);
    ReviewVO getReview(ReviewVO vo);
    List<ReviewReplyVO> getReviewReply(ReviewReplyVO rvo);
    void addReview(ReviewReplyVO rvo);
    List<ReviewVO> getReviewList(ReviewVO vo, PageNavigator navi);
    int selectCount();
    void addCount(ReviewVO vo);


    // RoomService_M
    List<ReviewVO> getListRoom(ReviewVO vo,PageNavigator navi);
}

