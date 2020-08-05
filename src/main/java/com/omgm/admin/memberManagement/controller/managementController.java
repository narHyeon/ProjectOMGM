package com.omgm.admin.memberManagement.controller;

import com.omgm.admin.memberManagement.beans.ManagementVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class managementController {

    @RequestMapping("/memberTable.mdo")
    public ModelAndView memberTable(ManagementVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/memberManagement/memberTable");
        return mav;
    }
}
