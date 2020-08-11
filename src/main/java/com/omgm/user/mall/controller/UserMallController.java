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

import javax.servlet.http.HttpServletRequest;

@Controller
public class UserMallController {

    @Autowired
    UserMallService userMallService;

    ////////////////////////// 사료 관련 컨트롤러 /////////////////////////
    //MallFeedList 사료(+ 페이징 처리 추가)
    @RequestMapping("/getMallFeedList.do")
    public ModelAndView getMallFeedList(UserMallFeedVO vo, @RequestParam(value = "page", defaultValue = "1") int page) throws Exception {
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

    // 고객이 사료을 골랐을때 결제 페이지로 이동
    @RequestMapping("/getMallFeedOneInfoSales.do")
    public ModelAndView getMallFeedOneInfoSales(UserMallFeedVO vo) throws Exception {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/sales/feedSales");
        mav.addObject("feedList", userMallService.getMallFeedOneInfo(vo));
        return mav;
    }

    // 결제 눌렀을때 결제 페이지로 이동
    @RequestMapping("/getMallFeedOneInfoBuyImmediately.do")
    public ModelAndView getMallFeedOneInfoBuyImmediately(UserMallFeedVO vo) throws Exception {
        ModelAndView mav = new ModelAndView();

        mav.setViewName("/sales/buyImmediately");
        mav.addObject("feedInfo", userMallService.getMallFeedOneInfo(vo));

        return mav;
    }

    //MallList로 이동
    @RequestMapping("/productClick.do")
    public ModelAndView productClick(UserMallFeedVO vo) throws Exception {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("redirect:/toy.do");
        return mav;
    }
    



    ////////////////////////// 장난감 관련 컨트롤러 /////////////////////////
    //MallToyList 장난감(+ 페이징 처리 추가)
    @RequestMapping("/getMallToyList.do")
    public ModelAndView getMallToyList(UserMallToyVO vo, @RequestParam(value = "page", defaultValue = "1") int page) throws Exception{
        ModelAndView mav = new ModelAndView();
        int COUNTERPAGE = 8;
        int PAGEPERGROUP = 5;
        PageNavigatorMall navi = new PageNavigatorMall(COUNTERPAGE, PAGEPERGROUP, page, userMallService.selectCountToyMall());
        UserMallToyVO vo1 = new UserMallToyVO();
        vo1.setPage(page);
        mav.setViewName("/sales/productToyList");
        mav.addObject("ToyList", userMallService.getMallToyList(vo, navi));
        mav.addObject("navi", navi);
        mav.addObject("page", vo1);

        return mav;
    }

    // 고객이 장난감을 골랐을때 결제 페이지로 이동
    @RequestMapping("/getMallToyOneInfoSales.do")
    public ModelAndView getMallToyOneInfoSales(UserMallToyVO vo) throws Exception {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/sales/toySales");
        mav.addObject("toyList", userMallService.getMallToyOneInfo(vo));
        return mav;
    }

    // 즉시 결제 페이지로 이동
    @RequestMapping("/buyImmediately.do")
    public ModelAndView buyImmediately() throws Exception {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/sales/buyImmediately");
        return mav;
    }

    // (장난감) 결제 눌렀을때 결제 페이지로 이동
    @RequestMapping("/getMallToyOneInfoBuyImmediately.do")
    public ModelAndView getMallToyOneInfoBuyImmediately(UserMallToyVO vo) throws Exception {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/sales/buyImmediatelyToy");
        mav.addObject("toyInfo", userMallService.getMallToyOneInfo(vo));
        return mav;
    }

    ///////////////////// 카트 리스트 ///////////////////////////////////

    //장바구니 리스트 출력(미완성-현재는 사료리스트가 출력)
    @RequestMapping("/cartList.do")
    public ModelAndView cartList(UserMallFeedVO vo) throws Exception{
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/sales/cart");
        mav.addObject("FeedList1", userMallService.getMallFeedList(vo));
        return mav;
    }
}


