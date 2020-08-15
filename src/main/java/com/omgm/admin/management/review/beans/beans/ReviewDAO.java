package com.omgm.admin.management.review.beans.beans;

import com.omgm.user.catcarelog.beans.CatCareLogVO;
import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ReviewDAO {

    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    public List<ReviewVO> getReviewList(ReviewVO vo, PageNavigator navi) {
        RowBounds rb = new RowBounds(navi.getStartRecord(),navi.getCountPerPage());
        return sqlSessionTemplate.selectList("ReviewDAO.getReviewList", vo, rb);
    }
    public void insertReviewBoard(ReviewVO vo) {
        sqlSessionTemplate.insert("ReviewDAO.insertBoard", vo);
    }
    public ReviewVO getReview(ReviewVO vo) {
        return sqlSessionTemplate.selectOne("ReviewDAO.getReview", vo);
    }

    public void addReviewReply(ReviewReplyVO rvo) {
        sqlSessionTemplate.selectOne("ReviewDAO.addReviewReply", rvo);
    }

    public List<ReviewReplyVO> getReviewReply(ReviewReplyVO rvo) {
        return sqlSessionTemplate.selectList("ReviewDAO.getReviewReply", rvo);
    }

    public int selectCount(){
        return sqlSessionTemplate.selectOne("ReviewDAO.selectCount");
    }

    public void updateCatCareLog(CatCareLogVO vo) {
        sqlSessionTemplate.update("CatCareLogDAO.updateCatCareLog",vo);
    }

    //RoomDAO_M
    public List<ReviewVO> getListRoom(ReviewVO vo, PageNavigator navi) {
        RowBounds rb = new RowBounds(navi.getStartRecord(),navi.getCountPerPage());
        return sqlSessionTemplate.selectList("ReviewDAO.selectListROOM", vo, rb);
    }

    public void addCount(ReviewVO vo) {
        sqlSessionTemplate.update("ReviewDAO.addCount",vo);
    }

    public void updateReview(ReviewVO vo) {
        sqlSessionTemplate.update("ReviewDAO.updateReview",vo);
    }

    public void deleteReview(ReviewVO vo) {
        sqlSessionTemplate.delete("ReviewDAO.deleteReview",vo);
    }

}
