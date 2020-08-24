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
        sqlSessionTemplate.update("MyInfoDAO.updateMember", vo);
    }

    public void deleteMember(MemberVO vo) {
        sqlSessionTemplate.update("MyInfoDAO.deleteMember", vo);
    }

    public void updatePassword(MemberVO vo) {
        sqlSessionTemplate.update("MyInfoDAO.updatePassword", vo);
    }

    public MemberVO checkPass(MemberVO vo) {
        return sqlSessionTemplate.selectOne("MyInfoDAO.checkPass",vo);
    }
}
