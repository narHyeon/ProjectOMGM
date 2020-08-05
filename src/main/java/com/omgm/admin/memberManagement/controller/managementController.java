package com.omgm.admin.memberManagement.controller;

import com.omgm.admin.memberManagement.beans.ManagementVO;
import com.omgm.admin.memberManagement.service.ManagementService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;

@Controller
public class managementController {

    @Resource(name="managementService")
    private ManagementService managementService;

    @RequestMapping("/memberTable.mdo")
    public ModelAndView memberTable(ManagementVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/memberManagement/memberTable");
        mav.addObject("memberTable",managementService.memberTable());
        return mav;
    }
}
