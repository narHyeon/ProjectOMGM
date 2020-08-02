package com.omgm.member.impl;

import com.omgm.member.beans.MemberDAO;
import com.omgm.member.beans.MemberVO;
import com.omgm.member.service.MemberService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("memberService")
public class MemberServiceImpl implements MemberService {

    @Resource(name="memberDAO")
    private MemberDAO memberDAO;

    @Override
    public void addMember(MemberVO vo) {
        memberDAO.addMember(vo);
    }
}
