package com.omgm.admin.kinderGarden.beans;

import com.omgm.user.common.beans.KinderGardenReservationVO;
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

    public void addScheduleMonth(KinderGardenVO vo) {
        sqlSessionTemplate.insert("KinderGardenDAO.addScheduleMonth",vo);
    }

    public void addScheduleRowMonth(KinderGardenRowMonthVO vo) {
        sqlSessionTemplate.insert("KinderGardenDAO.addScheduleRowMonth",vo);
    }

    public List<KinderGardenReservationVO> getKinderGardenReservation() {
        return sqlSessionTemplate.selectList("KinderGardenDAO.getKinderGardenReservation");
    }
}
