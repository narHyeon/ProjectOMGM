package com.omgm.member.webSocket.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class EchoController {

    @RequestMapping("/chatting.lo")
    public ModelAndView chat(ModelAndView mav) {
        mav.setViewName("chat/chat");
//        User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
//        System.out.println("user name" + user.getUsername());
//        mav.addObject("userId",user.getUsername());
        return mav;
    }
}
