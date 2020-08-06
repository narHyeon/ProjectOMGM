package com.omgm.admin.administration.review.controller;

import com.omgm.user.review.beans.PageNavigator;
import com.omgm.user.review.beans.ReviewVO;
import com.omgm.user.review.service.ReviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class reviewController {

    //이용후기 리스트 페이지 이동
    @RequestMapping(value="/reviewListBoard.mdo")
    public ModelAndView reviewListBoard(ReviewVO vo, @RequestParam(value="page", defaultValue = "1") int page ) {
        ModelAndView mav = new ModelAndView();

        int COUNTPERPAGE = 9; // 페이지당 2개의 글
        int PAGEPERGROUP = 5; // 페이지 그룹당 3개의 페이지

//        PageNavigator navi = new PageNavigator(COUNTPERPAGE, PAGEPERGROUP, page, reviewService.selectCount());
        mav.setViewName("/administration/review/reviewListBoard");
//        mav.addObject("reviewList",reviewService.getReviewList(vo, navi));
//        mav.addObject("navi",navi);
        return mav;
    }
}
