package com.omgm.user.common.impl;

import com.omgm.user.common.beans.CommonDAO;
import com.omgm.user.common.beans.KinderGardenInfoVO;
import com.omgm.user.common.beans.KinderGardenInfoRowVO;
import com.omgm.user.common.service.CommonService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("commonService")
public class CommonServiceImpl implements CommonService {

    @Resource(name="commonDAO")
    private CommonDAO commonDAO;

    @Override
    public KinderGardenInfoVO getSchedule() {
        return commonDAO.getSchedule();
    }

    @Override
    public List<KinderGardenInfoRowVO> getScheduleRow(KinderGardenInfoVO vo) {
        return commonDAO.getScheduleRow(vo);
    }
}
