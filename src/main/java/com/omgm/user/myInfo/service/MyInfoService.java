package com.omgm.user.myInfo.service;

import com.omgm.member.beans.MemberVO;

public interface MyInfoService {
    void updateMember(MemberVO vo);
    void updatePassword(MemberVO vo);
    void deleteMember(MemberVO vo);
    int checkPass(MemberVO vo);
}
