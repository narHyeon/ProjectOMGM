package com.omgm.user.myInfo.controller;

import com.omgm.member.beans.MemberVO;
import com.omgm.user.myInfo.beans.MyInfoDAO;
import com.omgm.user.myInfo.service.MyInfoService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;

@Controller
public class MyInfoController {

    @Resource(name="myInfoService")
    private MyInfoService myInfoService;

    @RequestMapping("/myInfo.do")
    public ModelAndView myInfo(ModelAndView mav) {
        mav.setViewName("/newInfo/myInfo");
        return mav;
    }

    @RequestMapping("/updateMember.do")
    public ModelAndView updateMember(MemberVO vo, ModelAndView mav) {
        myInfoService.updateMember(vo);
        mav.setViewName("/newInfo/myInfo");
        return mav;
    }
    @RequestMapping("/updatePassword.do")
    public ModelAndView updatePassword(MemberVO vo, ModelAndView mav) {
        myInfoService.updatePassword(vo);
        mav.setViewName("/newInfo/myInfo");
        return mav;
    }
    @RequestMapping("/deleteMember.do")
    public ModelAndView deleteMember(MemberVO vo, ModelAndView mav) {
        myInfoService.deleteMember(vo);
        mav.setViewName("/newInfo/myInfo");
        return mav;
    }
}
