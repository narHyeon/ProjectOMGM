<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    .sidebar {
        height: 100%;
    }
</style>
<!-- Sidebar -->
<ul class="navbar-nav bg-gradient-info sidebar sidebar-dark accordion"
        id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center"
            href="adminMain.mdo">
        <div class="sidebar-brand-icon rotate-n-15">
            <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3">
            오묘가묘 <sup>관리자</sup>
        </div>
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider my-0">

    <!-- Nav Item - Dashboard -->
    <li class="nav-item active"><a class="nav-link" href="adminMain.mdo">
        <i class="fas fa-fw fa-tachometer-alt"></i> <span>Dashboard</span>
    </a></li>

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Heading -->
    <div class="sidebar-heading">Interface</div>

    <!-- Nav Item - Pages Collapse Menu -->
    <li class="nav-item"><a class="nav-link collapsed" href="#"
                            data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true"
                            aria-controls="collapseTwo"> <i class="fas fa-fw fa-cog"></i> <span>운영관리</span>
    </a>
        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
             data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">운영관리:</h6>
<%--                <a class="collapse-item" href="buttons.html">공지사항/이벤트 - 보류</a>--%>
				<a class="collapse-item" href="adminReview.mdo">이용후기</a>
				<a class="collapse-item" href="categoryList.mdo">질문 카테고리</a>
				<a class="collapse-item" href="selectListFAQ.mdo">FAQ</a>
            </div>
        </div>
    </li>

    <!-- Nav Item - Utilities Collapse Menu -->
    <li class="nav-item"><a class="nav-link collapsed" href="#"
                            data-toggle="collapse" data-target="#collapseUtilities"
                            aria-expanded="true" aria-controls="collapseUtilities">
		<i class="fas fa-fw fa-wrench"></i> <span>회원관리</span>
    </a>
        <div id="collapseUtilities" class="collapse"
             aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">회원관리:</h6>
                <a class="collapse-item" href="memberTable.mdo">오묘가묘 가족 목록</a>
				<a class="collapse-item" href="adminTable.mdo">관리자 목록</a>
            </div>
        </div>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Heading -->
    <div class="sidebar-heading">Addons</div>

    <!-- Nav Item - Pages Collapse Menu -->
    <li class="nav-item"><a class="nav-link collapsed" href="#"
                            data-toggle="collapse" data-target="#collapsePages"
                            aria-expanded="true" aria-controls="collapsePages">
		<i class="fas fa-fw fa-folder"></i> <span>HOTEL</span>
    </a>
        <div id="collapsePages" class="collapse"
             aria-labelledby="headingPages" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">호텔:</h6>
					<a class="collapse-item" href="roomReservationList.mdo">호텔 예약</a>
					<a class="collapse-item" href="roomList.mdo">객실 관리</a>
					<a class="collapse-item" href="catCareLogList.mdo">냥박 일지</a>
					<a class="collapse-item" href="roomReservationStatistics.mdo">호텔 정산</a>
                <div class="collapse-divider"></div>
            </div>
        </div>
    </li>

    <!-- Nav Item - Pages Collapse Menu -->
    <li class="nav-item"><a class="nav-link collapsed" href="#"
                            data-toggle="collapse" data-target="#collapsePages2"
                            aria-expanded="true" aria-controls="collapsePages"> <i
            class="fas fa-fw fa-folder"></i> <span>KINDERGARDEN</span>
    </a>
        <div id="collapsePages2" class="collapse"
             aria-labelledby="headingPages" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">유치원:</h6>
					<a class="collapse-item" href="kinderGardenReservation.mdo">유치원 예약</a>
					<a class="collapse-item" href="kinderGardenSchedule.mdo">유치원 시간표</a>
					<a class="collapse-item" href="kinderGardenScheduleMonth.mdo">유치원 달력</a>
					<a class="collapse-item" href="kinderGardenCalculate.mdo">유치원 정산</a>
            </div>
        </div>
    </li>

    <!-- Nav Item - Pages Collapse Menu -->
    <li class="nav-item"><a class="nav-link collapsed" href="#"
                            data-toggle="collapse" data-target="#collapsePages3"
                            aria-expanded="true" aria-controls="collapsePages"> <i
            class="fas fa-fw fa-folder"></i> <span>Service</span>
    </a>
        <div id="collapsePages3" class="collapse"
             aria-labelledby="headingPages" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">서비스 관리:</h6>
                <a class="collapse-item" href="pickUpList.mdo">픽업 서비스</a>
                <a class="collapse-item" href="message.mdo">문자알림 서비스 </a>
            </div>
        </div>
    </li>

    <!-- Nav Item - Pages Collapse Menu -->
    <li class="nav-item"><a class="nav-link collapsed" href="#"
                            data-toggle="collapse" data-target="#collapsePages4"
                            aria-expanded="true" aria-controls="collapsePages">
		<i class="fas fa-fw fa-folder"></i> <span>MALL</span>
    </a>
        <div id="collapsePages4" class="collapse"
             aria-labelledby="headingPages" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">상품:</h6>
					<a class="collapse-item" href="productRegister.mdo">상품등록</a>
					<a class="collapse-item" href="productInquiryToy.mdo">상품조회</a>
                <div class="collapse-divider"></div>
                <h6 class="collapse-header">판매:</h6>
					<a class="collapse-item" href="productOrder.mdo">주문현황</a>
                <div class="collapse-divider"></div>
                <h6 class="collapse-header">관리:</h6>
					<a class="collapse-item" href="calculateTest.mdo">MALL 정산 </a>
            </div>
        </div>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">

    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>

</ul>
<!-- End of Sidebar -->
