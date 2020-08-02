package com.omgm.member.controller;

import com.omgm.member.beans.MemberVO;
import com.omgm.member.service.MemberService;
import com.omgm.user.common.beans.CommonVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;

@Controller
public class MemberController {

    @Resource(name="memberService")
    private MemberService memberService;


    @RequestMapping("/naverLogin.lo")
    public ModelAndView naverLogin(MemberVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/login");
        return mav;
    }

    @RequestMapping("/loginCallback.lo")
    public ModelAndView lobinVallback(MemberVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/loginCallback");
        return mav;
    }

    @RequestMapping("/sample.lo")
    public ModelAndView Sample(MemberVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/sample");
        return mav;
    }

    // 아이디 체크
    @ResponseBody
    @RequestMapping(value="/idCheck.lo", method = RequestMethod.POST)
    public MemberVO idChecking(@RequestBody MemberVO vo) {
        vo.setId("rolla");
        return vo;
    }

    // 회원가입
    @ResponseBody
    @RequestMapping(value="/addMember.lo", method = RequestMethod.POST)
    public MemberVO addMember(@RequestBody MemberVO vo) {
        memberService.addMember(vo);
        return vo;
    }
}
