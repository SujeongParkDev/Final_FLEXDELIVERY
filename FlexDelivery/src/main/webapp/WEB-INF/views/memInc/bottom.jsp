<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
 <!-- Footer -->
    <div class="osahan-menu-fotter fixed-bottom bg-white px-3 py-2 text-center d-none">
        <div class="row">
            <div class="col selected">
                <a href="${pageContext.request.contextPath}/member/index.do" class="text-danger small font-weight-bold text-decoration-none">
                    <p class="h4 m-0"><i class="feather-home text-danger"></i></p>
                    Home
                </a>
            </div>
            <div class="col">
                <a href="${pageContext.request.contextPath}/resources/memberResources/most_popular.html" class="text-dark small font-weight-bold text-decoration-none">
                    <p class="h4 m-0"><i class="feather-map-pin"></i></p>
                    Trending
                </a>
            </div>
            <div class="col bg-white rounded-circle mt-n4 px-3 py-2">
                <div class="bg-danger rounded-circle mt-n0 shadow">
                    <a href="${pageContext.request.contextPath}/resources/memberResources/checkout.html" class="text-white small font-weight-bold text-decoration-none">
                        <i class="feather-shopping-cart"></i>
                    </a>
                </div>
            </div>
            <div class="col">
                <a href="${pageContext.request.contextPath}/resources/memberResources/favorites.html" class="text-dark small font-weight-bold text-decoration-none">
                    <p class="h4 m-0"><i class="feather-heart"></i></p>
                    	찜한가게
                </a>
            </div>
            <div class="col">
                <a href="${pageContext.request.contextPath}/resources/memberResources/profile.html" class="text-dark small font-weight-bold text-decoration-none">
                    <p class="h4 m-0"><i class="feather-user"></i></p>
                    MyFlex
                </a>
            </div>
        </div>
    </div>
    
    <!-- footer -->
    <footer class="section-footer border-top bg-dark">
        <div class="container">
            <section class="footer-top padding-y py-5">
                <div class="row">
                    <aside class="col-md-4 footer-about">
                        <article class="d-flex pb-3">
                            <div><img alt="#" src="${pageContext.request.contextPath}/resources/memberResources/img/logo_web.png" class="logo-footer mr-3"></div>
                            <div>
                                <h6 class="title text-white">About Us</h6>
								<!-- 플렉스 딜리버리 사업자 소개 Start-->
								<p class="text-muted">
									<b>플렉스 딜리버리 FLEX DELIVERY</b><br>
									<b>대표자:</b> 윤희영 | 김정만 | 김백신 | 박수정 <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 박지안 | 양현준 | 이소정 <br><b>본사 :</b> 경상북도 울릉군 울릉읍 <a href="https://dokdo.mofa.go.kr/kor/" style="text-decoration: none">독도</a>안용복길 3<br><b>대표전화:</b> 054-0115-0219<br><b>대표메일:</b> FlexDeliveryCEO@flexdelivery.com
								</p>
                            </div>
                        </article>
                    </aside>
                    <aside class="col-sm-3 col-md-2 text-white">
                        <h6 class="title">Error Pages</h6>
                        <ul class="list-unstyled hov_footer">
                            <li> <a href="${pageContext.request.contextPath}/resources/memberResources/not-found.html" class="text-muted">Not found</a></li>
                            <li> <a href="${pageContext.request.contextPath}/resources/memberResources/maintence.html" class="text-muted">Maintence</a></li>
                            <li> <a href="${pageContext.request.contextPath}/resources/memberResources/coming-soon.html" class="text-muted">Coming Soon</a></li>
                        </ul>
                    </aside>
                    <aside class="col-sm-3 col-md-2 text-white">
                        <h6 class="title">Services</h6>
                        <ul class="list-unstyled hov_footer">
                            <li> <a href="${pageContext.request.contextPath}/resources/memberResources/faq.html" class="text-muted">Delivery Support</a></li>
                            <li> <a href="${pageContext.request.contextPath}/resources/memberResources/contact-us.html" class="text-muted">Contact Us</a></li>
                            <li> <a href="${pageContext.request.contextPath}/resources/memberResources/terms.html" class="text-muted">Terms of use</a></li>
                            <li> <a href="${pageContext.request.contextPath}/resources/memberResources/privacy.html" class="text-muted">Privacy policy</a></li>
                        </ul>
                    </aside>
                    <aside class="col-sm-3  col-md-2 text-white">
                        <h6 class="title">For users</h6>
                        <ul class="list-unstyled hov_footer">
                            <li> <a href="${pageContext.request.contextPath}/resources/memberResources/login.html" class="text-muted"> User Login </a></li>
                            <li> <a href="${pageContext.request.contextPath}/resources/memberResources/signup.html" class="text-muted"> User register </a></li>
                            <li> <a href="${pageContext.request.contextPath}/resources/memberResources/forgot_password.html" class="text-muted"> Forgot Password </a></li>
                            <li> <a href="${pageContext.request.contextPath}/resources/memberResources/profile.html" class="text-muted"> Account Setting </a></li>
                        </ul>
                    </aside>
                    <aside class="col-sm-3  col-md-2 text-white">
                        <h6 class="title">More Pages</h6>
                        <ul class="list-unstyled hov_footer">
                            <li> <a href="${pageContext.request.contextPath}/resources/memberResources/trending.html" class="text-muted"> Trending </a></li>
                            <li> <a href="${pageContext.request.contextPath}/resources/memberResources/most_popular.html" class="text-muted"> Most popular </a></li>
                            <li> <a href="${pageContext.request.contextPath}/resources/memberResources/restaurant.html" class="text-muted"> Restaurant Details </a></li>
                            <li> <a href="${pageContext.request.contextPath}/resources/memberResources/favorites.html" class="text-muted"> Favorites </a></li>
                        </ul>
                    </aside>
                </div>
                <!-- row.// -->
            </section>
            <!-- footer-top.// -->
        </div>
        <!-- //container -->
        <section class="footer-copyright border-top py-3 bg-light">
            <div class="container d-flex align-items-center">
                <p class="mb-0"> © Flex Delivery Corp. </p>
            </div>
        </section>
    </footer>
    <nav id="main-nav">
        <ul class="second-nav">
            <li><a href="${pageContext.request.contextPath}/member/index.do"><i class="feather-home mr-2"></i>홍</a></li>
            <li><a href="${pageContext.request.contextPath}/member/mypage/orderList.do"><i class="feather-list mr-2"></i>주문내역</a></li>
            <li>
                <c:if test="${empty sessionScope.memberId}">
                	<a href="${pageContext.request.contextPath}/member/login/memberLogin.do"><i class="feather-user mr-2"></i>로그인하세요</a>
	                <ul>
	                    <li><a href="${pageContext.request.contextPath}/member/register/register.do">회원가입</a></li>
	                    <li><a href="${pageContext.request.contextPath}/member/login/forgotId">아이디찾기</a></li>
	                    <li><a href="${pageContext.request.contextPath}/member/login/forgotPwd">비밀번호찾기</a></li>
	                </ul>
                </c:if>
                <c:if test="${!empty sessionScope.memberId}">
                	<a href="${pageContext.request.contextPath}/member/mypage/main.do"><i class="feather-user mr-2"></i>MyFlex</a>
	                <ul>
	                    <li><a href="${pageContext.request.contextPath}/member/coupon/couponBox.do">쿠폰함</a></li>
	                    <li><a href="${pageContext.request.contextPath}/member/gift/giftBox.do">선물함</a></li>
	                    <li><a href="${pageContext.request.contextPath}/member/mypage/myLikeStore.do">찜한가게</a></li>
	                    <li><a href="${pageContext.request.contextPath}/member/order/orderList.do">주문내역</a></li>
	                    <li><a href="${pageContext.request.contextPath}/member/mypage/myReview.do">내 리뷰관리</a></li>
	                </ul>
                </c:if>
            </li>
            <li>
                <a><i class="feather-map-pin mr-2"></i>점포조회</a>
                <c:import url="/member/sidebarList.do" />
            </li>
            <li>
            	<a><i class="feather-user mr-2"></i>알림광장</a>
	                <ul>
	                    <li><a href="${pageContext.request.contextPath}/member/coupon/couponBox.do">공지사항</a></li>
	                    <li><a href="${pageContext.request.contextPath}/member/gift/giftBox.do">이벤트</a></li>
	                </ul>
            </li>
            <li>
                <a><i class="feather-link mr-2"></i>Contact Us</a>
                <ul>
                    <li><a href="${pageContext.request.contextPath}/admin/index.do">사장님 사이트</a></li>
                    <li data-nav-custom-content>
                        <div class="custom-message">
                            	지금 바로 Flex-Delivery에 입점신청해 사장님이 되어보세요!
                        </div>
                    </li>
                </ul>
            </li>
        </ul>
        <ul class="bottom-nav">
            <li class="email">
                <a class="text-danger" href="${pageContext.request.contextPath}/member/index.do">
                    <p class="h5 m-0"><i class="feather-home text-danger"></i></p>
                    Home
                </a>
            </li>
            <li class="github">
                <a href="${pageContext.request.contextPath}/resources/memberResources/faq.html">
                    <p class="h5 m-0"><i class="feather-message-circle"></i></p>
                    FAQ
                </a>
            </li>
            <li class="ko-fi">
                <a href="${pageContext.request.contextPath}/resources/memberResources/contact-us.html">
                    <p class="h5 m-0"><i class="feather-phone"></i></p>
                    Help
                </a>
            </li>
        </ul>
    </nav>
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Filter</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body p-0">
                    <div class="osahan-filter">
                        <div class="filter">
                            <!-- SORT BY -->
                            <div class="p-3 bg-light border-bottom">
                                <h6 class="m-0">SORT BY</h6>
                            </div>
                            <div class="custom-control border-bottom px-0  custom-radio">
                                <input type="radio" id="customRadio1f" name="location" class="custom-control-input" checked>
                                <label class="custom-control-label py-3 w-100 px-3" for="customRadio1f">Top Rated</label>
                            </div>
                            <div class="custom-control border-bottom px-0  custom-radio">
                                <input type="radio" id="customRadio2f" name="location" class="custom-control-input">
                                <label class="custom-control-label py-3 w-100 px-3" for="customRadio2f">Nearest Me</label>
                            </div>
                            <div class="custom-control border-bottom px-0  custom-radio">
                                <input type="radio" id="customRadio3f" name="location" class="custom-control-input">
                                <label class="custom-control-label py-3 w-100 px-3" for="customRadio3f">Cost High to Low</label>
                            </div>
                            <div class="custom-control border-bottom px-0  custom-radio">
                                <input type="radio" id="customRadio4f" name="location" class="custom-control-input">
                                <label class="custom-control-label py-3 w-100 px-3" for="customRadio4f">Cost Low to High</label>
                            </div>
                            <div class="custom-control border-bottom px-0  custom-radio">
                                <input type="radio" id="customRadio5f" name="location" class="custom-control-input">
                                <label class="custom-control-label py-3 w-100 px-3" for="customRadio5f">Most Popular</label>
                            </div>
                            <!-- Filter -->
                            <div class="p-3 bg-light border-bottom">
                                <h6 class="m-0">FILTER</h6>
                            </div>
                            <div class="custom-control border-bottom px-0  custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="defaultCheck1" checked>
                                <label class="custom-control-label py-3 w-100 px-3" for="defaultCheck1">Open Now</label>
                            </div>
                            <div class="custom-control border-bottom px-0  custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="defaultCheck2">
                                <label class="custom-control-label py-3 w-100 px-3" for="defaultCheck2">Credit Cards</label>
                            </div>
                            <div class="custom-control border-bottom px-0  custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="defaultCheck3">
                                <label class="custom-control-label py-3 w-100 px-3" for="defaultCheck3">Alcohol Served</label>
                            </div>
                            <!-- Filter -->
                            <div class="p-3 bg-light border-bottom">
                                <h6 class="m-0">ADDITIONAL FILTERS</h6>
                            </div>
                            <div class="px-3 pt-3">
                                <input type="range" class="custom-range" min="0" max="100" name="minmax">
                                <div class="form-row">
                                    <div class="form-group col-6">
                                        <label>Min</label>
                                        <input class="form-control" placeholder="$0" type="number">
                                    </div>
                                    <div class="form-group text-right col-6">
                                        <label>Max</label>
                                        <input class="form-control" placeholder="$1,0000" type="number">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer p-0 border-0">
                    <div class="col-6 m-0 p-0">
                        <button type="button" class="btn border-top btn-lg btn-block" data-dismiss="modal">Close</button>
                    </div>
                    <div class="col-6 m-0 p-0">
                        <button type="button" class="btn btn-primary btn-lg btn-block">Apply</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
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