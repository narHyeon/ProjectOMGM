package com.omgm.admin.mall.controller;

import com.omgm.admin.mall.beans.*;
import com.omgm.admin.mall.service.MallService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.io.File;

@Controller
public class MallController {

    @Autowired
    MallService mallService;


    // 파일 업로드 관련 파일 이름 변수 선언
    String fileName;
    String fileName01;
//    String fileName02;
//    String fileName03;

    /////////   장난감 관련 설정   ///////////////////////////////////////////////////////////////
    //정산페이지테스트 이동
    @RequestMapping("/calculateTest.mdo")
    public ModelAndView calculateTest() throws Exception {
        ModelAndView mav = new ModelAndView();
//        mallService.expirationFeed(vo);
        mav.setViewName("/calculate/calculateTest");
        return mav;
    }

    // 장난감상품 상세히 불러오기
        @RequestMapping("/productDeleteUpdate.mdo")
        public ModelAndView productDeleteUpdate(MallToyVO vo) throws Exception {
            ModelAndView mav = new ModelAndView();
            mav.setViewName("mall/productDeleteUpdate");
            mav.addObject("mallToyOne",mallService.getMallToyOne(vo));
            return mav;
        }

        //장난감 등록 정보 수정
        @RequestMapping("/updateMallToy.mdo")
        public ModelAndView updateMallToy(MallToyVO vo) throws Exception {
            ModelAndView mav = new ModelAndView();

            MultipartFile update_uploadFile = vo.getUpdate_uploadFile();
            if(!update_uploadFile.isEmpty()) {
                String fileName02 = update_uploadFile.getOriginalFilename();
                update_uploadFile.transferTo(new File("C:\\Users\\YongSun Jang\\Desktop\\메인 프로젝트\\코딩\\mainProject\\src\\main\\webapp\\resources\\img\\product\\" + fileName));
                vo.setToy_img(fileName02);
            }


            mallService.updateMallToy(vo);
            mav.setViewName("redirect:/productInquiryToy.mdo");
            return mav;
        }
        // 장난감 등록 컨트롤러
    @RequestMapping("/insertMallToy.mdo")
    public ModelAndView insertMallToy(MallToyVO vo) throws Exception {

        ModelAndView mav = new ModelAndView();
        MultipartFile uploadFile = vo.getUploadFile();

            if(!uploadFile.isEmpty()) {
                this.fileName = uploadFile.getOriginalFilename();
                uploadFile.transferTo(new File("C:\\Users\\YongSun Jang\\Desktop\\메인 프로젝트\\코딩\\mainProject\\src\\main\\webapp\\resources\\img\\product\\" + fileName));
            }else{
                this.fileName = "cat.jpg";
            }

        vo.setToy_img(fileName);
        mallService.insertMallToy(vo);
        mav.setViewName("redirect:/productInquiryToy.mdo");
        return mav;
    }
    // 장난감 목록 삭제 컨트롤러
    @RequestMapping("/deleteMallToy.mdo")
    public ModelAndView deleteMallToy(MallToyVO vo) throws Exception {
            ModelAndView mav = new ModelAndView();
            mallService.deleteMallToy(vo);
            mav.setViewName("redirect:/productInquiryToy.mdo");
            return mav;
    }
    // 장난감 등록된 목록 나열 컨트롤러
    @RequestMapping("/productInquiryToy.mdo")
    public ModelAndView getMallToyList(MallToyVO vo) throws Exception{
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/mall/productInquiry");
        mav.addObject("toyList", mallService.getMallToyList());

        return mav;
    }



    ////////////////   feed 관련 설정   /////////////////////////////////////////////////////////////////
    // 사료 관련 상세 정보 페이지 컨트롤러
    @RequestMapping("/productDeleteUpdateFeed.mdo")
    public ModelAndView productDeleteUpdateFeed(MallFeedVO vo) throws Exception {
        ModelAndView mav = new ModelAndView();

        mav.addObject("mallFeedOne",mallService.getMallFeedOne(vo));
        mav.setViewName("mall/productDeleteUpdateFeed");
        return mav;
    }

    // 사료 관련 등록 컨트롤러
    @RequestMapping("/insertMallFeed.mdo")
    public ModelAndView insertMallFeed(MallFeedVO vo) throws Exception {
        ModelAndView mav = new ModelAndView();
        MultipartFile feed_uploadFile = vo.getFeed_uploadFile();
        if(!feed_uploadFile.isEmpty()) {
            this.fileName01 = feed_uploadFile.getOriginalFilename();
            feed_uploadFile.transferTo(new File("C:\\Users\\YongSun Jang\\Desktop\\메인 프로젝트\\코딩\\mainProject\\src\\main\\webapp\\resources\\img\\product\\" + fileName01));
        }else{
            this.fileName01 = "cat.jpg";
        }
        vo.setFeed_img(fileName01);
        mallService.insertMallFeed(vo);
        mav.setViewName("redirect:/productInquiryFeed.mdo");
        return mav;
    }

    // 사료 목록 삭제 컨트롤러
    @RequestMapping("/deleteMallFeed.mdo")
    public ModelAndView deleteMallFeed(MallFeedVO vo) throws Exception {
        ModelAndView mav = new ModelAndView();
        mallService.deleteMallFeed(vo);
        mav.setViewName("redirect:/productInquiryFeed.mdo");
        return mav;
    }

