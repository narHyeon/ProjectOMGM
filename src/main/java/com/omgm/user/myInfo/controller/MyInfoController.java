package com.omgm.user.myInfo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MyInfoController {

    @RequestMapping("/myInfo.do")
    public ModelAndView myInfo(ModelAndView mav) {
        mav.setViewName("/newInfo/myInfo");
        return mav;
    }
}
