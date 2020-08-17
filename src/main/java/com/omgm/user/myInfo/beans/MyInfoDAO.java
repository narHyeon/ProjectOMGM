package com.omgm.user.myInfo.beans;

import com.omgm.member.beans.MemberVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("myInfoDAO")
public class MyInfoDAO {

    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    public void updateMember(MemberVO vo) {
        sqlSessionTemplate.update("myInfoDAO.updateMember", vo);
    }

    public void deleteMember(MemberVO vo) {
        sqlSessionTemplate.update("myInfoDAO.deleteMember", vo);
    }

    public void updatePassword(MemberVO vo) {
        sqlSessionTemplate.update("myInfoDAO.updatePassword", vo);
    }
}
