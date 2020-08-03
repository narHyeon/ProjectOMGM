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
    public ModelAndView insertMallToy(MallToyVO vo) {
        ModelAndView mav = new ModelAndView();
        mallService.insertMallToy(vo);
        mav.setViewName("/productRegister/productInquiry");
        return mav;
    }
}
