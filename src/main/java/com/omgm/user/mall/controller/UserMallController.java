package com.omgm.user.mall.controller;

import com.omgm.user.mall.beans.PageNavigatorMall;
import com.omgm.user.mall.beans.UserMallFeedVO;
import com.omgm.user.mall.beans.UserMallToyVO;
import com.omgm.user.mall.service.UserMallService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserMallController {

    @Autowired
    UserMallService userMallService;

    ////////////////////////// 사료 관련 컨트롤러 /////////////////////////
    //MallFeedList 사료(+ 페이징 처리 추가)
    @RequestMapping("/getMallFeedList.do")
    public ModelAndView getMallFeedList(UserMallFeedVO vo, @RequestParam(value="page", defaultValue = "1") int page) throws Exception{
        ModelAndView mav = new ModelAndView();
        int COUNTERPAGE = 8;
        int PAGEPERGROUP = 5;
        PageNavigatorMall navi = new PageNavigatorMall(COUNTERPAGE, PAGEPERGROUP, page, userMallService.selectCountMall());
        UserMallFeedVO vo1 = new UserMallFeedVO();
        vo1.setPage(page);
        mav.setViewName("/sales/productFeedList");
        mav.addObject("FeedList", userMallService.getMallFeedList(vo, navi));
        mav.addObject("navi", navi);
        mav.addObject("page", vo1);
        return mav;
    }

    //MallList로 이동
    @RequestMapping("/productClick.do")
    public ModelAndView productClick(UserMallFeedVO vo) throws Exception{
        ModelAndView mav = new ModelAndView();
        mav.setViewName("redirect:/toy.do");
        return mav;
    }

    ////////////////////////// 장난감 관련 컨트롤러 /////////////////////////
    //MallToyList 장난감(+ 페이징 처리 추가)
    @RequestMapping("/getMallToyList.do")
    public ModelAndView getMallToyList(UserMallToyVO vo, @RequestParam(value="page", defaultValue = "1") int page) throws Exception{
        ModelAndView mav = new ModelAndView();
        int COUNTERPAGE = 8;
        int PAGEPERGROUP = 5;
        PageNavigatorMall navi = new PageNavigatorMall(COUNTERPAGE, PAGEPERGROUP, page, userMallService.selectCountMall());
//        UserMallFeedVO vo1 = new UserMallFeedVO();
//        vo1.setPage(page);
        mav.setViewName("/sales/productToyList");
        mav.addObject("ToyList", userMallService.getMallToyList(vo, navi));
        mav.addObject("navi", navi);
//        mav.addObject("page", vo1);
        return mav;
    }
}


