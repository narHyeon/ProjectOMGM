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

    public void addMember(MemberVO vo) {
        sqlSessionTemplate.insert("MemberDAO.addMember",vo);
    }
}