    // 사료 등록 리스트 나열 컨트롤러
    @RequestMapping("/productInquiryFeed.mdo")
    public ModelAndView getMallFeedList(MallFeedVO vo) throws Exception{
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/mall/productInquiryFeed");
        mav.addObject("feedList", mallService.getMallFeedList());
        return mav;
    }

    // 사료 등록정보 수정 컨트롤러
    @RequestMapping("/updateMallFeed.mdo")
    public ModelAndView updateMallFeed(MallFeedVO vo) throws Exception {
        ModelAndView mav = new ModelAndView();

        MultipartFile feed_update_uploadFile = vo.getFeed_update_uploadFile();
        if(!feed_update_uploadFile.isEmpty()) {
            String fileName03 = feed_update_uploadFile.getOriginalFilename();
            feed_update_uploadFile.transferTo(new File("C:\\Users\\YongSun Jang\\Desktop\\메인 프로젝트\\코딩\\mainProject\\src\\main\\webapp\\resources\\img\\product\\" + fileName));
            vo.setFeed_img(fileName03);
        }


        mallService.updateMallFeed(vo);
        mav.setViewName("redirect:/productInquiryFeed.mdo");
        return mav;
    }

// ########################################################################################


//    //주문목록삭제(상세)
//    @RequestMapping("/productStatusDelete.mdo")
//    public ModelAndView productStatusDelete(MallOrderVO vo) throws Exception {
//        ModelAndView mav = new ModelAndView();
//        mallService.deleteMallOrder(vo);
//        mav.setViewName("redirect:/productStatus.mdo");
//        return mav;
//    }
//
//    //주문목록불러오기
//    @RequestMapping("/productOrder.mdo")
//    public ModelAndView productOrder(OrderVO vo,MallOrderVO vo1) throws Exception{
//        ModelAndView mav = new ModelAndView();
//        mav.setViewName("/mall/productOrder");
//        mav.addObject("order",mallService.getOrderList(vo));
//
//
//        vo.setOrder_no(8);
//        List<OrderVO> list = mallService.getMallOrderList(vo);
//        System.out.println(list);
//        mav.addObject("orderDetail",list);
//        return mav;
//    }
//
//    //주문상세목록 불러오기
//    @RequestMapping("/productOrderDetail.mdo")
//    public ModelAndView productOrderDetail(OrderVO vo,MallOrderVO vo1) throws Exception{
//        ModelAndView mav = new ModelAndView();
//        mallService.getMallOrderList(vo);
//        mav.setViewName("redirect:/productOrder.mdo");
//        return mav;
//    }
//
//    //주문목록삭제
//    @RequestMapping("/productOrderDelete.mdo")
//    public ModelAndView productOrderDelete(OrderVO vo) throws Exception {
//        ModelAndView mav = new ModelAndView();
//        System.out.println("삭제 실행");
//        mallService.deleteOrder(vo);
//        mav.setViewName("redirect:/productOrder.mdo");
//        return mav;
//    }



//    @RequestMapping("/productOrderDetail.mdo")
//    public ModelAndView productOrderDetail(OrderVO vo) {
//        ModelAndView mav = new ModelAndView();
//        mav.addObject("order",vo);
////        mav.addObject("orderDetail",list);
//        mav.setViewName("/mall/productOrder");
//        return mav;
//    }


    //주문목록 불러오기
    @RequestMapping("/productOrder.mdo")
    public ModelAndView productOrder(OrderVO vo) throws Exception{
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/mall/productOrder");
        mav.addObject("order", mallService.getOrderList());
        return mav;
    }

    //주문목록삭제
    @RequestMapping("/productOrderDelete.mdo")
    public ModelAndView productOrderDelete(OrderVO vo) throws Exception {
        ModelAndView mav = new ModelAndView();
        mallService.deleteOrder(vo);
        mav.setViewName("redirect:/productOrder.mdo");
        return mav;
    }

    // 주문상태(배송처리) 컨트롤러
    @ResponseBody
    @RequestMapping("/updateState.mdo")
    public int updateState(@RequestBody OrderVO vo) throws Exception {
        System.out.println(vo.getOrder_no());
        mallService.updateState(vo);
        return 0;
    }

    // 주문상태(배송완료) 컨트롤러
    @RequestMapping("/stateSuccess.mdo")
    public ModelAndView stateSuccess(OrderVO vo) throws Exception {
        ModelAndView mav = new ModelAndView();
        Thread.sleep(7000);
        mallService.stateSuccess(vo);
        mav.setViewName("redirect:/productOrder.mdo");
        return mav;
    }

    // 포인트 적립 불러오기
    @RequestMapping("/getMallPointList.mdo")
    public ModelAndView getMallPointList(MallOrderVO vo) throws Exception{
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/mall/point");
        mav.addObject("pointAdd", mallService.getMallPointList(vo));
        return mav;
    }

//    @ResponseBody
//    @RequestMapping("/insertOrderFeed.mdo")
//    public OrderVO insertOrderFeed(@RequestBody OrderVO vo) throws Exception{
//            mallService.insertOrderFeed(vo);
//            MemberOrderVO vo1 = new MemberOrderVO();
//        System.out.println("test1");
//
//        vo1.setId(vo.getOrder_id());
//        vo1.setPoint(vo.getOrder_point());
//
//            mallService.updateMemberPoint(vo1);
//
//            return vo;
//    }



}

