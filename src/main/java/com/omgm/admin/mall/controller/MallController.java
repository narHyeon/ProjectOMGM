package com.omgm.admin.mall.controller;

import com.omgm.admin.mall.beans.MallToyVO;
import com.omgm.admin.mall.service.MallService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MallController {

    @Autowired
    MallService mallService;

    @RequestMapping("/insertMallToy.mdo")
    public ModelAndView insertMallToy(MallToyVO vo) throws Exception{
        ModelAndView mav = new ModelAndView();
        mallService.insertMallToy(vo);
        mav.setViewName("redirect:/productInquiry.mdo");
        return mav;
    }

    @RequestMapping("/productInquiry.mdo")
    public ModelAndView getMallToyList(MallToyVO vo) throws Exception{
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/productRegister/productInquiry");
        mav.addObject("toyList", mallService.getMallToyList());
        System.out.println(vo.getToy_img() + "  " + vo.getToy_name());
        return mav;
    }
}
