package com.omgm.admin.kinderGarden.impl;

import com.omgm.admin.kinderGarden.beans.*;
import com.omgm.admin.kinderGarden.service.KinderGardenService;
import com.omgm.user.common.beans.KinderGardenReservationVO;
import com.omgm.user.review.beans.PageNavigator;
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

    @Override
    public KinderGardenVO getScheduleMonth(KinderGardenVO vo) {
        return kinderGardenDAO.getScheduleMonth(vo);
    }

    @Override
    public List<KinderGardenRowMonthVO> getScheduleRowMonth(KinderGardenVO vo) {
        return kinderGardenDAO.getScheduleRowMonth(vo);
    }

    @Override
    public void addScheduleMonth(KinderGardenVO vo) {
        kinderGardenDAO.addScheduleMonth(vo);
    }

    @Override
    public void addScheduleRowMonth(KinderGardenRowMonthVO vo) {
        kinderGardenDAO.addScheduleRowMonth(vo);
    }

    @Override
    public List<KinderGardenReservationVO> getKinderGardenReservation(PageNavigator navi) {
        return kinderGardenDAO.getKinderGardenReservation(navi);
    }

    @Override
    public void checkReservation(KinderGardenReservationVO vo) {
        kinderGardenDAO.checkReservation(vo);
    }

    @Override
    public void deleteReservation(KinderGardenReservationVO vo) {
        kinderGardenDAO.deleteReservation(vo);
    }

    @Override
    public List<KinderGardenReservationVO> getKinderGardenCalculate(KinderGardenDateVO vo) {
        return kinderGardenDAO.getKinderGardenCalculate(vo);
    }

    @Override
    public int selectCount() {
        return kinderGardenDAO.selectCount();
    }
}
