<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
/* 제목 부분 */
#statistics_titles{
	display: flex;
	
}
#statistics_title{
	font-size: 25px;
	font-weight: bold;
}
.statistics_salesAndCnt{
	cursor: pointer;
	margin-left: 70%;
	font-size: 25px;
	font-weight: bold;
	background-color: #36b9cc;
	color: white;
	padding: 0.5%;
}
/* 차트 부분 */
#charts_wrap{
	display: flex;
	flex-direction: column;
	margin-top: 1%;
}
#chart_row1{
	display: flex;
	width: 100%;
}
#areaCharts{
	display: flex;
	width: 65%;
}
#areaChart1{
	width: 100%;
}
#areaChart2{
	width: 100%;
}
#pieCharts{
	margin-left: 1%;
	margin-right: 1%;
	display: flex;
	width: 33%;
	height: 100%;
}
#pieChart1{
	width: 100%;
}
#pieChart2{
	width: 100%;
}
#chart_row2{
	display: flex;
	width: 100%;
}

#barCharts{
	display: flex;
	width: 40%;
}
#barChart1{
	width: 100%;
}
#barChart2{
	width: 100%;
}
#hotel_summarys{
	display: flex;
	width: 58%;
	margin-right: 1%;
	margin-left: 1%;
}
#hotel_summary1{
	width: 100%;
}
#hotel_summary2{
	width: 100%;
}
#hotel_summary_head{
	display: flex;
	width: 100%;
}
#hotel_summary_head_title{
	width: 30%;
	padding-top: 1%;
}
.summary_tab{
	width: 33%;
	cursor: pointer;
	color: black;
	margin-left: 3%;
}
.summary_tab.tab_on {
	border-bottom:2px solid #36b9cc;
	font-weight:700;
	color:#36b9cc;
}

#summary_tabs{
	display: flex;
	margin-left: 28%;
	width: 42%;
}
.hotel_year_data{
	display: flex;
	flex-direction: column; 
}
.hotel_month_data{
	display: flex;
	flex-direction: column;
}
.hotel_week_data{
	display: flex;
	flex-direction: column;
}
.hotel_data_set1{
	font-size: 20px;
	color: #84F633;
}
.hotel_data_set2{
	font-size: 20px;
	color: #3396F6;
}
.hotel_data_set3{
	font-size: 20px;
	color: #F56A2C;
}
.hotel_data_green{
	margin-bottom: 1%;
}
.hotel_data_green_row{
	display: flex;
	margin-bottom: 1%;
}

.hotel_data_blue{
	margin-bottom: 1%;
}
.hotel_data_blue_row{
	display: flex;
	margin-bottom: 1%;
}

.hotel_data_red{

}
.hotel_data_red_row{
	display: flex;
	margin-bottom: 1%;
}
.hotel_data_value{
	margin-left: 2%;
}

.hotel_data_set1{
	margin-bottom: 1%;
}
.hotel_data_set2{
	margin-bottom: 1%;
}
.hotel_data_set3{
	margin-bottom: 1%;
}
</style>
<script type="text/javascript">
$(document).ready(function() {
	$("#areaChart2").hide();
	$("#pieChart2").hide();
	$("#barChart2").hide();
	$("#changeToSales").hide();
	$("#hotel_summary2").hide();
	$("#statistics_status_cnt").hide();
	$(".hotel_month_data").hide();
	$(".hotel_week_data").hide();
	/* 매출량보기,매출액보기의 부모 클릭시. */
	$(".statistics_salesAndCnt").click(function() {
		const child = $(this).children();
		console.log(child);
		child.slideToggle("fast");
		$("#areaCharts").children().slideToggle("fast");
		$("#pieCharts").children().slideToggle("fast");
		$("#barCharts").children().slideToggle("fast");
		$("#hotel_summarys").children().slideToggle("fast");
		$("#statistics_title").children().slideToggle("fast");
	});
	/* 탭 색갈 바꾸기*/
	$('.summary_tab_sales').click(function(){
		  $('.summary_tab_sales').removeClass('tab_on');
		  $(this).addClass('tab_on')
	});
	$('.summary_tab_cnt').click(function(){
		  $('.summary_tab_cnt').removeClass('tab_on');
		  $(this).addClass('tab_on')
	});
	$('.summary_tab_year').click(function(){
		$(".hotel_data").hide();
		$(".hotel_year_data").show();
	});
	$('.summary_tab_month').click(function(){
		$(".hotel_data").hide();
		$(".hotel_month_data").show();
	});
	$('.summary_tab_week').click(function(){
		$(".hotel_data").hide();
		$(".hotel_week_data").show();
	});
	
});
</script>
</head>
<body>
<c:set var="areaList" value="${statisticsMap.areaList}"></c:set>
<c:set var="pieList" value="${statisticsMap.pieList}"></c:set>
<c:set var="barList" value="${statisticsMap.barList}"></c:set>
<c:set var="statisticsVO" value="${statisticsMap.statisticsVO}"></c:set>

