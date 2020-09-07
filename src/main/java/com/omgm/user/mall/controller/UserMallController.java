package com.omgm.user.mall.controller;

import com.omgm.admin.common.beans.AdminVO;
import com.omgm.admin.mall.beans.MemberOrderVO;
import com.omgm.admin.mall.beans.OrderVO;
import com.omgm.member.beans.MemberVO;
import com.omgm.user.mall.beans.CartListVO;
import com.omgm.user.mall.beans.PageNavigatorMall;
import com.omgm.user.mall.beans.UserMallFeedVO;
import com.omgm.user.mall.beans.UserMallToyVO;
import com.omgm.user.mall.service.UserMallService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
public class UserMallController {

    @Autowired
    UserMallService userMallService;

    /////////// 배송현왕 /////////////////////////////////////////////
    // 배송 현황 페이지
    @RequestMapping("/deliveryStatus.do")
    public ModelAndView deliveryStatus(AdminVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/sales/deliveryStatus");
        return mav;
    }

    //배송현왕 값 불러오기
    @ResponseBody
    @RequestMapping("/selectCartListWayBill.do")
    public OrderVO selectCartListWayBill(@RequestBody OrderVO vo) throws Exception {
        System.out.println("test1");
        vo = userMallService.selectCartListWayBill(vo);
        System.out.println(vo.getOrder_state());
        return vo;
    }

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
    @RequestMapping("/selectCartList.do")
    public ModelAndView cartList(CartListVO vo) throws Exception{
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/sales/cart");
        mav.addObject("cartList", userMallService.selectCartList(vo));
        return mav;
    }

    // 장바구니에 담기(테이블에저장)
    @RequestMapping("/insertCartList.do")
    public ModelAndView insertCartList(CartListVO vo) throws Exception {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("redirect: /getMallFeedList.do");
        userMallService.insertCartList(vo);
        return mav;
    }

    // 장바구니에서 하나 삭제하기(테이블에서도 삭제)
    @RequestMapping("/deleteCartListOne.do")
    public ModelAndView deleteCartListOne(CartListVO vo, HttpServletRequest request) throws Exception {
        ModelAndView mav = new ModelAndView();
        String id = request.getParameter("cartList_id");
        mav.setViewName("redirect: /selectCartList.do?cartList_id="+id);
        userMallService.deleteCartListOne(vo);
        return mav;
    }

    // 장바구니에서 결제페이지로 이동
    @RequestMapping("/paymentCartList.do")
    public ModelAndView paymentCartList(CartListVO vo) throws Exception {
        ModelAndView mav = new ModelAndView();
//        userMallService.updateCartListCount(vo);
        mav.setViewName("/sales/buyImmediatelyCart");
        mav.addObject("cartList",userMallService.selectCartList(vo));
        return mav;
    }

    // 장바구니에서 결제페이지로 이동
    @ResponseBody
    @RequestMapping("/updateCartListCount.do")
    public CartListVO updateCartListCount(@RequestBody CartListVO vo) throws Exception {
        System.out.println(vo.getCartList_code());
        System.out.println(vo.getCartList_count());
        System.out.println(vo.getCartList_id());
        userMallService.updateCartListCount(vo);
        return vo;
    }

    // 결제후 디비에 결제기록 저장 및 장바구니 삭제
    @ResponseBody
    @RequestMapping("/insertOrderCartList.do")
    public OrderVO insertOrderCartList(@RequestBody OrderVO vo) throws Exception{
        userMallService.insertOrderCartList(vo);
        MemberOrderVO vo1 = new MemberOrderVO();
        CartListVO vo2 = new CartListVO();
        System.out.println("test1");

        vo1.setId(vo.getOrder_id());
        vo1.setPoint(vo.getOrder_point());
        vo2.setCartList_id(vo.getOrder_id());

        userMallService.updateMemberPoint(vo1);
        userMallService.deleteCartListAll(vo2);
        return vo;
    }
    //결제후 디비에 결제기록 저장 (즉시 결제)
    @ResponseBody
    @RequestMapping("/insertOrderImmediately.do")
    public OrderVO insertOrderImmediately(@RequestBody OrderVO vo) throws Exception{
        userMallService.insertOrderCartList(vo);
        MemberOrderVO vo1 = new MemberOrderVO();

        vo1.setId(vo.getOrder_id());
        vo1.setPoint(vo.getOrder_point());
        // 수량 감소

        userMallService.updateMemberPoint(vo1);

        return vo;
    }

    // 결제시 사료 수량 감소
    @ResponseBody
    @RequestMapping("/feedStockDecrease.do")
    public UserMallFeedVO feedStockDecrease(@RequestBody UserMallFeedVO vo) throws Exception {
        userMallService.feedStockDecrease(vo);
        System.out.println("test");
        return vo;
    }
    // 결제시 장난감 수량 감소
    @ResponseBody
    @RequestMapping("/toyStockDecrease.do")
    public UserMallToyVO toyStockDecrease(@RequestBody UserMallToyVO vo) throws Exception {
        userMallService.toyStockDecrease(vo);
        return vo;
    }


    ///////////////////// 몰 주문내역(마이페이지) ///////////////////////////////////

    @RequestMapping("/myOrder.do")
    public ModelAndView myOrder(OrderVO vo) throws Exception{
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/sales/orderList");
        mav.addObject("myOrder", userMallService.myOrder(vo));
        return mav;
    }

//    @RequestMapping("/myReservation.do")
//    public ModelAndView myReservation(OrderVO vo) throws Exception{
//        ModelAndView mav = new ModelAndView();
//        mav.setViewName("/sales/myReservation");
////        mav.addObject("myReservation", userMallService.myReservation(vo));
//        return mav;
//    }

}


