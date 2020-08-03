package com.omgm.member.controller;

import com.omgm.member.beans.MemberVO;
import com.omgm.member.service.MemberService;
import com.omgm.user.common.beans.CommonVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
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

    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;


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
        vo.setPoint(memberService.idCheck(vo));
        return vo;
    }

    // 회원가입
    @ResponseBody
    @RequestMapping(value="/addMember.lo", method = RequestMethod.POST)
    public MemberVO addMember(@RequestBody MemberVO vo) {
        vo.setPwd(bCryptPasswordEncoder.encode(vo.getPwd()));
        memberService.addMember(vo);
        return vo;
    }

    // SNS계정 회원가입 체크
    @ResponseBody
    @RequestMapping(value="/snsSignDuple.lo", method = RequestMethod.POST)
    public MemberVO snsSignDuple(@RequestBody MemberVO vo) {
        if(memberService.snsCheck(vo) == null) {
            System.out.println("없는 아이디");
        }
//        System.out.println("조건검사" + vo.getCode().equals(memberService.snsCheck(vo).getCode()));
        return vo;
    }
}
