package com.omgm.user.mall.controller;

import com.omgm.admin.mall.beans.MallToyVO;
import com.omgm.admin.mall.service.MallService;
import com.omgm.user.mall.beans.UserMallFeedVO;
import com.omgm.user.mall.beans.UserMallToyVO;
import com.omgm.user.mall.service.UserMallService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.io.File;

@Controller
public class UserMallController {
    @Autowired
    UserMallService UserMallService;

    @RequestMapping("/getMallFeedList.do")
    public ModelAndView getMallFeedList(UserMallFeedVO vo) throws Exception{
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/sales/productList");
        mav.addObject("FeedList", UserMallService.getMallFeedList());
        return mav;
    }
}