<c:forEach var="area" items="${areaList}" varStatus="num">
	<input type="hidden" value="${area.monthSales}" id="monthSale${num.count}">
	<input type="hidden" value="${area.monthSalesCnt}" id="monthSaleCnt${num.count}">
</c:forEach>

<c:forEach var="pie" items="${pieList}" varStatus="num">
	<input type="hidden" value="${pie.weekSales}" id="weekSale${num.count}">
	<input type="hidden" value="${pie.weekSalesCnt}" id="weekSaleCnt${num.count}">
</c:forEach>

<c:forEach var="bar" items="${barList}" varStatus="num">
	<input type="hidden" value="${bar.daySales}" id="daySale${num.count}">
	<input type="hidden" value="${bar.daySalesCnt}" id="daySaleCnt${num.count}">
</c:forEach>
	<div class="card mb-4 py-3 border-bottom-info">
		<div class="card-body">
				<div id="statistics_titles">
				<div id="statistics_title">
					<div id="statistics_status_slaes">호텔 매출액 현황</div>
					<div id="statistics_status_cnt">호텔 매출량 현황</div>
				</div>			
				<div class="statistics_salesAndCnt">
					<div id="changeToCnt">매출량 보기</div>
					<div id="changeToSales">매출액 보기</div>
				</div>
			</div>
		</div>
	</div>
	<form action="roomReservationStatistics.mdo">
		<input type="date" name="strSearchDate" id="searchDate" value="<fmt:formatDate value="${statisticsVO.searchDate}" pattern="yyyy-MM-dd"/>">
		<input type="submit" value="검색">
	</form>
	
	
