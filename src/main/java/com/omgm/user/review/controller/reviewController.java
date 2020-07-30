package com.omgm.user.review.controller;

import com.omgm.user.review.beans.ReviewReplyVO;
import com.omgm.user.review.beans.ReviewVO;
import com.omgm.user.review.service.ReviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class reviewController {

    @Autowired
    private ReviewService reviewService;

    // 이용후기 글쓰기 페이지로 이동
    @RequestMapping(value="/reviewWrite.do")
    public ModelAndView reviewWrite(ReviewVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/review/reviewWrite");
        return mav;
    }

    //이용후기 리스트 페이지 이동
    @RequestMapping(value="/reviewListBoard.do")
    public ModelAndView reviewListBoard(ReviewVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/review/reviewListBoard");
        mav.addObject("reviewList",reviewService.getReviewList(vo));
        return mav;
    }

    // 이용후기 본문 페이지 이동
    @RequestMapping(value="/reviewContent.do")
    public ModelAndView reviewContent(ReviewVO vo, ReviewReplyVO rvo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/review/reviewContent");
        vo.setSeq(6);
        List<ReviewReplyVO> list = reviewService.getReviewReply(rvo);
        System.out.println("리뷰 받고 테스트");
        for(ReviewReplyVO r : list) {
            System.out.println("찍자 : "+r.getId());
        }
        mav.addObject("review",reviewService.getReview(vo));
        mav.addObject("reply",reviewService.getReviewReply(rvo));
        return mav;
    }

    // 이용후기 댓글 주고받기
    @ResponseBody
    @RequestMapping(value = "/reviewContentReply.do")
    public ModelAndView map(@RequestBody ReviewReplyVO rvo) {
        ModelAndView mav = new ModelAndView();

        // DB INSERT Reply 작업
        reviewService.addReview(rvo); // 댓글 데이터베이스 넣기
        mav.setViewName("/review/reviewContent");
        return mav;
    }
}
