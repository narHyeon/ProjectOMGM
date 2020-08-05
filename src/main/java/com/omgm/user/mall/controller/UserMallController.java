package com.omgm.user.mall.controller;

import com.omgm.user.mall.beans.UserMallFeedVO;
import com.omgm.user.mall.service.UserMallService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserMallController {
    @Autowired
    UserMallService UserMallService;

    //MallList
    @RequestMapping("/getMallFeedList.do")
    public ModelAndView getMallFeedList(UserMallFeedVO vo) throws Exception{
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/sales/productList");
        mav.addObject("FeedList", UserMallService.getMallFeedList());
        mav.addObject("ToyList", UserMallService.getMallToyList());
        return mav;
    }

    //MallList로 이동
    @RequestMapping("/productClick.do")
    public ModelAndView productClick(UserMallFeedVO vo) throws Exception{
        ModelAndView mav = new ModelAndView();
        mav.setViewName("redirect:/toy.do");

        return mav;
    }

}


