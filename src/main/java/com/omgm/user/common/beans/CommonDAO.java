package com.omgm.user.common.beans;

import com.omgm.admin.kinderGarden.beans.KinderGardenRowMonthVO;
import com.omgm.admin.kinderGarden.beans.KinderGardenVO;
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

    public KinderGardenInfoVO getScheduleMonth(KinderGardenInfoVO vo) {
        return sqlSessionTemplate.selectOne("CommonDAO.getScheduleMonth",vo);
    }

    public List<KinderGardenRowMonthVO> getScheduleRowMonth(KinderGardenInfoVO vo) {
        return sqlSessionTemplate.selectList("CommonDAO.getScheduleRowMonth",vo);
    }
}
