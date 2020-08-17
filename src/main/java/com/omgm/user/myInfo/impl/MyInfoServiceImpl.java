package com.omgm.user.myInfo.impl;

import com.omgm.member.beans.MemberVO;
import com.omgm.user.myInfo.beans.MyInfoDAO;
import com.omgm.user.myInfo.service.MyInfoService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("myInfoService")
public class MyInfoServiceImpl implements MyInfoService {

    @Resource(name="myInfoDAO")
    private MyInfoDAO myInfoDAO;

    @Override
    public void updateMember(MemberVO vo) {
        myInfoDAO.updateMember(vo);
    }

    @Override
    public void updatePassword(MemberVO vo) {
        myInfoDAO.updatePassword(vo);
    }

    @Override
    public void deleteMember(MemberVO vo) {
        myInfoDAO.deleteMember(vo);
    }

    @Override
    public int checkPass(MemberVO vo) {
        return 0;
    }
}
