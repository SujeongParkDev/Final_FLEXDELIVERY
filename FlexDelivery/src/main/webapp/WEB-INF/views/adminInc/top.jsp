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
<title>플렉스 딜리버리 사장님</title>
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

    <!-- Subscribe Modal -->
    <div class="subscribe-newsletter-area">
        <div class="modal fade" id="subsModal" tabindex="-1" role="dialog" aria-labelledby="subsModal" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <div class="modal-body">
                        <h5 class="title">Subscribe to my newsletter</h5>
                        <form action="#" class="newsletterForm" method="post">
                            <input type="email" name="email" id="subscribesForm2" placeholder="Your e-mail here">
                            <button type="submit" class="btn original-btn">Subscribe</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- ##### Header Area Start ##### -->
    <header class="header-area">

        <!-- Top Header Area -->
        <div class="top-header">
            <div class="container h-100">
                <div class="row h-100 align-items-center">
                    <!-- Breaking News Area -->
                    <div class="col-12 col-sm-8">
                        <div class="breaking-news-area">
                            <div id="breakingNewsTicker" class="ticker">
                                <ul>
                                    <li><a href="#">Hello World!</a></li>
                                    <li><a href="#">Hello Universe!</a></li>
                                    <li><a href="#">Hello Original!</a></li>
                                    <li><a href="#">Hello Earth!</a></li>
                                    <li><a href="#">Hello Colorlib!</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- Top Social Area -->
                    <div class="col-12 col-sm-4">
                        <div class="top-social-area">
                            <a href="#" data-toggle="tooltip" data-placement="bottom" title="Login"><i  aria-hidden="false">로그인</i></a>
                            <a href="#" data-toggle="tooltip" data-placement="bottom" title="Join"><i  aria-hidden="false">회원가입</i></a>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Logo Area -->
        <div class="logo-area text-center">
            <div class="container h-100">
                <div class="row h-100 align-items-center">
                    <div class="col-12">
                    	<!-- img src: flex delivery 로고로 변경 필요함 -->
                        <a href="<c:url value='/admin/index.do' />" class="original-logo"><img src="${pageContext.request.contextPath}/resources/imgs/FD.png" alt="FlexDeliveryLogo" style="width: 300px;"></a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Nav Area -->
        <div class="original-nav-area" id="stickyNav">
            <div class="classy-nav-container breakpoint-off">
                <div class="container">
                    <!-- Classy Menu -->
                    <nav class="classy-navbar justify-content-between">

                        <!-- Subscribe btn -->
                        <div class="subscribe-btn">
                            <a href="#" class="btn subscribe-btn" data-toggle="modal" data-target="#subsModal">Subscribe</a>
                        </div>

                        <!-- Navbar Toggler -->
                        <div class="classy-navbar-toggler">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>

                        <!-- Menu -->
                        <div class="classy-menu" id="originalNav">
                            <!-- close btn -->
                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                            </div>

                            <!-- Nav Start -->
                            <div class="classynav">
                                <ul>
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
                                            <li><a href="<c:url value='/admin/menu6/coupons.do' />">쿠폰 관리</a>
	                                            <ul class="dropdown">
		                                            <li><a href="<c:url value="/admin/menu6/regularCoupon.do" />">정기쿠폰 관리</a></li>
		                                            <li><a href="<c:url value="/admin/menu6/eventCoupon.do" />">이벤트쿠폰 관리</a></li>                                           
	                                            </ul>
                                            </li>
                                            <li><a href="<c:url value='/admin/menu6/gift.do' />">선물하기</a>
	                                            <ul class="dropdown">
		                                            <li><a href="<c:url value="/admin/menu6/giftCategory.do" />">카테고리 관리</a></li>
		                                            <li><a href="<c:url value="/admin/menu6/giftProduct.do" />">상품 관리</a></li>
		                                            <li><a href="<c:url value="/admin/menu6/giftPrice.do" />">금액 관리</a></li>                                           
	                                            </ul>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a href="<c:url value='/member/index.do' />">고객 사이트로 이동</a></li>
                                </ul>

                                <!-- Search Form start -->
                                <div id="search-wrapper">
                                    <form action="#">
                                        <input type="text" id="search" placeholder="Search something...">
                                        <div id="close-icon"></div>
                                        <input class="d-none" type="submit" value="">
                                    </form>
                                </div>
                                <!-- Search Form end -->
                                
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
    