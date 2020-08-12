package com.omgm.admin.kinderGarden.controller;

import com.omgm.admin.kinderGarden.beans.KinderGardenDateVO;
import com.omgm.admin.kinderGarden.beans.KinderGardenRowMonthVO;
import com.omgm.admin.kinderGarden.beans.KinderGardenRowVO;
import com.omgm.admin.kinderGarden.beans.KinderGardenVO;
import com.omgm.admin.kinderGarden.service.KinderGardenService;
import com.omgm.user.common.beans.KinderGardenReservationVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
public class KinderGardenController {

    @Resource(name="kinderGardenService")
    private KinderGardenService kinderGardenService;

    // 관리자 유치원 시간표
    @RequestMapping("/kinderGardenSchedule.mdo")
    public ModelAndView kinderGardenSchedule(KinderGardenVO vo) {
        ModelAndView mav = new ModelAndView();
        vo = kinderGardenService.getSchedule(vo);
        List<KinderGardenRowVO> list = kinderGardenService.getScheduleRow(vo);
        mav.addObject("day",vo);
        mav.addObject("dayRow",list);
        mav.setViewName("/kinderGarden/kinderGardenSchedule");
        return mav;
    }

    // 관리자 유치원 달력
    @RequestMapping("/kinderGardenScheduleMonth.mdo")
    public ModelAndView kinderGardenScheduleMonth(KinderGardenVO vo) {
        ModelAndView mav = new ModelAndView();
        vo = kinderGardenService.getScheduleMonth(vo);
        List<KinderGardenRowMonthVO> list = kinderGardenService.getScheduleRowMonth(vo);
        mav.addObject("month",vo);
        mav.addObject("monthRow",list);
        mav.setViewName("/kinderGarden/kinderGardenScheduleMonth");
        return mav;
    }

    // 관리자 유치원 예약 현황
    @RequestMapping("/kinderGardenReservation.mdo")
    public ModelAndView kinderGardenReservation(KinderGardenVO vo) {
        ModelAndView mav = new ModelAndView();
        mav.addObject("reservation",kinderGardenService.getKinderGardenReservation());
        mav.setViewName("/kinderGarden/kinderGardenReservation");
        return mav;
    }

    // 관리자 유치원 시간표 제목 등록
    @ResponseBody
    @RequestMapping("/addSchedule.mdo")
    public void addSchedule(@RequestBody KinderGardenVO vo) {
        kinderGardenService.addSchedule(vo);
    }

    // 관리자 유치원 시간표 내용 등록
    @ResponseBody
    @RequestMapping("/addScheduleRow.mdo")
    public void addScheduleRow(@RequestBody KinderGardenRowVO rvo) {
        kinderGardenService.addScheduleRow(rvo);
    }

    // 관리자 유치원 달력 등록
    @ResponseBody
    @RequestMapping("/addScheduleMonth.mdo")
    public void addScheduleMonth(@RequestBody KinderGardenVO vo) {
        kinderGardenService.addScheduleMonth(vo);
    }

    // 관리자 유치원 달력 내용 등록
    @ResponseBody
    @RequestMapping("/addScheduleRowMonth.mdo")
    public void addScheduleRowMonth(@RequestBody KinderGardenRowMonthVO rvo) {
        kinderGardenService.addScheduleRowMonth(rvo);
    }

    // 관리자 예약확인 체크
    @ResponseBody
    @RequestMapping("/checkReservation.mdo")
    public void checkReservation(@RequestBody KinderGardenReservationVO vo) {
        kinderGardenService.checkReservation(vo);
    }

    // 관리자 예약취소 삭제
    @ResponseBody
    @RequestMapping("/deleteReservation.mdo")
    public void deleteReservation(@RequestBody KinderGardenReservationVO vo) {
        kinderGardenService.deleteReservation(vo);
    }

