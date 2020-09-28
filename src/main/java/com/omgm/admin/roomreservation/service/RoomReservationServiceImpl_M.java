package com.omgm.admin.roomreservation.service;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.omgm.admin.catcarelog.beans.CatCareLogDAO_M;
import com.omgm.admin.catcarelog.beans.CatCareLogVO_M;
import com.omgm.admin.roomreservation.beans.AreaChartVO;
import com.omgm.admin.roomreservation.beans.BarChartVO;
import com.omgm.admin.roomreservation.beans.PieChartVO;
import com.omgm.admin.roomreservation.beans.RoomReservationDAO_M;
import com.omgm.admin.roomreservation.beans.RoomReservationVO_M;
import com.omgm.admin.roomreservation.beans.StatisticsVO;
import com.omgm.user.review.beans.PageNavigator;

@Service("roomReservationServiceImpl_M")
public class RoomReservationServiceImpl_M implements RoomReservationService_M{

	@Autowired
	RoomReservationDAO_M roomReservationDAO_M;
	@Autowired
	CatCareLogDAO_M catCareLogDAO_M; 
	
	@Override
	public int countRoomReservation(RoomReservationVO_M vo) {
		return roomReservationDAO_M.countRoomReservation(vo);
	}

	@Override
	public RoomReservationVO_M getRoomReservation(RoomReservationVO_M vo) {
		return roomReservationDAO_M.getRoomReservation(vo);
	}
	
	@Override
	public List<RoomReservationVO_M> roomReservationList(RoomReservationVO_M vo, PageNavigator navi) {
		return roomReservationDAO_M.roomReservationList(vo,navi);
	}

	@Override
	public List<RoomReservationVO_M> roomReservationListAndCatCareLog(RoomReservationVO_M vo, PageNavigator navi) {

		List<RoomReservationVO_M> reservationList = roomReservationDAO_M.roomReservationList(vo,navi); 
		
		//뽑아온 예약번호를 이용하여 해당 예약번호들에해당하는 모든 냥박일지를 얻어오는 메소드
		List<CatCareLogVO_M> catCareLogList =  catCareLogDAO_M.getCatCareLogListByReserNo(reservationList);
		
		//예약 번호에 해당하는 냥박일지를 넣어주는 로직
		for (int i = 0; i < reservationList.size(); i++) {
			List<CatCareLogVO_M> careList = new ArrayList<CatCareLogVO_M>();
			for (int j = 0; j < catCareLogList.size(); j++) {
				if (reservationList.get(i).getROOMRESERVATION_NO() == catCareLogList.get(j).getCATCARELOG_SERVICENUM()) {
					careList.add(catCareLogList.get(j));
				}
			}
			reservationList.get(i).setCatCareList(careList);
		}
		return reservationList;
	}

