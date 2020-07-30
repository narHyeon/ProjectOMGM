package com.omgm.user.review.beans;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ReviewDAO {

    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    public List<ReviewVO> getReviewList(ReviewVO vo) {
        System.out.println("---> MyBatis로 getReviewList() 기능 처리");
        return sqlSessionTemplate.selectList("ReviewDAO.getReviewList", vo);
    }

    public ReviewVO getReview(ReviewVO vo) {
        System.out.println("---> MyBatis로 getReview() 기능 처리");
        return sqlSessionTemplate.selectOne("ReviewDAO.getReview", vo);
    }

    public void addReviewReply(ReviewReplyVO rvo) {
        System.out.println("---> MyBatis로 addReviewReply() 기능 처리");
        sqlSessionTemplate.selectOne("ReviewDAO.addReviewReply", rvo);
    }

    public List<ReviewReplyVO> getReviewReply(ReviewReplyVO rvo) {
        System.out.println("---> MyBatis로 getReviewReply() 기능 처리");
        return sqlSessionTemplate.selectList("ReviewDAO.getReviewReply", rvo);
    }
}
