package com.omgm.member.controller;

import com.omgm.user.common.beans.CommonVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MemberController {
    @RequestMapping("/naverLogin.lo")
    public ModelAndView naverLogin(CommonVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/login");
        return mav;
    }

    @RequestMapping("/loginCallback.lo")
    public ModelAndView lobinVallback(CommonVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/loginCallback");
        return mav;
    }

    @RequestMapping("/sample.lo")
    public ModelAndView Sample(CommonVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/sample");
        return mav;
    }
}
