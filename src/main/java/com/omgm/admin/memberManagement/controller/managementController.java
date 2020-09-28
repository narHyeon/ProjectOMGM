package com.omgm.admin.memberManagement.controller;

import com.omgm.admin.memberManagement.beans.ManagementVO;
import com.omgm.admin.memberManagement.service.ManagementService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.List;

@Controller
public class managementController {

    @Resource(name="managementService")
    private ManagementService managementService;

    @RequestMapping("/memberTable.mdo")
    public ModelAndView memberTable(ManagementVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/memberManagement/memberTable");

        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd : HH:mm");
        List<ManagementVO> list = managementService.memberTable(vo);
        for(ManagementVO li : list) li.setFormatDate(dateFormat.format(li.getRegDate()));

        mav.addObject("memberTable",list);
        return mav;
    }

    @RequestMapping("/adminTable.mdo")
    public ModelAndView adminTable(ManagementVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/memberManagement/adminTable");

        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd : HH:mm");
        vo.setType("관리자");
        List<ManagementVO> list = managementService.memberTable(vo);
        for(ManagementVO li : list) li.setFormatDate(dateFormat.format(li.getRegDate()));

        mav.addObject("adminTable",list);
        return mav;
    }

    @ResponseBody
    @RequestMapping("/memberRankUp.mdo")
    public void memberRankUp(@RequestBody ManagementVO vo) {
        switch(vo.getRank()) {
            case "FAMILY" :
                vo.setRank("BRONZE");
                vo.setPoint(10000);
                break;
            case "BRONZE" :
                vo.setRank("SILVER");
                vo.setPoint(20000);
                break;
            case "SILVER" :
                vo.setRank("GOLD");
                vo.setPoint(30000);
                break;
            case "GOLD" :
                vo.setRank("VIP");
                vo.setPoint(50000);
                break;
            case "VIP" :
                vo.setRank("VVIP");
                vo.setPoint(100000);
                break;
        }
        managementService.memberRankUp(vo);
    }
}
