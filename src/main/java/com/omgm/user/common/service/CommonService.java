package com.omgm.user.common.service;

import com.omgm.admin.kinderGarden.beans.KinderGardenRowVO;
import com.omgm.admin.kinderGarden.beans.KinderGardenVO;
import com.omgm.user.common.beans.KinderGardenInfoVO;

import java.util.List;

public interface CommonService {
    KinderGardenInfoVO getSchedule();
    List<KinderGardenRowVO> getScheduleRow(KinderGardenVO vo);
}
