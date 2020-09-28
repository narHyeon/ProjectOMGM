package com.omgm.admin.memberManagement.beans;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("managementDAO")
public class ManagementDAO {

    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    public List<ManagementVO> memberTable(ManagementVO vo) {
        return sqlSessionTemplate.selectList("ManagementDAO.memberTable",vo);
    }

    public void memberRankUp(ManagementVO vo) {
        sqlSessionTemplate.update("ManagementDAO.memberRankUp",vo);
    }
}
