<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!-- adminInc/top.jsp -->    
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->


<!-- css start -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/adminResources/style.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/adminResources/css/animate.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/adminResources/css/bootstrap.min.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/adminResources/css/classy-nav.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/adminResources/css/font-awesome.min.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/adminResources/css/owl.carousel.css"/>
<!-- css end -->


<!-- Title start -->
<title>플렉스 딜리버리 : 관리자 페이지</title>
<!-- Title end -->

<!-- Favicon -->
<link rel="icon" href="${pageContext.request.contextPath}/resources/adminResources/img/core-img/favicon.ico">

</head>
<body>

<!-- Preloader -->
    <div id="preloader">
        <div class="preload-content">
            <div id="original-load"></div>
        </div>
    </div>

    <!-- ##### Header Area Start ##### -->
    <header class="header-area">

        <!-- Top Header Area -->
        <div class="top-header" style="background-color: white;">
            <div class="container h-100">
                <div class="row h-100 align-items-center">
                    <!-- Breaking News Area -->
                    <div class="col-12 col-sm-4">
                        <div class="breaking-news-area">
                            <div id="breakingNewsTicker" class="ticker">
                                <ul>
                                    <li><a href="<c:url value='/member/index.do'/>">고객 사이트로 이동</a></li>
                                    <li><a href="<c:url value='/owner/index.do'/>">사장님 사이트로 이동</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- Top Social Area -->
                    <div class="col-12 col-sm-8">
                        <div class="top-social-area">
                        <c:if test="${!empty sessionScope.adminId}">
							<span style="color:gray;font-size: 1em">
							관리자 [${sessionScope.adminName}] 님 </span>
                            <a href="<c:url value='/admin/myPage/myPage.do' />" data-toggle="tooltip" data-placement="bottom" title="Mypage">
                            	<i  aria-hidden="false">마이페이지</i></a>
                            <a href="<c:url value='/logout.do?idx=3' />" data-toggle="tooltip" data-placement="bottom" title="Logout">
                            	<i  aria-hidden="false">로그아웃</i></a>
						</c:if>
						<c:if test="${empty sessionScope.adminId}">
                            <a href="<c:url value='/admin/login/login.do' />" data-toggle="tooltip" data-placement="bottom" title="Login">
                            	<i  aria-hidden="false">로그인</i></a>
						</c:if>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- Logo Area -->
        <div class="logo-area text-center" style="background-color: white;">
            <div class="container h-100">
                <div class="row h-100 align-items-center">
                    <div class="col-12">
                        <a href="<c:url value='/admin/index.do' />" class="original-logo">
                        <img src="${pageContext.request.contextPath}/resources/imgs/FD.png" alt="FlexDeliveryLogo" style="width: 300px;"></a>
                		
                    </div>
                </div>
            </div>
        </div>

        <!-- Nav Area -->
        <div class="original-nav-area" id="stickyNav" style="background-color: white;">
            <div class="classy-nav-container breakpoint-off">
                <div class="container">
                    <!-- Classy Menu -->
                    <nav class="classy-navbar justify-content-between">

                        <!-- Navbar Toggler -->
                        <div class="classy-navbar-toggler" style="margin-left: auto;">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>

                        <!-- Menu -->
                        <div class="classy-menu" id="originalNav" style="margin: auto;">
                            <!-- close btn -->
                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                            </div>

                            <!-- Nav Start -->
                            <div class="classynav">
                                <ul>
                                	<li>‍🔎<li>
                                    <li><a href="<c:url value='/admin/menu1/memberMg.do' />"><span>회원 관리</span></a>
                                        <ul class="dropdown">
                                            <li><a href="<c:url value='/admin/menu1/member.do' />">회원 조회</a></li>
                                            <li><a href="<c:url value='/admin/menu1/memberGrade.do' />">등급 관리</a></li>
                                            <li><a href="<c:url value='/admin/menu1/review.do' />">리뷰 관리</a></li>
                                        </ul>
                                    
                                    </li>
                                    <li><a href="<c:url value='/admin/menu2/storeMg.do' />">점포 관리</a>
                                        <ul class="dropdown">
                                            <li><a href="<c:url value='/admin/menu2/approval.do' />">승인 관리</a></li>
                                            <li><a href="<c:url value='/admin/menu2/store.do' />">점포 조회</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">사장님광장</a>
                                        <ul class="dropdown">
                                            <li><a href="<c:url value='/admin/menu3/notice.do' />">공지사항</a></li>
                                            <li><a href="<c:url value='/admin/menu3/event.do' />">이벤트</a></li>
                                            <li><a href="<c:url value='/admin/menu3/honeytip.do' />">사장님꿀팁</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="<c:url value='/admin/menu4/introduce.do' />">플렉스 딜리버리 소개</a></li>
                                    <li><a href="#">고객센터</a>
                                         <ul class="dropdown">
                                            <li><a href="<c:url value='/admin/menu5/faq.do' />">자주 하는 질문</a></li>
                                            <li><a href="<c:url value='/admin/menu5/oneToOne.do' />">1:1 문의</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">부가기능</a>
                                         <ul class="dropdown">
                                            <li><a href="#">음식 메뉴 카테고리</a>
	                                            <ul class="dropdown">
		                                            <li><a href="<c:url value="/admin/menu6/largeCategory.do" />">대분류 카테고리</a></li>
		                                            <li><a href="<c:url value="/admin/menu6/mediumCategory.do" />">중분류 카테고리</a></li>                                           
	                                            </ul>
                                            </li>
                                            <li><a href="#">오늘 뭐 먹지</a>
	                                            <ul class="dropdown">
		                                            <li><a href="<c:url value="/admin/menu6/todayFoodsRandom.do" />">랜덤 추천</a></li>
		                                            <li><a href="<c:url value="/admin/menu6/todayFoodsWeather.do" />">날씨별 추천</a></li>                                           
	                                            </ul>
                                            </li>
                                            <li><a href="#">쿠폰 관리</a>
	                                            <ul class="dropdown">
		                                            <li><a href="<c:url value="/admin/menu6/regularCoupon.do" />">정기쿠폰 관리</a></li>
		                                            <li><a href="<c:url value="/admin/menu6/eventCoupon.do" />">이벤트쿠폰 관리</a></li>                                           
	                                            </ul>
                                            </li>
                                            <li><a href="#">선물하기</a>
	                                            <ul class="dropdown">
		                                            <li><a href="<c:url value="/admin/menu6/giftCategory.do" />">카테고리 관리</a></li>
		                                            <li><a href="<c:url value="/admin/menu6/giftProduct.do" />">상품 관리</a></li>
		                                            <li><a href="<c:url value="/admin/menu6/giftPrice.do" />">금액 관리</a></li>                                           
	                                            </ul>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a href="<c:url value='/admin/menu7/chartDefault.do' />"><span>통계</span></a></li>
                                </ul>
                            </div>
                            <!-- Nav End -->
                            
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ##### Header Area End ##### -->
    
    
  <!-- jQuery (Necessary for All JavaScript Plugins) -->
    <script src="${pageContext.request.contextPath}/resources/adminResources/js/jquery/jquery-2.2.4.min.js"></script>
 
    <!-- Popper js -->
    <script src="${pageContext.request.contextPath}/resources/adminResources/js/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="${pageContext.request.contextPath}/resources/adminResources/js/bootstrap.min.js"></script>
    <!-- Plugins js -->
    <script src="${pageContext.request.contextPath}/resources/adminResources/js/plugins.js"></script>
    <!-- Active js -->
    <script src="${pageContext.request.contextPath}/resources/adminResources/js/active.js"></script>
    <!-- top logo -->