	//통계내주는 메소드
	@Override
	public Map<String, Object> roomReservationStatistics(StatisticsVO statisticsVO) {
		Map<String, Object> statisticsMap = new HashMap<String, Object>();
		List<RoomReservationVO_M> reserList = roomReservationDAO_M.roomReservationStatistics();
		List<AreaChartVO> areaList = new ArrayList<AreaChartVO>();
		List<PieChartVO> pieList = new ArrayList<PieChartVO>();
		List<BarChartVO> barList = new ArrayList<BarChartVO>();
		
		Date today = statisticsVO.getSearchDate();
		int todayYear = today.getYear();
		int todayMonth = today.getMonth() + 1;
		int todayDay = today.getDay();
		//월 객체 12개 만들기
		for (int i = 1; i < 13; i++) {
			AreaChartVO vo = new AreaChartVO();
			vo.setMonthNum(i);
			areaList.add(vo);
		}
		//주 객체 6개 만들기
		for (int i = 1; i < 7 ; i++) {
			PieChartVO vo = new PieChartVO();
			vo.setWeekNum(i);
			pieList.add(vo);
		}
		//일 객체 7개 만들기
		for (int i = 1; i < 8; i++) {
			BarChartVO vo = new BarChartVO();
			vo.setDayNum(i);
			barList.add(vo);
		}
		//결재내역 리스트 for문 돌리기
		for (int i = 0; i < reserList.size(); i++) {
			// 해당년도의 값만 가져오기
			if (todayYear == reserList.get(i).getROOMRESERVATION_PAYDAY().getYear()) {
				//결재내역 가저온거를 년도가같으면 해당 월 객체에 넣어주기
				for (int j = 0; j < areaList.size(); j++) {
					int payMonth = reserList.get(i).getROOMRESERVATION_PAYDAY().getMonth() + 1 ;
					int paySales = reserList.get(i).getROOMRESERVATION_FIANLFEE();
						if (areaList.get(j).getMonthNum() == payMonth) {
							int beforeSales = areaList.get(j).getMonthSales();
							int beforeCnt = areaList.get(j).getMonthSalesCnt();
							int afterSales = beforeSales + paySales;
							int afterCnt = beforeCnt+1;
							areaList.get(j).setMonthSales(afterSales);
							areaList.get(j).setMonthSalesCnt(afterCnt);
						}
				}//end areaList
				//해당 월의 값만 가져오기
				if (todayMonth == (reserList.get(i).getROOMRESERVATION_PAYDAY().getMonth() +1)) {
					for (int j = 0; j < pieList.size(); j++) {
						//예약 정보를 담을 캘린더
						Calendar calendar1 = Calendar.getInstance();
						Date reserDate = reserList.get(i).getROOMRESERVATION_PAYDAY();
						calendar1.setTime(reserDate);
						int payWeek = calendar1.get(Calendar.WEEK_OF_MONTH);
						int paySales = reserList.get(i).getROOMRESERVATION_FIANLFEE(); 
						if (pieList.get(j).getWeekNum() == payWeek ) {
							int beforeSales = pieList.get(j).getWeekSales(); 
							int beforeCnt = pieList.get(j).getWeekSalesCnt();
							int afterSales = beforeSales + paySales;
							int afterCntn = beforeCnt+1; 
							pieList.get(j).setWeekSales(afterSales);
							pieList.get(j).setWeekSalesCnt(afterCntn);
						}
					}//end pieList
					// 해당 주만 가져오기
					Calendar calendar1 = Calendar.getInstance();
					calendar1.setTime(today);
					int todayWeek = calendar1.get(Calendar.WEEK_OF_MONTH);
					Calendar calendar2 = Calendar.getInstance();
					Date reserDate = reserList.get(i).getROOMRESERVATION_PAYDAY();
					calendar2.setTime(reserDate);
					int reserWeek = calendar2.get(Calendar.WEEK_OF_MONTH);
					if (todayWeek == reserWeek) {
						for (int j = 0; j < barList.size(); j++) {
							//예약 정보를 담을 캘린더
							int payDay = calendar2.get(Calendar.DAY_OF_WEEK);
							int paySales = reserList.get(i).getROOMRESERVATION_FIANLFEE();
							if (barList.get(j).getDayNum() == payDay) {
								int beforeSales = barList.get(j).getDaySales(); 
								int beforeCnt = barList.get(j).getDaySalesCnt();
								int afterSales = beforeSales + paySales;
								int afterCntn = beforeCnt+1; 
								barList.get(j).setDaySales(afterSales);
								barList.get(j).setDaySalesCnt(afterCntn);
							}
						}//end barList
					}//end 주
				}//end 월
			}//end 년도
		}//end 결재내역
		
		// 년간데이터 중 최대 매출액 월,최대 매출량 월, 최소 매출액 월, 최소 매출량 월을 받을 리스트 생성  
		List<Integer> maxSalesMonthList = new ArrayList<Integer>();
		List<Integer> maxSalesCntMonthList = new ArrayList<Integer>();
		List<Integer> minSalesMonthList = new ArrayList<Integer>();
		List<Integer> minSalesCntMonthList = new ArrayList<Integer>();
		// 월간데이터 중 최대 매출액 주,최대 매출량 주, 최소 매출액 주, 최소 매출량 주를 받을 리스트 생성		
		List<Integer> maxSalesWeekList = new ArrayList<Integer>();
		List<Integer> maxSalesCntWeekList = new ArrayList<Integer>();
		List<Integer> minSalesWeekList = new ArrayList<Integer>();
		List<Integer> minSalesCntWeekList = new ArrayList<Integer>();
		// 주간데이터 중 최대 매출액 일,최대 매출량 일, 최소 매출액 일, 최소 매출량 일을 받을 리스트 생성		
		List<Integer> maxSalesDayList = new ArrayList<Integer>();
		List<Integer> maxSalesCntDayList = new ArrayList<Integer>();
		List<Integer> minSalesDayList = new ArrayList<Integer>();
		List<Integer> minSalesCntDayList = new ArrayList<Integer>();
		
		//년간데이터 초기값 설정
		int yearTotalSales = 0;
		int yearTotalSalesCnt = 0;
		int maxMonthSales = areaList.get(0).getMonthSales();
		int maxMonthSalesCnt = areaList.get(0).getMonthSalesCnt();
		int minMonthSales = areaList.get(0).getMonthSales();
		int minMonthSalesCnt = areaList.get(0).getMonthSalesCnt();
		//월간데이터 초기값 설정
		int monthTotalSales = 0;
		int monthTotalSalesCnt = 0;
		int maxWeekSales = pieList.get(0).getWeekSales();
		int maxWeekSalesCnt = pieList.get(0).getWeekSalesCnt();
		int minWeekSales = pieList.get(0).getWeekSales();
		int	minWeekSalesCnt = pieList.get(0).getWeekSalesCnt();
		//주간데이터 초기값 설정
		int weekTotalSales = 0;
		int weekTotalSalesCnt = 0;
		int maxDaySales = barList.get(0).getDaySales();
		int maxDaySalesCnt = barList.get(0).getDaySalesCnt(); 
		int minDaySales = barList.get(0).getDaySales();
		int	minDaySalesCnt = barList.get(0).getDaySalesCnt();
		
		//년간데이터의 월 최대 매출액,월 최대 매출량, 월 최소 매출액, 월 최소 매출량 구하기 
		for (int j = 0; j < areaList.size(); j++) {
			if (areaList.get(j).getMonthSales() > maxMonthSales) {
				maxMonthSales = areaList.get(j).getMonthSales();
			}
			if (areaList.get(j).getMonthSalesCnt() > maxMonthSalesCnt) {
				maxMonthSalesCnt = areaList.get(j).getMonthSalesCnt();
			}
			if (minMonthSales > areaList.get(j).getMonthSales()) {
				minMonthSales = areaList.get(j).getMonthSales();
			}
			if (minMonthSalesCnt > areaList.get(j).getMonthSalesCnt()) {
				minMonthSalesCnt = areaList.get(j).getMonthSalesCnt();
			}
			yearTotalSales += areaList.get(j).getMonthSales();
			yearTotalSalesCnt += areaList.get(j).getMonthSalesCnt();
			
		}
		//월간데이터의 주 최대 매출액,주 최대 매출량, 주 최소 매출액, 주 최소 매출량 구하기 
		for (int j = 0; j < pieList.size(); j++) {
			if (pieList.get(j).getWeekSales() > maxWeekSales) {
				maxWeekSales = pieList.get(j).getWeekSales();
			}
			if (pieList.get(j).getWeekSalesCnt() > maxWeekSalesCnt) {
				maxWeekSalesCnt = pieList.get(j).getWeekSalesCnt();
			}
			if (minWeekSales > pieList.get(j).getWeekSales()) {
				minWeekSales = pieList.get(j).getWeekSales();
			}
			if (minWeekSalesCnt > pieList.get(j).getWeekSalesCnt()) {
				minWeekSalesCnt = pieList.get(j).getWeekSalesCnt();
			}
			 
			monthTotalSales += pieList.get(j).getWeekSales();
			monthTotalSalesCnt += pieList.get(j).getWeekSalesCnt();
			
		}
		//주간데이터의 일 최대 매출액,일 최대 매출량, 일 최소 매출액, 일 최소 매출량 구하기 
		for (int i = 0; i < barList.size(); i++) {
			if (barList.get(i).getDaySales() > maxDaySales) {
				maxDaySales = barList.get(i).getDaySales(); 
			}
			if (barList.get(i).getDaySalesCnt() > maxDaySalesCnt) {
				maxDaySalesCnt = barList.get(i).getDaySalesCnt();
			}
			if (minDaySales > barList.get(i).getDaySales()) {
				minDaySales = barList.get(i).getDaySales(); 
			}
			if (minDaySalesCnt > barList.get(i).getDaySalesCnt()) {
				minDaySalesCnt = barList.get(i).getDaySalesCnt(); 
			}
			
			weekTotalSales += barList.get(i).getDaySales();
			weekTotalSalesCnt += barList.get(i).getDaySalesCnt();
		}
		
		// 최대,최소 매출액,매출건과 같은 달들을 각각 리스트에 추가해주기
		for (int i = 0; i < areaList.size(); i++) {
			if (areaList.get(i).getMonthSales() == maxMonthSales) {
				maxSalesMonthList.add(areaList.get(i).getMonthNum());
			}
			if (areaList.get(i).getMonthSalesCnt() == maxMonthSalesCnt) {
				maxSalesCntMonthList.add(areaList.get(i).getMonthNum());
			}
			if (areaList.get(i).getMonthSales() == minMonthSales) {
				minSalesMonthList.add(areaList.get(i).getMonthNum());
			}
			if (areaList.get(i).getMonthSalesCnt() == minMonthSalesCnt) {
				minSalesCntMonthList.add(areaList.get(i).getMonthNum());
			}
			
		}
		
		// 최대,최소 매출액,매출건과 같은 주들을 각각 리스트에 추가해주기
		for (int i = 0; i < pieList.size(); i++) {
			if (pieList.get(i).getWeekSales() == maxWeekSales) {
				maxSalesWeekList.add(pieList.get(i).getWeekNum());
			}
			if (pieList.get(i).getWeekSalesCnt() == maxWeekSalesCnt) {
				maxSalesCntWeekList.add(pieList.get(i).getWeekNum());
			}
			if (pieList.get(i).getWeekSales() == minWeekSales) {
				minSalesWeekList.add(pieList.get(i).getWeekNum());
			}
			if (pieList.get(i).getWeekSales() == minWeekSalesCnt) {
				minSalesCntWeekList.add(pieList.get(i).getWeekNum());
			}
		}
		
		// 최대,최소 매출액,매출건과 같은 일들을 각각 리스트에 추가해주기
		for (int i = 0; i < barList.size(); i++) {
			if (barList.get(i).getDaySales() == maxDaySales) {
				maxSalesDayList.add(barList.get(i).getDayNum());
			}
			if (barList.get(i).getDaySalesCnt() == maxDaySalesCnt) {
				maxSalesCntDayList.add(barList.get(i).getDayNum());
			}
			if (barList.get(i).getDaySales() == minDaySales) {
				minSalesDayList.add(barList.get(i).getDayNum());
			}
			if (barList.get(i).getDaySalesCnt() == minDaySalesCnt) {
				minSalesCntDayList.add(barList.get(i).getDayNum());
			}			
			
		}
		
		statisticsVO.setYearTotalSales(yearTotalSales);
		statisticsVO.setYearTotalSalesCnt(yearTotalSalesCnt);
		statisticsVO.setMaxSalesMonthList(maxSalesMonthList);
		statisticsVO.setMaxSalesCntMonthList(maxSalesCntMonthList);
		statisticsVO.setMinSalesMonthList(minSalesMonthList);
		statisticsVO.setMinSalesCntMonthList(minSalesCntMonthList);
		
		statisticsVO.setMaxSalesDuringMonth(maxMonthSales);
		statisticsVO.setMaxSalesCntDuringMonth(maxMonthSalesCnt);
		statisticsVO.setMinSalesDuringMonth(minMonthSales);
		statisticsVO.setMinSalesCntDuringMonth(minMonthSalesCnt);
		
		
		statisticsVO.setMonthTotalSales(monthTotalSales);
		statisticsVO.setMonthTotalSalesCnt(monthTotalSalesCnt);
		statisticsVO.setMaxSalesWeekList(maxSalesWeekList);
		statisticsVO.setMaxSalesCntWeekList(maxSalesCntWeekList);
		statisticsVO.setMinSalesWeekList(minSalesWeekList);
		statisticsVO.setMinSalesCntWeekList(minSalesCntWeekList);

		statisticsVO.setMaxSalesDuringWeek(maxWeekSales);
		statisticsVO.setMaxSalesCntDuringWeek(maxWeekSalesCnt);
		statisticsVO.setMinSalesDuringWeek(minWeekSales);
		statisticsVO.setMinSalesCntDuringWeek(minWeekSalesCnt);
		
		statisticsVO.setWeekTotalSales(weekTotalSales);
		statisticsVO.setWeekTotalSalesCnt(weekTotalSalesCnt);
		statisticsVO.setMaxSalesDayList(maxSalesDayList);
		statisticsVO.setMaxSalesCntDayList(maxSalesCntDayList);
		statisticsVO.setMinSalesDayList(minSalesDayList);
		statisticsVO.setMinSalesCntDayList(minSalesCntDayList);
		
		statisticsVO.setMaxSalesDuringDay(maxDaySales);
		statisticsVO.setMaxSalesCntDuringDay(maxDaySalesCnt);
		statisticsVO.setMinSalesDuringDay(minDaySales);
		statisticsVO.setMinSalesCntDuringDay(minDaySalesCnt);
		
		
		statisticsMap.put("areaList", areaList);
		statisticsMap.put("pieList", pieList);
		statisticsMap.put("barList", barList);
		statisticsMap.put("statisticsVO", statisticsVO);
		
		return statisticsMap;
	}//end method()

}

