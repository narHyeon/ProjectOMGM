package com.omgm.user.review.controller;

import com.omgm.user.board.BoardService;
import com.omgm.user.board.BoardVO;
import com.omgm.user.review.bean.ReviewVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class reviewController {

    @Autowired
    private BoardService boardService;

    // 이용후기 글쓰기 페이지로 이동
    @RequestMapping(value="/reviewWrite.do")
    public ModelAndView reviewWrite(BoardVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/review/reviewWrite");
        return mav;
    }

    //이용후기 리스트 페이지 이동
    @RequestMapping(value="/reviewListBoard.do")
    public ModelAndView reviewListBoard(BoardVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.addObject("board",boardService.getBoard(vo));
        mav.setViewName("/review/reviewListBoard");
        return mav;
    }

    // 이용후기 본문 페이지 이동
    @RequestMapping(value="/reviewContent.do")
    public ModelAndView reviewContent(BoardVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/review/reviewContent");
        return mav;
    }

    // 이용후기 댓글 주고받기
    @ResponseBody
    @RequestMapping(value = "/reviewContentReply.do")
    public ModelAndView map(@RequestBody ReviewVO vo) {
        ModelAndView mav = new ModelAndView();

        // DB INSERT Reply 작업
        System.out.println(vo.getWriter());
        System.out.println(vo.getPass());
        System.out.println(vo.getContent());
        mav.setViewName("/review/reviewContent");
        return mav;
    }
}
