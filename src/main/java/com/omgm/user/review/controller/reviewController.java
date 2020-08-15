package com.omgm.user.review.controller;

import com.omgm.user.review.beans.PageNavigator;
import com.omgm.user.review.beans.ReviewReplyVO;
import com.omgm.user.review.beans.ReviewVO;
import com.omgm.user.review.service.ReviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.List;

@Controller
public class reviewController {

    @Autowired
    private ReviewService reviewService;
    private String save_folder;

    // 이용후기 글쓰기 페이지로 이동
    @RequestMapping(value="/reviewWrite.do")
    public ModelAndView reviewWrite(ReviewVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/review/reviewWrite");
        return mav;
    }

    //이용후기 리스트 페이지 이동
    @RequestMapping(value="/reviewListBoard.do", method = RequestMethod.GET)
    public ModelAndView reviewListBoard(ReviewVO vo, @RequestParam(value="page", defaultValue = "1") int page) {
        ModelAndView mav = new ModelAndView();
        int COUNTPERPAGE = 9; // 페이지당 2개의 글
        int PAGEPERGROUP = 5; // 페이지 그룹당 3개의 페이지

        PageNavigator navi = new PageNavigator(COUNTPERPAGE, PAGEPERGROUP, page, reviewService.selectCount());
        mav.setViewName("/review/reviewListBoard");
        List<ReviewVO> list = reviewService.getListRoom(vo, navi);
        mav.addObject("reviewList",list);
        mav.addObject("navi",navi);
        vo.setCnt(page);
        mav.addObject("page",vo);
        mav.setViewName("/review/reviewListBoard");
        return mav;
    }

    // 이용후기 본문 페이지 이동
    @RequestMapping(value="/reviewContent.do")
    public ModelAndView reviewContent(ReviewVO vo, ReviewReplyVO rvo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/review/reviewContent");
        rvo.setBoardSeq(vo.getSeq());

        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd : HH:mm");
        List<ReviewReplyVO> list = reviewService.getReviewReply(rvo);
        for(ReviewReplyVO li : list) li.setFormatDate(dateFormat.format(li.getRegDate()));

        reviewService.addCount(vo);
        vo = reviewService.getReview(vo);
        vo.setFormatDate(dateFormat.format(vo.getRegDate()));
        if(vo.getPrevDate() != null) vo.setFormatPrevDate(dateFormat.format(vo.getPrevDate()));
        if(vo.getNextDate() != null) vo.setFormatNextDate(dateFormat.format(vo.getNextDate()));

        mav.addObject("review",vo);
        mav.addObject("reply",list);
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

    //리뷰 게시판 입력하기
    @RequestMapping(value="/insertReviewBoard.do")
    public ModelAndView insertReviewBoard(ReviewVO vo) {
        ModelAndView mav = new ModelAndView();
        reviewService.insertReviewBoard(vo);

//        List<ReviewVO> list = reviewService.getListRoom(vo);
//
//        mav.addObject("roomList",list);
        mav.setViewName("redirect:/reviewListBoard.do");
        return mav;
    }
}
