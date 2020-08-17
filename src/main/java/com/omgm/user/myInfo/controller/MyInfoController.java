package com.omgm.user.myInfo.controller;

import com.omgm.member.beans.MemberVO;
import com.omgm.user.myInfo.service.MyInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;

@Controller
public class MyInfoController {

    @Resource(name="myInfoService")
    private MyInfoService myInfoService;

    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

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
        System.out.println(vo);
        vo.setPwd(bCryptPasswordEncoder.encode(vo.getPwd()));
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

    @ResponseBody
    @RequestMapping("/checkPass.do")
    public int checkPass(@RequestBody MemberVO vo) {
        int boo = 0;
        MemberVO mvo = myInfoService.checkPass(vo);
        if(mvo != null && bCryptPasswordEncoder.matches(vo.getPwd(), mvo.getPwd())) boo = 10;
        return boo;
    }
}
