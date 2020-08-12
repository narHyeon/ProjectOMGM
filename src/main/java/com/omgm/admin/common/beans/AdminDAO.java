package com.omgm.admin.common.beans;

import com.omgm.user.review.beans.PageNavigator;
import com.omgm.user.review.beans.ReviewVO;
import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("adminDAO")
public class AdminDAO {

    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    public List<ReviewVO> getReviewList(ReviewVO vo, PageNavigator navi) {
        System.out.println("---> MyBatis로 getReviewList() 기능 처리");
        RowBounds rb = new RowBounds(navi.getStartRecord(),navi.getCountPerPage());
        return sqlSessionTemplate.selectList("ReviewDAO.getReviewList", vo, rb);
    }

    public int selectCount(){
        return sqlSessionTemplate.selectOne("ReviewDAO.selectCount");
    }
}
