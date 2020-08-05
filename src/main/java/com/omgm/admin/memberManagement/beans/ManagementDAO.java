package com.omgm.admin.memberManagement.beans;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("managementDAO")
public class ManagementDAO {

    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    public List<ManagementVO> memberTable() {
        return sqlSessionTemplate.selectList("ManagementDAO.memberTable");
    }
}
