package com.omgm.user.review.bean;

import com.omgm.user.board.BoardVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ReviewDAO {

    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    public List<ReviewVO> getReviewList(ReviewVO vo) {
        System.out.println("---> MyBatis로 getBoardList() 기능 처리");
        return sqlSessionTemplate.selectList("ReviewDAO.getReviewList", vo);
    }
}
