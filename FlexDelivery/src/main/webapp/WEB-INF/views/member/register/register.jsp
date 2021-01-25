<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<script type="text/javascript" src="<c:url value='/resources/memberResources/vendor/jquery/jquery.min.js' />"></script>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Askbootstrap">
    <meta name="author" content="Askbootstrap">
    <link rel="icon" type="image/png" href="<c:url value='/resources/memberResources/img/fav.png' />">
    <title>Swiggiweb - Online Food Ordering Website Template</title>
    <!-- Slick Slider -->
    <link rel="stylesheet" type="text/css" href="<c:url value='/resources/memberResources/vendor/slick/slick.min.css' />" />
    <link rel="stylesheet" type="text/css" href="<c:url value='/resources/memberResources/vendor/slick/slick-theme.min.css' />" />
    <!-- Feather Icon-->
    <link href="<c:url value='/resources/memberResources/vendor/icons/feather.css' />" rel="stylesheet" type="text/css">
    <!-- Bootstrap core CSS -->
    <link href="<c:url value='/resources/memberResources/vendor/bootstrap/css/bootstrap.min.css' />" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="<c:url value='/resources/memberResources/css/style.css' />" rel="stylesheet">
    <!-- Sidebar CSS -->
    <link href="<c:url value='/resources/memberResources/vendor/sidebar/demo.css' />" rel="stylesheet">
</head>

<body>
    <div class="osahan-signup login-page">
        <video loop autoplay muted id="vid">
            <source src="<c:url value='/resources/memberResources/img/bg.mp4' />" type="video/mp4">
            <source src="<c:url value='/resources/memberResources/img/bg.mp4' />" type="video/ogg">
         </video>
        <div class="d-flex align-items-center justify-content-center flex-column vh-100">
            <div class="px-5 col-md-6 ml-auto">
                <div class="px-5 col-10 mx-auto">
                    <h2 class="text-dark my-0">안녕하세요!</h2>
                    <!-- <p class="text-50">Sign up to continue</p> -->
                    <form class="mt-5 mb-4" action="verification.html">
                        <div class="form-group">
                            <label for="exampleInputName1" class="text-dark">이름</label>
                            <input type="text" placeholder="이름을 입력하세요" class="form-control" id="membername" aria-describedby="nameHelp">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputNumber1" class="text-dark">아이디</label>
                            <input type="text" placeholder="ID를 입력하세요" class="form-control" id="memberid" aria-describedby="numberHelp">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1" class="text-dark">비밀번호</label>
                            <input type="password" placeholder="비밀번호를 입력하세요" class="form-control" id="memberpwd">
                            <label for="exampleInputPassword1" class="text-dark">비밀번호</label>
                            <input type="password" placeholder="비밀번호를 입력하세요" class="form-control" id="memberpwd2">
                        </div>
						<label for="exampleInputNumber1" class="text-dark">전화번호</label>
						<div class="row">
							<div class="col-md-4" >
								<input type="text"  placeholder="번호 입력" class="form-control" id="hp1" aria-describedby="numberHelp" style="background-color: #fafaf9;">
							</div>
							<div class="col-md-4">
								<input type="text" placeholder="번호 입력" class="form-control" id="hp2" aria-describedby="numberHelp" style="background-color: #fafaf9;">
							</div>
							<div class="col-md-4">
								<input type="text" placeholder="번호 입력" class="form-control" id="hp3" aria-describedby="numberHelp" style="background-color: #fafaf9;">
							</div>
						</div>
						<br>
						<div class="row">
							<label for="exampleInputaddress" class="text-dark" style="line-height: 33px">주소 검색</label>
							<div class="col-md-4" >
								<input type="text"  placeholder="주소 검색" class="form-control" id="scaddress" aria-describedby="numberHelp" style="background-color: #fafaf9;">
							</div>
							<span class="float-right"><a href="#" class="btn btn-outline-secondary btn-sm" data-toggle="modal" data-target="#extras">검색</a></span>
						</div>
						<br>
						
						<div class="form-group">
							<label for="exampleInputaddress" class="text-dark">주소</label>
							<input type="text" placeholder="" class="form-control" id="memberaddress" aria-describedby="numberHelp" style="background-color: #fafaf9;">
						</div>
						<div class="form-group">
							<label for="exampleInputaddress" class="text-dark">상세주소</label>
							<input type="text" placeholder="" class="form-control" id="memberaddressDetail" aria-describedby="numberHelp" style="background-color: #fafaf9;">
						</div>
						
						
                        <button class="btn btn-primary btn-lg btn-block"oi89h np0[- ,. ]>
						회원 가입
                        </button>

