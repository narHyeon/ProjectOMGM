package com.omgm.member.service;

import com.omgm.member.beans.MemberVO;

public interface MemberService {
    int idCheck(MemberVO vo);
    MemberVO snsCheck(MemberVO vo);
    void addMember(MemberVO vo);
}