<div id="charts_wrap">
	<!-- chart_row1 -->
	<div id="chart_row1">
		<!-- Area Charts-->
		<div id="areaCharts">
 			<!-- Area Chart1-->
 			<div id="areaChart1">
				<div class="card shadow mb-4">
					<div class="card-header py-3">
						<h6 class="m-0 font-weight-bold text-primary">연간 매출액 현황</h6>
					</div>
					<div class="card-body">
						<div class="chart-pie pt-4">
							<canvas id="myAreaChart"></canvas>
						</div>
						<hr>
						<br>
					</div>
				</div>
			</div><!-- End Area Chart1 -->
	
			<!-- Area Chart2-->
 			<div id="areaChart2">
				<div class="card shadow mb-4">
					<div class="card-header py-3">
						<h6 class="m-0 font-weight-bold text-primary">연간 매출량 현황</h6>
					</div>
					<div class="card-body">
						<div class="chart-pie pt-4">
							<canvas id="myAreaChart2"></canvas>
						</div>
						<hr>
						<br>
					</div>
				</div>
			</div><!-- End Area Chart2 -->
		</div><!-- End Area Charts -->
		<!-- Donut Charts -->
		<div id="pieCharts">
			<!-- Donut Chart1 -->
			<div id="pieChart1">
				<div class="card shadow mb-4">
					<div class="card-header py-3">
						<h6 class="m-0 font-weight-bold text-primary">월간  매출액 현황</h6>
					</div>
					<div class="card-body">
						<div class="chart-pie pt-4">
							<canvas id="myPieChart"></canvas>
						</div>
						<hr>
						<br> 
					</div>
				</div>	
			</div><!-- End Donut Chart1 -->
			<!-- Donut Chart2 -->
			<div id="pieChart2">
				<div class="card shadow mb-4">
					<div class="card-header py-3">
						<h6 class="m-0 font-weight-bold text-primary">월간  매출량 현황</h6>
					</div>
					<div class="card-body">
						<div class="chart-pie pt-4">
							<canvas id="myPieChart2"></canvas>
						</div>
						<hr>
						<br> 
					</div>
				</div>	
			</div><!-- End Donut Chart2 -->
		</div><!-- End Donut Charts -->
	</div><!-- chart_row1 -->
	<div id="chart_row2">
		<!-- Bar Charts -->
		<div id="barCharts">
			<!-- Bar Chart1 -->
			<div id="barChart1">		
				<div class="card shadow mb-4">
					<div class="card-header py-3">
						<h6 class="m-0 font-weight-bold text-primary">주간  매출액 현황</h6>
					</div>
					<div class="card-body">
						<div class="chart-pie pt-4">
							<canvas id="myBarChart"></canvas>
						</div>
						<hr>
						<br>  
					</div>
				</div>	
			</div><!-- End Bar Chart1 -->
			<!-- Bar Chart2 -->
			<div id="barChart2">		
				<div class="card shadow mb-4">
					<div class="card-header py-3">
						<h6 class="m-0 font-weight-bold text-primary">주간  매출량 현황</h6>
					</div>
					<div class="card-body">
						<div class="chart-pie pt-4">
							<canvas id="myBarChart2"></canvas>
						</div>
						<hr>
						<br>  
					</div>
				</div>	
			</div><!-- End Bar Chart2 -->
		</div><!-- End Bar Charts -->
		<!-- hotel_summarys -->
		<div id="hotel_summarys">
			<!-- hotel_summary1 -->
			<div id="hotel_summary1">
				<div class="card shadow mb-4">
					<div class="card-header py-3" id="hotel_summary_head">
						<h6 class="m-0 font-weight-bold text-primary" id="hotel_summary_head_title">
							매출액 요약  
						</h6>
						<div id="summary_tabs">
							<div class="summary_tab_year summary_tab summary_tab_sales tab_on">연간 매출액</div>
							<div class="summary_tab_month summary_tab summary_tab_sales">월간 매출액</div>
							<div class="summary_tab_week summary_tab summary_tab_sales">주간 매출액</div>
						</div>
					</div>
					<div class="card-body">
						<div class="chart-pie pt-4">
							<div class="hotel_year_data hotel_data">
								<div class="hotel_data_green">
									<div class="hotel_data_green_row">
										<div class="hotel_data_key hotel_data_set1">년간 총 매출액 : </div>
										<div class="hotel_data_value hotel_data_set1">
											<fmt:formatNumber value="${statisticsVO.yearTotalSales}" />원
										</div>
									</div>
									<div class="hotel_data_green_row">
										<div class="hotel_data_key hotel_data_set1">년간 평균 매출액 : </div>
										<div class="hotel_data_value hotel_data_set1">
											<c:set var="yearEverSales" value="${statisticsVO.yearTotalSales / 12}"></c:set>
											<c:set var="yearEverSalesUpper" value="${yearEverSales + (1000-(yearEverSales%1000))%1000}" ></c:set>
											<fmt:formatNumber value="${yearEverSalesUpper}" />원
										</div>
									</div>
								</div>
								<div class="hotel_data_blue">
									<div class="hotel_data_blue_row">
										<div class="hotel_data_key hotel_data_set2">월간 최대 매출 액 : </div>
										<div class="hotel_data_value hotel_data_set2">
											<fmt:formatNumber value="${statisticsVO.maxSalesDuringMonth}" />원
										</div>
									</div>
									<div class="hotel_data_blue_row">
										<div class="hotel_data_key hotel_data_set2">최대 매출(액) 월 : </div>
										<div class="hotel_data_value hotel_data_set2">
											<c:forEach items="${statisticsVO.maxSalesMonthList}" var="maxSalesMonth" varStatus="num">
												<c:choose>
													<c:when test="${num.count eq 1 }">
														${maxSalesMonth}월
													</c:when>
													<c:otherwise>
														,${maxSalesMonth}월
													</c:otherwise>
												</c:choose>
											</c:forEach>
										</div>
									</div>
								</div>
								<div class="hotel_data_red">
									<div class="hotel_data_red_row">
										<div class="hotel_data_key hotel_data_set3">월간 최소 매출 액 : </div>
										<div class="hotel_data_value hotel_data_set3">
											<fmt:formatNumber value="${statisticsVO.minSalesDuringMonth}" />원
										</div>
									</div>
									<div class="hotel_data_red_row">
										<div class="hotel_data_key hotel_data_set3">최소 매출(액) 월 : </div>
										<div class="hotel_data_value hotel_data_set3">
											<c:forEach items="${statisticsVO.minSalesMonthList}" var="minSalesMonth" varStatus="num">
												<c:choose>
													<c:when test="${num.count eq 1 }">
														${minSalesMonth}월
													</c:when>
													<c:otherwise>
														,${minSalesMonth}월
													</c:otherwise>
												</c:choose>
											</c:forEach>
										</div>
									</div>	
								</div>
							</div>
	 						<div class="hotel_month_data hotel_data">
	 							<div class="hotel_data_green">
	 								<div class="hotel_data_green_row">
	 									<div class="hotel_data_key hotel_data_set1">월간 총 매출액 :  </div>
										<div class="hotel_data_value hotel_data_set1">
											<fmt:formatNumber value="${statisticsVO.monthTotalSales}" />원
										</div>
									</div>
									<div class="hotel_data_green_row">
	 									<div class="hotel_data_key hotel_data_set1">월간 평균 매출액 :  </div>
										<div class="hotel_data_value hotel_data_set1">
											<c:set var="monthEverSales" value="${statisticsVO.monthTotalSales / 6}"></c:set>
											<c:set var="monthEverSalesUpper" value="${monthEverSales + (1000-(monthEverSales%1000))%1000}" ></c:set>
											<fmt:formatNumber value="${monthEverSalesUpper}" />원
										</div>
									</div>
								</div>
								<div class="hotel_data_blue">
									<div class="hotel_data_blue_row">	
										<div class="hotel_data_key hotel_data_set2">주간 최대 매출 액 : </div>
										<div class="hotel_data_value hotel_data_set2">
											<fmt:formatNumber value="${statisticsVO.maxSalesDuringWeek}" />원
										</div>
									</div>	
									<div class="hotel_data_blue_row">
										<div class="hotel_data_key hotel_data_set2">최대 매출(액) 주 : </div>
										<div class="hotel_data_value hotel_data_set2">
											<c:forEach items="${statisticsVO.maxSalesWeekList}" var="maxSalesWeek" varStatus="num">
												<c:choose>
													<c:when test="${num.count eq 1 }">
														${maxSalesWeek}주 차
													</c:when>
													<c:otherwise>
														,${maxSalesWeek}주 차
													</c:otherwise>
												</c:choose>
											</c:forEach>
										</div>
									</div>	
								</div>
								<div class="hotel_data_red">
									<div class="hotel_data_red_row">
										<div class="hotel_data_key hotel_data_set3">주간 최소 매출 액 : </div>
										<div class="hotel_data_value hotel_data_set3">
											<fmt:formatNumber value="${statisticsVO.minSalesDuringWeek}" />원
										</div>
									</div>
									<div class="hotel_data_red_row">
										<div class="hotel_data_key hotel_data_set3">최소 매출(액) 주 : </div>
										<div class="hotel_data_value hotel_data_set3">
											<c:forEach items="${statisticsVO.minSalesWeekList}" var="minSalesWeek" varStatus="num">
												<c:choose>
													<c:when test="${num.count eq 1 }">
														${minSalesWeek}주 차
													</c:when>
													<c:otherwise>
														,${minSalesWeek}주 차
													</c:otherwise>
												</c:choose>
											</c:forEach>
										</div>
									</div>
								</div>
							</div>
							<div class="hotel_week_data hotel_data">
								<div class="hotel_data_green">
									<div class="hotel_data_green_row">
										<div class="hotel_data_key hotel_data_set1">주간 총 매출액 :  </div>
										<div class="hotel_data_value hotel_data_set1">
											<fmt:formatNumber value="${statisticsVO.weekTotalSales}" />원
										</div>
									</div>
									<div class="hotel_data_green_row">
										<div class="hotel_data_key hotel_data_set1">주간 평균 매출액 :  </div>
										<div class="hotel_data_value hotel_data_set1">
											<c:set var="weekEverSales" value="${statisticsVO.weekTotalSales / 7}"></c:set>
											<c:set var="weekEverSalesUpper" value="${weekEverSales + (1000-(weekEverSales%1000))%1000}" ></c:set>
											<fmt:formatNumber value="${weekEverSalesUpper}" />원
										</div>
									</div>
								</div>
								<div class="hotel_data_blue">
									<div class="hotel_data_blue_row">
										<div class="hotel_data_key hotel_data_set2">일간 최대 매출 액 : </div>
										<div class="hotel_data_value hotel_data_set2">
											<fmt:formatNumber value="${statisticsVO.maxSalesDuringDay}" />원
										</div>
									</div>
									<div class="hotel_data_blue_row">
										<div class="hotel_data_key hotel_data_set2">최대 매출(액) 요일 : </div>
										<div class="hotel_data_value hotel_data_set2">
											<c:forEach items="${statisticsVO.maxSalesDayList}" var="maxSalesDay" varStatus="num">
												<c:choose>
													<c:when test="${maxSalesDay eq 1}">
														<c:set var="weekDay" value="일요일"></c:set>
													</c:when>
													<c:when test="${maxSalesDay eq 2}">
														<c:set var="weekDay" value="월요일"></c:set>
													</c:when>
													<c:when test="${maxSalesDay eq 3}">
														<c:set var="weekDay" value="화요일"></c:set>
													</c:when>
													<c:when test="${maxSalesDay eq 4}">
														<c:set var="weekDay" value="수요일"></c:set>
													</c:when>
													<c:when test="${maxSalesDay eq 5}">
														<c:set var="weekDay" value="목요일"></c:set>
													</c:when>
													<c:when test="${maxSalesDay eq 6}">
														<c:set var="weekDay" value="금요일"></c:set>
													</c:when>
													<c:when test="${maxSalesDay eq 7}">
														<c:set var="weekDay" value="토요일"></c:set>
													</c:when>
												</c:choose>
												<c:choose>
													<c:when test="${num.count eq 1 }">
														${weekDay}
													</c:when>
													<c:otherwise>
														,${weekDay}
													</c:otherwise>
												</c:choose>
											</c:forEach>
										</div>
									</div>
								</div>
								<div class="hotel_data_red">
									<div class="hotel_data_red_row">	
										<div class="hotel_data_key hotel_data_set3">일간 최소 매출 액 : </div>
										<div class="hotel_data_value hotel_data_set3">
											<fmt:formatNumber value="${statisticsVO.minSalesDuringDay}" />원
										</div>
									</div>
									<div class="hotel_data_red_row">	
										<div class="hotel_data_key hotel_data_set3">최소 매출(액) 요일 : </div>
										<div class="hotel_data_value hotel_data_set3">
											<c:forEach items="${statisticsVO.minSalesDayList}" var="minSalesDay" varStatus="num">
												<c:choose>
													<c:when test="${minSalesDay eq 1}">
														<c:set var="weekDay" value="일요일"></c:set>
													</c:when>
													<c:when test="${minSalesDay eq 2}">
														<c:set var="weekDay" value="월요일"></c:set>
													</c:when>
													<c:when test="${minSalesDay eq 3}">
														<c:set var="weekDay" value="화요일"></c:set>
													</c:when>
													<c:when test="${minSalesDay eq 4}">
														<c:set var="weekDay" value="수요일"></c:set>
													</c:when>
													<c:when test="${minSalesDay eq 5}">
														<c:set var="weekDay" value="목요일"></c:set>
													</c:when>
													<c:when test="${minSalesDay eq 6}">
														<c:set var="weekDay" value="금요일"></c:set>
													</c:when>
													<c:when test="${minSalesDay eq 7}">
														<c:set var="weekDay" value="토요일"></c:set>
													</c:when>
												</c:choose>
												<c:choose>
													<c:when test="${num.count eq 1 }">
														${weekDay}
													</c:when>
													<c:otherwise>
														,${weekDay}
													</c:otherwise>
												</c:choose>
											</c:forEach>
										</div>
									</div>
								</div>
							</div>
						</div>
						<hr>
						<br>  
					</div>
				</div>	
			</div><!-- End hotel_summary1 -->
			<!-- hotel_summary2 -->
			<div id="hotel_summary2">
				<div class="card shadow mb-4">
					<div class="card-header py-3" id="hotel_summary_head">
						<h6 class="m-0 font-weight-bold text-primary" id="hotel_summary_head_title">
							매출량 요약  
						</h6>
						<div id="summary_tabs">
							<div class="summary_tab_year summary_tab summary_tab_cnt tab_on">연간 매출량</div>
							<div class="summary_tab_month summary_tab summary_tab_cnt">월간 매출량</div>
							<div class="summary_tab_week summary_tab summary_tab_cnt">주간 매출량</div>
						</div>
					</div>
					<div class="card-body">
						<div class="chart-pie pt-4">
							<div class="hotel_year_data hotel_data">
								<div class="hotel_data_green">
									<div class="hotel_data_green_row">
										<div class="hotel_data_key hotel_data_set1">년간 총 매출 량: </div>
										<div class="hotel_data_value hotel_data_set1">
											<fmt:formatNumber value="${statisticsVO.yearTotalSalesCnt}" />건
										</div>
									</div>
									<div class="hotel_data_green_row">
										<div class="hotel_data_key hotel_data_set1">년간 평균 매출 량: </div>
										<div class="hotel_data_value hotel_data_set1">
											<c:set var="yearEverSalesCnt"  value="${statisticsVO.yearTotalSalesCnt / 12}"></c:set>
											<c:set var="yearEverSalesCntUpper" value="${yearEverSalesCnt+((yearEverSalesCnt%1>0.5)?(1-(yearEverSalesCnt%1))%1:-(yearEverSalesCnt%1))}" ></c:set>
											<fmt:formatNumber value="${yearEverSalesCntUpper}" />건
										</div>
									</div>
								</div>
								<div class="hotel_data_blue">
									<div class="hotel_data_blue_row">
										<div class="hotel_data_key hotel_data_set2">월간 최대 매출 량 : </div>
										<div class="hotel_data_value hotel_data_set2">
											<fmt:formatNumber value="${statisticsVO.maxSalesCntDuringMonth}" />건
										</div>
									</div>
									<div class="hotel_data_blue_row">	
										<div class="hotel_data_key hotel_data_set2">최대 매출(량) 월 : </div>
										<div class="hotel_data_value hotel_data_set2">
											<c:forEach items="${statisticsVO.maxSalesCntMonthList}" var="maxSalesCntMonth" varStatus="num">
												<c:choose>
													<c:when test="${num.count eq 1 }">
														${maxSalesCntMonth}월
													</c:when>
													<c:otherwise>
														,${maxSalesCntMonth}월
													</c:otherwise>
												</c:choose>
											</c:forEach>
										</div>
									</div>
								</div>
								<div class="hotel_data_red">
									<div class="hotel_data_red_row">		
										<div class="hotel_data_key hotel_data_set3">월간 최소 매출 량 : </div>
										<div class="hotel_data_value hotel_data_set3">
											<fmt:formatNumber value="${statisticsVO.minSalesCntDuringMonth}" />건
										</div>
									</div>
									<div class="hotel_data_red_row">
										<div class="hotel_data_key hotel_data_set3">최소 매출(량) 월 : </div>
										<div class="hotel_data_value hotel_data_set3">
											<c:forEach items="${statisticsVO.minSalesCntMonthList}" var="minSalesCntMonth" varStatus="num">
												<c:choose>
													<c:when test="${num.count eq 1 }">
														${minSalesCntMonth}월
													</c:when>
													<c:otherwise>
														,${minSalesCntMonth}월
													</c:otherwise>
												</c:choose>
											</c:forEach>
										</div>
									</div>
								</div>
							</div>
	 						<div class="hotel_month_data hotel_data">
	 							<div class="hotel_data_green">
									<div class="hotel_data_green_row">
	 									<div class="hotel_data_key hotel_data_set1">월간 총 매출 량:  </div>
										<div class="hotel_data_value hotel_data_set1">
											<fmt:formatNumber value="${statisticsVO.monthTotalSalesCnt}" />건
										</div>
									</div>
									<div class="hotel_data_green_row">
	 									<div class="hotel_data_key hotel_data_set1">월간 평균 매출 량:  </div>
										<div class="hotel_data_value hotel_data_set1">
											<c:set var="monthEverSalesCnt" value="${statisticsVO.monthTotalSalesCnt / 6}"></c:set>
											<c:set var="monthEverSalesCntUpper" value="${monthEverSalesCnt+((monthEverSalesCnt%1>0.5)?(1-(monthEverSalesCnt%1))%1:-(monthEverSalesCnt%1))}" ></c:set>
											<fmt:formatNumber value="${monthEverSalesCntUpper}" />건
										</div>
									</div>
								</div>
								<div class="hotel_data_blue">
									<div class="hotel_data_blue_row">
										<div class="hotel_data_key hotel_data_set2">주간 최대 매출 량 : </div>
										<div class="hotel_data_value hotel_data_set2">
											<fmt:formatNumber value="${statisticsVO.maxSalesCntDuringWeek}" />건
										</div>
									</div>	
									<div class="hotel_data_blue_row">	
										<div class="hotel_data_key hotel_data_set2">최대 매출(량) 주 : </div>
										<div class="hotel_data_value hotel_data_set2">
											<c:forEach items="${statisticsVO.maxSalesCntWeekList}" var="maxSalesCntWeek" varStatus="num">
												<c:choose>
													<c:when test="${num.count eq 1 }">
														${maxSalesCntWeek}주 차
													</c:when>
													<c:otherwise>
														,${maxSalesCntWeek}주 차
													</c:otherwise>
												</c:choose>
											</c:forEach>
										</div>
									</div>
								</div>
								<div class="hotel_data_red">
									<div class="hotel_data_red_row">
										<div class="hotel_data_key hotel_data_set3">주간 최소 매출 량 : </div>
										<div class="hotel_data_value hotel_data_set3">
											<fmt:formatNumber value="${statisticsVO.minSalesCntDuringWeek}" />건
										</div>
									</div>
									<div class="hotel_data_red_row">
										<div class="hotel_data_key hotel_data_set3">최소 매출(량) 주 : </div>
										<div class="hotel_data_value hotel_data_set3">
											<c:forEach items="${statisticsVO.minSalesCntWeekList}" var="minSalesCntWeek" varStatus="num">
												<c:choose>
													<c:when test="${num.count eq 1 }">
														${minSalesCntWeek}주 차
													</c:when>
													<c:otherwise>
														,${minSalesCntWeek}주 차
													</c:otherwise>
												</c:choose>
											</c:forEach>
										</div>
									</div>
								</div>
							</div>
							<div class="hotel_week_data hotel_data">
								<div class="hotel_data_green">
									<div class="hotel_data_green_row">
										<div class="hotel_data_key hotel_data_set1">주간 총 매출량 :  </div>
										<div class="hotel_data_value hotel_data_set1">
											<fmt:formatNumber value="${statisticsVO.weekTotalSalesCnt}" />건
										</div>
									</div>
									<div class="hotel_data_green_row">
										<div class="hotel_data_key hotel_data_set1">주간 평균 매출량 :  </div>
										<div class="hotel_data_value hotel_data_set1">
											<c:set var="weekEverSalesCnt" value="${statisticsVO.weekTotalSalesCnt / 7}"></c:set>
											<c:set var="weekEverSalesCntUpper" value="${weekEverSalesCnt+((weekEverSalesCnt%1>0.5)?(1-(weekEverSalesCnt%1))%1:-(weekEverSalesCnt%1))}" ></c:set>
											<fmt:formatNumber value="${weekEverSalesCntUpper}" />건
										</div>
									</div>
								</div>
								<div class="hotel_data_blue">
									<div class="hotel_data_blue_row">
										<div class="hotel_data_key hotel_data_set2">일간 최대 매출 량 : </div>
										<div class="hotel_data_value hotel_data_set2">
											<fmt:formatNumber value="${statisticsVO.maxSalesCntDuringDay}" />건
										</div>
									</div>
									<div class="hotel_data_blue_row">
										<div class="hotel_data_key hotel_data_set2">최대 매출(량) 요일 : </div>
										<div class="hotel_data_value hotel_data_set2">
											<c:forEach items="${statisticsVO.maxSalesCntDayList}" var="maxSalesCntDay" varStatus="num">
												<c:choose>
													<c:when test="${maxSalesCntDay eq 1}">
														<c:set var="weekDay" value="일요일"></c:set>
													</c:when>
													<c:when test="${maxSalesCntDay eq 2}">
														<c:set var="weekDay" value="월요일"></c:set>
													</c:when>
													<c:when test="${maxSalesCntDay eq 3}">
														<c:set var="weekDay" value="화요일"></c:set>
													</c:when>
													<c:when test="${maxSalesCntDay eq 4}">
														<c:set var="weekDay" value="수요일"></c:set>
													</c:when>
													<c:when test="${maxSalesCntDay eq 5}">
														<c:set var="weekDay" value="목요일"></c:set>
													</c:when>
													<c:when test="${maxSalesCntDay eq 6}">
														<c:set var="weekDay" value="금요일"></c:set>
													</c:when>
													<c:when test="${maxSalesCntDay eq 7}">
														<c:set var="weekDay" value="토요일"></c:set>
													</c:when>
												</c:choose>
												<c:choose>
													<c:when test="${num.count eq 1 }">
														${weekDay}
													</c:when>
													<c:otherwise>
														,${weekDay}
													</c:otherwise>
												</c:choose>
											</c:forEach>
										</div>
									</div>
								</div>
								<div class="hotel_data_red">
									<div class="hotel_data_red_row">
										<div class="hotel_data_key hotel_data_set3">일간 최소 매출 량 : </div>
										<div class="hotel_data_value hotel_data_set3">
											<fmt:formatNumber value="${statisticsVO.minSalesCntDuringDay}" />건
										</div>
									</div>
									<div class="hotel_data_red_row">
										<div class="hotel_data_key hotel_data_set3">최소 매출(량) 요일 : </div>
										<div class="hotel_data_value hotel_data_set3">
											<c:forEach items="${statisticsVO.minSalesCntDayList}" var="minSalesCntDay" varStatus="num">
												<c:choose>
													<c:when test="${minSalesCntDay eq 1}">
														<c:set var="weekDay" value="일요일"></c:set>
													</c:when>
													<c:when test="${minSalesCntDay eq 2}">
														<c:set var="weekDay" value="월요일"></c:set>
													</c:when>
													<c:when test="${minSalesCntDay eq 3}">
														<c:set var="weekDay" value="화요일"></c:set>
													</c:when>
													<c:when test="${minSalesCntDay eq 4}">
														<c:set var="weekDay" value="수요일"></c:set>
													</c:when>
													<c:when test="${minSalesCntDay eq 5}">
														<c:set var="weekDay" value="목요일"></c:set>
													</c:when>
													<c:when test="${minSalesCntDay eq 6}">
														<c:set var="weekDay" value="금요일"></c:set>
													</c:when>
													<c:when test="${minSalesCntDay eq 7}">
														<c:set var="weekDay" value="토요일"></c:set>
													</c:when>
												</c:choose>
												<c:choose>
													<c:when test="${num.count eq 1 }">
														${weekDay}
													</c:when>
													<c:otherwise>
														,${weekDay}
													</c:otherwise>
												</c:choose>
											</c:forEach>
										</div>
									</div>
								</div>
							</div>
						</div>
						<hr>
						<br>  
					</div>
				</div>	
			</div>
		</div><!-- End hotel_summarys -->
	</div><!-- End chartRow2 -->
