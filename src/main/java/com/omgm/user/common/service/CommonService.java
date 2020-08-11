package com.omgm.user.common.service;

import com.omgm.admin.kinderGarden.beans.KinderGardenRowMonthVO;
import com.omgm.admin.kinderGarden.beans.KinderGardenVO;
import com.omgm.user.common.beans.KinderGardenInfoVO;
import com.omgm.user.common.beans.KinderGardenInfoRowVO;
import com.omgm.user.common.beans.KinderGardenReservationVO;

import java.util.List;

public interface CommonService {
    KinderGardenInfoVO getSchedule();
    List<KinderGardenInfoRowVO> getScheduleRow(KinderGardenInfoVO vo);

    // 달력
    KinderGardenInfoVO getScheduleMonth(KinderGardenInfoVO vo);
    List<KinderGardenRowMonthVO> getScheduleRowMonth(KinderGardenInfoVO vo);

    //예약
    void addKinderGardenReservation(KinderGardenReservationVO vo);
    void checkReservation(KinderGardenReservationVO vo);
}
