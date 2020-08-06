package com.omgm.user.common.beans;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("commonDAO")
public class CommonDAO {

    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    public KinderGardenInfoVO getSchedule() {
        return sqlSessionTemplate.selectOne("CommonDAO.getSchedule");
    }

    public List<KinderGardenInfoRowVO> getScheduleRow(KinderGardenInfoVO vo) {
        return sqlSessionTemplate.selectList("CommonDAO.getScheduleRow",vo);
    }
}
