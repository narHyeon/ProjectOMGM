package com.omgm.controller;

import com.omgm.board.BoardService;
import com.omgm.board.BoardVO;
import com.omgm.review.ReviewVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class OneController {
    @Autowired
    private BoardService boardService;

    // 게시판 데이터 불러오기
    @RequestMapping("/getBoardList.do")
    public ModelAndView getboardList(BoardVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/getBoardList");
        mav.addObject("boardList", boardService.getBoardList(vo));
        return mav;
    }

    // JSON 데이터 보내기
    @ResponseBody
    @RequestMapping(value = "/data.do" , method = RequestMethod.GET)
    public List<BoardVO> data(BoardVO vo) {
        List<BoardVO> list = boardService.getBoardList(vo);
        System.out.println(list);
        return list;
    }

    // JSON MAP 데이터 보내기
    @ResponseBody
    @RequestMapping(value = "/map.do", method = RequestMethod.GET)
    public Map<String,BoardVO> map(BoardVO vo) {
        Map<String,BoardVO> map = new HashMap<String, BoardVO>();
        map.put("vo",vo);
        return map;
    }

    // JSON DATA 받기
    @RequestMapping(value = "/test.do", method = RequestMethod.POST)
    public ModelAndView test(@RequestBody BoardVO vo) {
        System.out.println("Object: " + vo.toString());
        System.out.println("Writer: " + vo.getWriter());
        System.out.println("Title: " + vo.getTitle());
        System.out.println("Cnt: " + vo.getCnt());
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/getBoardList");
        return mav;
    }

    // method PUT
    @RequestMapping(value="/put.do")
    public ModelAndView put(@RequestBody String str) {
        System.out.println(str);
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/getBoardList");
        return mav;
    }

    // 메인화면
    @RequestMapping(value="/main.do")
    public ModelAndView put(BoardVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/main");
        return mav;
    }

    // 게시판 이동
    @RequestMapping("/board.do")
    public ModelAndView board(BoardVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/board");
        return mav;
    }

    // 약관
    @RequestMapping(value="/term.do")
    public ModelAndView term(BoardVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("term/siteHelp");
        mav.addObject("termTitle",vo);
        return mav;
    }

    // 유치원 소개 페이지 이동
    @RequestMapping(value="/kinderGarden.do")
    public ModelAndView kinderGarden(BoardVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/kinderGarden");
        return mav;
    }


    // 이용후기 글쓰기 페이지로 이동
    @RequestMapping(value="/review_write.do")
    public ModelAndView reviewWrite(BoardVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/review/review_write");
        return mav;
    }


    //이용후기 리스트 페이지 이동
    @RequestMapping(value="/reviewList_board.do")
    public ModelAndView reviewListBoard(BoardVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/review/reviewList_board");
        return mav;
    }

    // 이용후기 페이지 이동
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
