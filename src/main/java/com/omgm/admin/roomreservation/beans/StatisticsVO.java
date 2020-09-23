package com.omgm.admin.roomreservation.beans;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class StatisticsVO {
	//선택된 날자
	private Date searchDate;
	private String strSearchDate;
	
	//연간 매출액 데이터
	private int yearTotalSales;
	private int maxSalesDuringMonth;
	private List<Integer> maxSalesMonthList;
	private int minSalesDuringMonth;
	private List<Integer> minSalesMonthList;
	//월간 매출액 데이터
	private int monthTotalSales;
	private int maxSalesDuringWeek;
	private List<Integer> maxSalesWeekList;
	private int minSalesDuringWeek;
	private List<Integer> minSalesWeekList;
	//주간 매출액 데이터
	private int weekTotalSales;
	private int maxSalesDuringDay;
	private List<Integer> maxSalesDayList;
	private int minSalesDuringDay;
	private List<Integer> minSalesDayList;
	
	//연간 매출량 데이터
	private int yearTotalSalesCnt;
	private int maxSalesCntDuringMonth;
	private List<Integer> maxSalesCntMonthList;
	private int minSalesCntDuringMonth;
	private List<Integer> minSalesCntMonthList;
	//월간 매출량 데이터
	private int monthTotalSalesCnt;
	private int maxSalesCntDuringWeek;
	private List<Integer> maxSalesCntWeekList;
	private int minSalesCntDuringWeek;
	private List<Integer> minSalesCntWeekList;
	//주간 매출량 데이터
	private int weekTotalSalesCnt;
	private int maxSalesCntDuringDay;
	private List<Integer> maxSalesCntDayList;
	private int minSalesCntDuringDay;
	private List<Integer> minSalesCntDayList;

//	public StatisticsVO() {
//		maxSalesMonth = new ArrayList<Integer>();
//		minSalesMonth = new ArrayList<Integer>();
//		maxSalesWeek = new ArrayList<Integer>();
//		minSalesWeek = new ArrayList<Integer>();
//		maxSalesDay = new ArrayList<Integer>();
//		minSalesDay = new ArrayList<Integer>();
//		maxSalesCntMonth = new ArrayList<Integer>();
//		minSalesCntMonth = new ArrayList<Integer>();
//		maxSalesCntWeek = new ArrayList<Integer>();
//		minSalesCntWeek = new ArrayList<Integer>();
//		maxSalesCntDay = new ArrayList<Integer>();
//		minSalesCntDay = new ArrayList<Integer>();
//	}
	
	
	
	
	
}
