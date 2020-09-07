package com.omgm.admin.pickup.controller;

import com.omgm.admin.mall.beans.OrderVO;
import com.omgm.admin.pickup.beans.PickUpDAO;
import com.omgm.admin.pickup.beans.PickUpVO;
import com.omgm.admin.pickup.service.PickUpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PickUpController {

    @Autowired
    PickUpService pickUpService;

    @RequestMapping("/pickUpList.mdo")
    public ModelAndView productOrder(PickUpVO vo) throws Exception{
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/pickUp/pickUpService");
        mav.addObject("pickUp", pickUpService.getPickUpList());
//        mav.addObject("pickUpInfo", pickUpService.getPickUpListInfo());
        return mav;
    }


}
