package com.omgm.admin.kinderGarden.beans;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("kinderGardenDAO")
public class KinderGardenDAO {

    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    public KinderGardenVO getSchedule(KinderGardenVO vo) {
        return sqlSessionTemplate.selectOne("KinderGardenDAO.getSchedule",vo);
    }

    public List<KinderGardenRowVO> getScheduleRow(KinderGardenVO vo) {
        return sqlSessionTemplate.selectList("KinderGardenDAO.getScheduleRow",vo);
    }

    public void addSchedule(KinderGardenVO vo) {
        sqlSessionTemplate.insert("KinderGardenDAO.addSchedule",vo);
    }

    public void addScheduleRow(KinderGardenRowVO vo) {
        sqlSessionTemplate.insert("KinderGardenDAO.addScheduleRow",vo);
    }

    public KinderGardenVO getScheduleMonth(KinderGardenVO vo) {
        return sqlSessionTemplate.selectOne("KinderGardenDAO.getScheduleMonth",vo);
    }

    public List<KinderGardenRowMonthVO> getScheduleRowMonth(KinderGardenVO vo) {
        return sqlSessionTemplate.selectList("KinderGardenDAO.getScheduleRowMonth",vo);
    }
}
