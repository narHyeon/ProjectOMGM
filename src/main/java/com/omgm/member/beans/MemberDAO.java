package com.omgm.member.beans;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("memberDAO")
public class MemberDAO {

    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    public int idCheck(MemberVO vo) {
        return sqlSessionTemplate.selectOne("MemberDAO.idCheck",vo);
    }

    public MemberVO snsCheck(MemberVO vo) {
        return sqlSessionTemplate.selectOne("MemberDAO.snsCheck",vo);
    }

    public MemberVO getMember(MemberVO vo) {
        return sqlSessionTemplate.selectOne("MemberDAO.getMember",vo);
    }

    public void addMember(MemberVO vo) {
        sqlSessionTemplate.insert("MemberDAO.addMember",vo);
    }


}
