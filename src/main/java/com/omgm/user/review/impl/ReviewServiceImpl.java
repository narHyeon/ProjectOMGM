package com.omgm.user.review.impl;

import com.omgm.user.review.beans.PageNavigator;
import com.omgm.user.review.beans.ReviewDAO;
import com.omgm.user.review.beans.ReviewReplyVO;
import com.omgm.user.review.beans.ReviewVO;
import com.omgm.user.review.service.ReviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service("reviewService")
public class ReviewServiceImpl implements ReviewService {

    @Autowired
    ReviewDAO reviewDAO;

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

        List<ReviewVO> roomList = reviewDAO.getReviewList(vo,navi);
        for (int j = 0; j < roomList.size(); j++) {
            ReviewVO room = roomList.get(j);
            String content = room.getContent();
            String[] tags = content.split("<|>");
            ArrayList<String> list = new ArrayList<String>();
            ArrayList<String> list2 = new ArrayList<String>();
            for(String tag : tags) {
                if (tag.contains("img src=")) {
                    list.add(tag);
                    System.out.println("1"+tag);
                }
            }
            for (int i = 0; i < list.size(); i++) {
                String [] tags2 = list.get(i).split("\"");
                for(String tag : tags2) {
                    if (tag.contains("data:image")) {
                        list2.add(tag);
                        System.out.println("2"+tag);
                    }
                }
            }
            room.setImgRef(list2.get(0));
            System.out.println("3"+list2.get(0));

        }
        return roomList;
    }



    @Override
    public int selectCount() {
        return reviewDAO.selectCount();
    }



//    //RoomServiceImpl_m
//    @Override
//    public List<ReviewVO> getListRoom(ReviewVO vo,PageNavigator navi) {
//
//        List<ReviewVO> roomList = reviewDAO.getListRoom(vo,navi);
//        for (int j = 0; j < roomList.size(); j++) {
//            ReviewVO room = roomList.get(j);
//            String content = room.getContent();
//            String[] tags = content.split("<|>");
//            ArrayList<String> list = new ArrayList<String>();
//            ArrayList<String> list2 = new ArrayList<String>();
//            for(String tag : tags) {
//                if (tag.contains("img src=")) {
//                    list.add(tag);
//                    System.out.println("1"+tag);
//                }
//            }
//            for (int i = 0; i < list.size(); i++) {
//                String [] tags2 = list.get(i).split("\"");
//                for(String tag : tags2) {
//                    if (tag.contains("data:image")) {
//                        list2.add(tag);
//                        System.out.println("2"+tag);
//                    }
//                }
//            }
//            room.setImgRef(list2.get(0));
//            System.out.println("3"+list2.get(0));
//
//        }
//        return roomList;
//    }


}