<!--                         <div class="py-2">
                            <button class="btn btn-facebook btn-lg btn-block"><i class="feather-facebook"></i> Connect with Facebook</button>
                       		</div> -->
                    </form>
                </div>
                <div class="new-acc d-flex align-items-center justify-content-center">
                    <a href="<c:url value='/member/login/memberLogin.do' />">
                        <p class="text-center m-0">아이디가 있으신가요? 로그인 화면으로</p>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <br><br><br> 
    <nav id="main-nav">
        <ul class="second-nav">
            <li><a href="home.html"><i class="feather-home mr-2"></i> Homepage</a></li>
            <li><a href="my_order.html"><i class="feather-list mr-2"></i> My Orders</a></li>
            <li>
                <a href="#"><i class="feather-edit-2 mr-2"></i> Authentication</a>
                <ul>
                    <li><a href="<c:url value='/member/login.do' />">Login</a></li>
                    <li><a href="signup.html">Register</a></li>
                    <li><a href="forgot_password.html">Forgot Password</a></li>
                    <li><a href="verification.html">Verification</a></li>
                    <li><a href="location.html">Location</a></li>
                </ul>
            </li>
            <li><a href="favorites.html"><i class="feather-heart mr-2"></i> Favorites</a></li>
            <li><a href="trending.html"><i class="feather-trending-up mr-2"></i> Trending</a></li>
            <li><a href="most_popular.html"><i class="feather-award mr-2"></i> Most Popular</a></li>
            <li><a href="restaurant.html"><i class="feather-paperclip mr-2"></i> Restaurant Detail</a></li>
            <li><a href="checkout.html"><i class="feather-list mr-2"></i> Checkout</a></li>
            <li><a href="successful.html"><i class="feather-check-circle mr-2"></i> Successful</a></li>
            <li><a href="map.html"><i class="feather-map-pin mr-2"></i> Live Map</a></li>
            <li>
                <a href="#"><i class="feather-user mr-2"></i> Profile</a>
                <ul>
                    <li><a href="profile.html">Profile</a></li>
                    <li><a href="favorites.html">Delivery support</a></li>
                    <li><a href="contact-us.html">Contact Us</a></li>
                    <li><a href="terms.html">Terms of use</a></li>
                    <li><a href="privacy.html">Privacy & Policy</a></li>
                </ul>
            </li>
            <li>
                <a href="#"><i class="feather-alert-triangle mr-2"></i> Error</a>
                <ul>
                    <li><a href="not-found.html">Not Found</a>
                        <li><a href="maintence.html"> Maintence</a>
                            <li><a href="coming-soon.html">Coming Soon</a>
                </ul>
                </li>
                <li>
                    <a href="#"><i class="feather-link mr-2"></i> Navigation Link Example</a>
                    <ul>
                        <li>
                            <a href="#">Link Example 1</a>
                            <ul>
                                <li>
                                    <a href="#">Link Example 1.1</a>
                                    <ul>
                                        <li><a href="#">Link</a></li>
                                        <li><a href="#">Link</a></li>
                                        <li><a href="#">Link</a></li>
                                        <li><a href="#">Link</a></li>
                                        <li><a href="#">Link</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#">Link Example 1.2</a>
                                    <ul>
                                        <li><a href="#">Link</a></li>
                                        <li><a href="#">Link</a></li>
                                        <li><a href="#">Link</a></li>
                                        <li><a href="#">Link</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li><a href="#">Link Example 2</a></li>
                        <li><a href="#">Link Example 3</a></li>
                        <li><a href="#">Link Example 4</a></li>
                        <li data-nav-custom-content>
                            <div class="custom-message">
                                You can add any custom content to your navigation items. This text is just an example.
                            </div>
                        </li>
                    </ul>
                </li>
        </ul>
        <ul class="bottom-nav">
            <li class="email">
                <a class="text-danger" href="home.html">
                    <p class="h5 m-0"><i class="feather-home text-danger"></i></p>
                    Home
                </a>
            </li>
            <li class="github">
                <a href="faq.html">
                    <p class="h5 m-0"><i class="feather-message-circle"></i></p>
                    FAQ
                </a>
            </li>
            <li class="ko-fi">
                <a href="contact-us.html">
                    <p class="h5 m-0"><i class="feather-phone"></i></p>
                    Help
                </a>
            </li>
        </ul>
    </nav>
    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/memberResources/vendor/jquery/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/memberResources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- slick Slider JS-->
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/memberResources/vendor/slick/slick.min.js"></script>
    <!-- Sidebar JS-->
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/memberResources/vendor/sidebar/hc-offcanvas-nav.js"></script>
    <!-- Custom scripts for all pages-->
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/memberResources/js/osahan.js"></script>
</body>

</html>