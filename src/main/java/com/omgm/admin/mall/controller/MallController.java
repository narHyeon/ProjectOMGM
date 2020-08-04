package com.omgm.admin.mall.controller;

import com.omgm.admin.mall.beans.MallFeedVO;
import com.omgm.admin.mall.beans.MallToyVO;
import com.omgm.admin.mall.service.MallService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;

@Controller
public class MallController {

    @Autowired
    MallService mallService;

    String fileName;
    String fileName01;

    @RequestMapping("/insertMallToy.mdo")
    public ModelAndView insertMallToy(MallToyVO vo) throws Exception {

        ModelAndView mav = new ModelAndView();
        MultipartFile uploadFile = vo.getUploadFile();
        if(!uploadFile.isEmpty()) {
            this.fileName = uploadFile.getOriginalFilename();
            uploadFile.transferTo(new File("C:\\Users\\YongSun Jang\\Desktop\\메인 프로젝트\\코딩\\mainProject\\src\\main\\webapp\\resources\\img\\product\\" + fileName));
        }
        vo.setToy_img(fileName);
        mallService.insertMallToy(vo);
        mav.setViewName("redirect:/productInquiryToy.mdo");
        return mav;
    }

    @RequestMapping("/productInquiryToy.mdo")
    public ModelAndView getMallToyList(MallToyVO vo) throws Exception{
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/mall/productInquiry");
        mav.addObject("toyList", mallService.getMallToyList());

        return mav;
    }
// //////////////   feed 관련 설정   /////////////////////////////////////////////////////////////////
    @RequestMapping("/insertMallFeed.mdo")
    public ModelAndView insertMallFeed(MallFeedVO vo) throws Exception {
        ModelAndView mav = new ModelAndView();
        MultipartFile feed_uploadFile = vo.getFeed_uploadFile();
        if(!feed_uploadFile.isEmpty()) {
            this.fileName01 = feed_uploadFile.getOriginalFilename();
            feed_uploadFile.transferTo(new File("C:\\Users\\YongSun Jang\\Desktop\\메인 프로젝트\\코딩\\mainProject\\src\\main\\webapp\\resources\\img\\product\\" + fileName01));
        }
        vo.setFeed_img(fileName01);
        mallService.insertMallFeed(vo);
        mav.setViewName("redirect:/productInquiryFeed.mdo");
        return mav;
    }

    @RequestMapping("/productInquiryFeed.mdo")
    public ModelAndView getMallFeedList(MallFeedVO vo) throws Exception{
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/mall/productInquiryFeed");
        mav.addObject("feedList", mallService.getMallFeedList());

        return mav;
    }
}
