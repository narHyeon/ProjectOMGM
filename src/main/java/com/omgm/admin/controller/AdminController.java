package com.omgm.admin.controller;

import com.omgm.user.board.BoardVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminController {

    // 관리자 메인 불러오기
    @RequestMapping("/adminMain.mdo")
    public ModelAndView main(BoardVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/main");
        return mav;
    }

}