    // 관리자 유치원 정산
    @RequestMapping("/kinderGardenCalculate.mdo")
    public ModelAndView kinderGardenCalculate(KinderGardenDateVO vo) {

        System.out.println(vo.getDate1());
        System.out.println(vo.getDate2());



        ModelAndView mav = new ModelAndView();
        Map<String,String> map = new HashMap<String,String>();
        Map<String,int[]> dowMap = new HashMap<String,int[]>();
        Calendar cal = Calendar.getInstance();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일");

        int price = 0;
        int dayPrice = 0;
        double weekPrice[] = new double[5];
        double weekPercent[] = new double[5];
        int weekTotal = 0;
        int dayOfWeek[] = new int[7];

        // 현재부터 일주일 전까지 불러오기
        cal.setTime(new Date());
        cal.add(Calendar.MONTH, -1);
        vo.setDate1(cal.getTime());
        vo.setDate2(new Date());
        List<KinderGardenReservationVO> list = kinderGardenService.getKinderGardenCalculate(vo);

        for(KinderGardenReservationVO rv : list) {
            price += rv.getPrice();
            if(rv.getRegDate().toString().matches(".*Mon.*")) dayOfWeek[0] += rv.getPrice();
            else if(rv.getRegDate().toString().matches(".*Tue.*")) dayOfWeek[1] += rv.getPrice();
            else if(rv.getRegDate().toString().matches(".*Wed.*")) dayOfWeek[2] += rv.getPrice();
            else if(rv.getRegDate().toString().matches(".*Thu.*")) dayOfWeek[3] += rv.getPrice();
            else if(rv.getRegDate().toString().matches(".*Fri.*")) dayOfWeek[4] += rv.getPrice();
            else if(rv.getRegDate().toString().matches(".*Sat.*")) dayOfWeek[5] += rv.getPrice();
            else if(rv.getRegDate().toString().matches(".*Sun.*")) dayOfWeek[6] += rv.getPrice();
        }

        dowMap.put("dow",dayOfWeek);

        // today 총합 구하기
        cal.setTime(new Date());
        cal.add(Calendar.DATE, -1);
        vo.setDate1(cal.getTime());
        List<KinderGardenReservationVO> dayList = kinderGardenService.getKinderGardenCalculate(vo);
        for(KinderGardenReservationVO dv : dayList) dayPrice += dv.getPrice();

        // 주차별 계산
        for(int i=1; i<=4; i++) {
            cal.setTime(new Date());
            cal.add(Calendar.DATE, -7*i);
            vo.setDate1(cal.getTime());
            cal.setTime(new Date());
            cal.add(Calendar.DATE, (-7*i)+7);
            vo.setDate2(cal.getTime());
            List<KinderGardenReservationVO> weekList = kinderGardenService.getKinderGardenCalculate(vo);
            for(KinderGardenReservationVO wv : weekList) weekPrice[i] += wv.getPrice();
            weekTotal += weekPrice[i];
        }

        for(int i=1; i<=4; i++) {
            weekPercent[i] = (weekPrice[i]/weekTotal)*100;
        }

        map.put("date1",sdf.format(vo.getDate1()));
        map.put("date2",sdf.format(vo.getDate2()));
        map.put("day", String.valueOf(price/30));
        map.put("week", String.valueOf(price/4));
        map.put("month", String.valueOf(price));
        map.put("today",String.valueOf(dayPrice));
        map.put("weekPercent1", String.valueOf((int) weekPercent[4]));
        map.put("weekPercent2", String.valueOf((int) weekPercent[3]));
        map.put("weekPercent3", String.valueOf((int) weekPercent[2]));
        map.put("weekPercent4", String.valueOf((int) weekPercent[1]));

        // 주간 최고, 최저 구하기기
       Arrays.sort(weekPrice);

        map.put("weekTop", String.valueOf((int)weekPrice[3]));
        map.put("weekBottom", String.valueOf((int)weekPrice[1]));

        // 요일별 최고 최저 구하기
        for(int i=0; i<dayOfWeek.length; i++) {
            if(i == 0) {
                map.put("dowTop", String.valueOf(dayOfWeek[i]));
                map.put("dowBottom", String.valueOf(dayOfWeek[i]));
                continue;
            }
            if(dayOfWeek[i] > dayOfWeek[i-1]) map.put("dowTop", String.valueOf(dayOfWeek[i]));
            else if(dayOfWeek[i] < dayOfWeek[i-1]) map.put("dowBottom", String.valueOf(dayOfWeek[i]));
            System.out.println(i+": "+dayOfWeek[i]);
        }

        System.out.println(map.get("dowTop"));
        System.out.println(map.get("dowBottom"));

        mav.setViewName("/kinderGarden/kinderGardenCalculate");
        mav.addObject("dateList", list);
        mav.addObject("date", map);
        mav.addObject("dow", dowMap);

        return mav;
    }
}