</div><!-- End charts_wrap -->	
	
<script type="text/javascript">
	let arrMonthSale = new Array();
	let arrMonthSaleCnt = new Array();
	let arrWeekSale = new Array();
	let arrWeekSaleCnt = new Array();
	let arrDaySale = new Array();
	let	arrDaySaleCnt = new Array();
	
	for (var i = 1; i < 13; i++) {
		const monthSale = $("#monthSale" + i + "").val();
		const monthSaleCnt = $("#monthSaleCnt" + i + "").val(); 
		arrMonthSale.push(monthSale);
		arrMonthSaleCnt.push(monthSaleCnt);
	}
	
	for (var i = 1; i < 6; i++) {
		const weekSale = $("#weekSale" + i + "").val();
		const weekSaleCnt = $("#weekSaleCnt" + i + "").val(); 
		arrWeekSale.push(weekSale);
		arrWeekSaleCnt.push(weekSaleCnt);
	}
	for (var i = 1; i < 8; i++) {
		const daySale = $("#daySale" + i + "").val();
		const daySaleCnt = $("#daySaleCnt" + i + "").val(); 
		arrDaySale.push(daySale);
		arrDaySaleCnt.push(daySaleCnt);
	}
</script>
<script src="resources/admin/vendor/chart.js/Chart.min.js"></script>
<script src="resources/admin/js/roomReservation/reservation_areaChart.js"></script>
<script src="resources/admin/js/roomReservation/reservation_barChart.js"></script>
<script src="resources/admin/js/roomReservation/reservation_pieChart.js"></script>
<script src="resources/admin/js/roomReservation/reservation_areaChart2.js"></script>
<script src="resources/admin/js/roomReservation/reservation_barChart2.js"></script>
<script src="resources/admin/js/roomReservation/reservation_pieChart2.js"></script>	
<script>	
	for (let i = 0; i < arrMonthSale.length; i++) {
		myLineChart.data.datasets[0].data[i] = arrMonthSale[i];  	
	}
	for (var i = 0; i < arrMonthSaleCnt.length; i++) {
		myLineChart2.data.datasets[0].data[i] = arrMonthSaleCnt[i];
	}
	for (let i = 0; i < arrWeekSale.length; i++) {
		myPieChart.data.datasets[0].data[i] = arrWeekSale[i];  	
	}
	for (let i = 0; i < arrWeekSaleCnt.length; i++) {
		myPieChart2.data.datasets[0].data[i] = arrWeekSaleCnt[i];  	
	}
	for (let i = 0; i < arrDaySale.length; i++) {
		myBarChart.data.datasets[0].data[i] = arrDaySale[i];  	
	}
	for (let i = 0; i < arrDaySaleCnt.length; i++) {
		myBarChart2.data.datasets[0].data[i] = arrDaySaleCnt[i];  	
	}
	
	myLineChart.update();
	myLineChart2.update();
	myPieChart.update();
	myPieChart2.update();
	myBarChart.update();
	myBarChart2.update();
</script>
</body>
</html>