package com.omgm.admin.management.review.impl;

import com.omgm.admin.management.review.beans.ReviewDAO;
import com.omgm.admin.management.review.service.ReviewService;
import com.omgm.user.catcarelog.beans.CatCareLogDAO;
import com.omgm.user.review.beans.PageNavigator;
import com.omgm.user.review.beans.ReviewReplyVO;
import com.omgm.user.review.beans.ReviewVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service("reviewService")
public class ReviewServiceImpl implements ReviewService {

    @Autowired
    ReviewDAO reviewDAO;
    CatCareLogDAO catCareLogDAO;

    @Override
    public void insertReviewBoard(ReviewVO vo) {
        reviewDAO.insertReviewBoard(vo);
    }

    @Override
    public ReviewVO getReview(ReviewVO vo) {
        return reviewDAO.getReview(vo);
    }

    @Override
    public List<ReviewReplyVO> getReviewReply(ReviewReplyVO rvo) {
        return reviewDAO.getReviewReply(rvo);
    }

    @Override
    public void addReview(ReviewReplyVO rvo) {
        reviewDAO.addReviewReply(rvo);
    }

    @Override
    public List<ReviewVO> getReviewList(ReviewVO vo, PageNavigator navi) {
        return reviewDAO.getReviewList(vo, navi);
    }

    @Override
    public int selectCount() {
        return reviewDAO.selectCount();
    }

    @Override
    public void addCount(ReviewVO vo) {
        reviewDAO.addCount(vo);
    }

    @Override
    public void updateReview(ReviewVO vo) {
        reviewDAO.updateReview(vo);
    }

    @Override
    public void deleteReview(ReviewVO vo) {
        reviewDAO.deleteReview(vo);
    }


    //RoomServiceImpl_m
    @Override
    public List<ReviewVO> getListRoom(ReviewVO vo, PageNavigator navi) {

        List<ReviewVO> roomList = reviewDAO.getListRoom(vo,navi);
        System.out.println(roomList);
        for (int j = 0; j < roomList.size(); j++) {
            ReviewVO room = roomList.get(j);
            String content = room.getContent();
            String[] tags = content.split("<|>");
            ArrayList<String> list = new ArrayList<String>();
            ArrayList<String> list2 = new ArrayList<String>();
            for(String tag : tags) {
                if (tag.contains("img src=")) {
                    list.add(tag);
                }
            }
            for (int i = 0; i < list.size(); i++) {
                String [] tags2 = list.get(i).split("\"");
                for(String tag : tags2) {
                    if (tag.contains("data:image")) {
                        list2.add(tag);
                    }
                }
            }
            room.setImgRef(list2.get(0));
        }
        return roomList;
    }


}
