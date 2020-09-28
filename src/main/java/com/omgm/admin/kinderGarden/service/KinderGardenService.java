package com.omgm.admin.kinderGarden.service;

import com.omgm.admin.kinderGarden.beans.KinderGardenDateVO;
import com.omgm.admin.kinderGarden.beans.KinderGardenRowMonthVO;
import com.omgm.admin.kinderGarden.beans.KinderGardenRowVO;
import com.omgm.admin.kinderGarden.beans.KinderGardenVO;
import com.omgm.user.common.beans.KinderGardenReservationVO;
import com.omgm.user.review.beans.PageNavigator;

import java.util.Date;
import java.util.List;

public interface KinderGardenService {
    KinderGardenVO getSchedule(KinderGardenVO vo);
    List<KinderGardenRowVO> getScheduleRow(KinderGardenVO vo);
    void addSchedule(KinderGardenVO vo);
    void addScheduleRow(KinderGardenRowVO vo);

    // 달력
    KinderGardenVO getScheduleMonth(KinderGardenVO vo);
    List<KinderGardenRowMonthVO> getScheduleRowMonth(KinderGardenVO vo);
    void addScheduleMonth(KinderGardenVO vo);
    void addScheduleRowMonth(KinderGardenRowMonthVO vo);

    // 예약
    List<KinderGardenReservationVO> getKinderGardenReservation(PageNavigator navi);
    void checkReservation(KinderGardenReservationVO vo);
    void deleteReservation(KinderGardenReservationVO vo);

    // 정산
    List<KinderGardenReservationVO> getKinderGardenCalculate(KinderGardenDateVO vo);

    int selectCount();
}
