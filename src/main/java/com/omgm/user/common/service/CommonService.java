package com.omgm.user.common.service;

import com.omgm.user.common.beans.KinderGardenInfoVO;
import com.omgm.user.common.beans.KinderGardenInfoRowVO;

import java.util.List;

public interface CommonService {
    KinderGardenInfoVO getSchedule();
    List<KinderGardenInfoRowVO> getScheduleRow(KinderGardenInfoVO vo);
}
