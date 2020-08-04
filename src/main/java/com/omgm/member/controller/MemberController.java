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
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class MemberController {

    @Resource(name="memberService")
    private MemberService memberService;

    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    // 네이버 회원 콜백
    @RequestMapping("/naverCallback.lo")
    public ModelAndView naverSign(MemberVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/main");
        vo.setId("naver");
        mav.addObject("naver",vo);
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
        if(memberService.snsCheck(vo) != null) {
            vo.setId("유");
        }
        return vo;
    }

    @RequestMapping("/login.lo")
    public ModelAndView login(HttpServletRequest request, MemberVO vo) {
        ModelAndView mav = new ModelAndView();
        MemberVO mvo = memberService.getMember(vo);
        if(mvo != null && bCryptPasswordEncoder.matches(vo.getPwd(), mvo.getPwd())) {
            HttpSession session = request.getSession();
            session.setAttribute("member",mvo);
        } else {
            vo.setId("무");
            mav.addObject("member",vo);
        }
        mav.setViewName("/main");
        return mav;
    }

    @RequestMapping("/logout.lo")
    public ModelAndView logout(HttpSession session) {
        // 1. 브라우저와 연결된 세션 객체를 종료
        session.invalidate();
        // 2. 세션 종료 후 메인 화면으로 이동
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/main");
        return mav;
    }

    // SNS계정 로그인
    @RequestMapping(value = "/snsLogin.lo", method = RequestMethod.GET)
    public ModelAndView snsLogin(HttpServletRequest request, MemberVO vo) {
        ModelAndView mav = new ModelAndView();
        MemberVO mvo = memberService.snsCheck(vo);
        if(mvo != null) {
            HttpSession session = request.getSession();
            session.setAttribute("member",mvo);
        } else {
//            vo.setType(vo.getType());
//            switch(vo.getType()) {
//                case "google": mav.addObject("result",vo); break;
//                case "naver": mav.addObject("naver",vo); break;
//                case "kakao": mav.addObject("naver",vo); break;
//            }
        }
        mav.setViewName("/main");
        return mav;
    }
}
