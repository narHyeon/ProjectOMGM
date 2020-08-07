package com.omgm.admin.kinderGarden.impl;

import com.omgm.admin.kinderGarden.beans.KinderGardenDAO;
import com.omgm.admin.kinderGarden.beans.KinderGardenRowVO;
import com.omgm.admin.kinderGarden.beans.KinderGardenVO;
import com.omgm.admin.kinderGarden.service.KinderGardenService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("kinderGardenService")
public class KinderGardenServiceImpl implements KinderGardenService {

    @Resource(name="kinderGardenDAO")
    private KinderGardenDAO kinderGardenDAO;

    @Override
    public KinderGardenVO getSchedule(KinderGardenVO vo) {
        return kinderGardenDAO.getSchedule(vo);
    }

    @Override
    public List<KinderGardenRowVO> getScheduleRow(KinderGardenVO vo) {
        return kinderGardenDAO.getScheduleRow(vo);
    }

    @Override
    public void addSchedule(KinderGardenVO vo) {
        kinderGardenDAO.addSchedule(vo);
    }

    @Override
    public void addScheduleRow(KinderGardenRowVO vo) {
        kinderGardenDAO.addScheduleRow(vo);
    }
}
