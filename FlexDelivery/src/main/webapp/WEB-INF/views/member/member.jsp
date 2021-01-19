<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="../memInc/top.jsp" %>
<div class="osahan-home-page">
        <div class="bg-primary p-3 d-none">
            <div class="text-white">
                <div class="title d-flex align-items-center">
                    <a class="toggle" href="<c:url value='/resources/memberResources/#' />">
                        <span></span>
                    </a>
                    <h4 class="font-weight-bold m-0 pl-5">Browse</h4>
                    <a class="text-white font-weight-bold ml-auto" data-toggle="modal" data-target="#exampleModal" href="<c:url value='/resources/memberResources/#' />">Filter</a>
                </div>
            </div>
            <div class="input-group mt-3 rounded shadow-sm overflow-hidden">
                <div class="input-group-prepend">
                    <button class="border-0 btn btn-outline-secondary text-dark bg-white btn-block"><i class="feather-search"></i></button>
                </div>
                <input type="text" class="shadow-none border-0 form-control" placeholder="Search for restaurants or dishes">
            </div>
        </div>
        <!-- Filters -->
        <div class="container">
            <div class="cat-slider">
                <div class="cat-item px-1 py-3">
                    <a class="bg-white rounded d-block p-2 text-center shadow-sm" href="<c:url value='/resources/memberResources/trending.html' />">
                        <img alt="#" src='<c:url value="/resources/memberResources/img/icons/Fries.png" />' class="img-fluid mb-2">
                        <p class="m-0 small">Fries</p>
                    </a>
                </div>
                <div class="cat-item px-1 py-3">
                    <a class="bg-white rounded d-block p-2 text-center shadow-sm" href="<c:url value='/resources/memberResources/trending.html' />">
                        <img alt="#" src='<c:url value="/resources/memberResources/img/icons/Pizza.png" />' class="img-fluid mb-2">
                        <p class="m-0 small">Pizza</p>
                    </a>
                </div>
                <div class="cat-item px-1 py-3">
                    <a class="bg-white rounded d-block p-2 text-center shadow-sm" href="<c:url value='/resources/memberResources/trending.html' />">
                        <img alt="#" src='<c:url value="/resources/memberResources/img/icons/Burger.png" />' class="img-fluid mb-2">
                        <p class="m-0 small">Burger</p>
                    </a>
                </div>
                <div class="cat-item px-1 py-3">
                    <a class="bg-white rounded d-block p-2 text-center shadow-sm" href="<c:url value='/resources/memberResources/trending.html' />">
                        <img alt="#" src='<c:url value="/resources/memberResources/img/icons/Sandwich.png" />' class="img-fluid mb-2">
                        <p class="m-0 small">Sandwich</p>
                    </a>
                </div>
                <div class="cat-item px-1 py-3">
                    <a class="bg-white rounded d-block p-2 text-center shadow-sm" href="<c:url value='/resources/memberResources/trending.html' />">
                        <img alt="#" src='<c:url value="/resources/memberResources/img/icons/Coffee.png" />' class="img-fluid mb-2">
                        <p class="m-0 small">Coffee</p>
                    </a>
                </div>
                <div class="cat-item px-1 py-3">
                    <a class="bg-white rounded d-block p-2 text-center shadow-sm" href="<c:url value='/resources/memberResources/trending.html' />">
                        <img alt="#" src='<c:url value="/resources/memberResources/img/icons/Steak.png" />' class="img-fluid mb-2">
                        <p class="m-0 small">Steak</p>
                    </a>
                </div>
                <div class="cat-item px-1 py-3">
                    <a class="bg-white rounded d-block p-2 text-center shadow-sm" href="<c:url value='/resources/memberResources/trending.html' />">
                        <img alt="#" src='<c:url value="/resources/memberResources/img/icons/ColaCan.png" />' class="img-fluid mb-2">
                        <p class="m-0 small">ColaCan</p>
                    </a>
                </div>
                <div class="cat-item px-1 py-3">
                    <a class="bg-white rounded d-block p-2 text-center shadow-sm" href="<c:url value='/resources/memberResources/trending.html' />">
                        <img alt="#" src='<c:url value="/resources/memberResources/img/icons/Breakfast.png" />' class="img-fluid mb-2">
                        <p class="m-0 small">Breakfast</p>
                    </a>
                </div>
                <div class="cat-item px-1 py-3">
                    <a class="bg-white rounded d-block p-2 text-center shadow-sm" href="<c:url value='/resources/memberResources/trending.html' />">
                        <img alt="#" src='<c:url value="/resources/memberResources/img/icons/Salad.png" />' class="img-fluid mb-2">
                        <p class="m-0 small">Salad</p>
                    </a>
                </div>
            </div>
        </div>
        <!-- offer sectio slider -->
        <div class="bg-white">
            <div class="container">
                <div class="offer-slider">
                    <div class="cat-item px-1 py-3">
                        <a class="d-block text-center shadow-sm" href="<c:url value='/resources/memberResources/trending.html' />">
                            <img alt="#" src='<c:url value="/resources/memberResources/img/pro1.jpg" />' class="img-fluid rounded">
                        </a>
                    </div>
                    <div class="cat-item px-1 py-3">
                        <a class="d-block text-center shadow-sm" href="<c:url value='/resources/memberResources/trending.html' />">
                            <img alt="#" src='<c:url value="/resources/memberResources/img/pro2.jpg" />' class="img-fluid rounded">
                        </a>
                    </div>
                    <div class="cat-item px-1 py-3">
                        <a class="d-block text-center shadow-sm" href="<c:url value='/resources/memberResources/trending.html' />">
                            <img alt="#" src='<c:url value="/resources/memberResources/img/pro3.jpg" />' class="img-fluid rounded">
                        </a>
                    </div>
                    <div class="cat-item px-1 py-3">
                        <a class="d-block text-center shadow-sm" href="<c:url value='/resources/memberResources/trending.html' />">
                            <img alt="#" src='<c:url value="/resources/memberResources/img/pro4.jpg" />' class="img-fluid rounded">
                        </a>
                    </div>
                    <div class="cat-item px-1 py-3">
                        <a class="d-block text-center shadow-sm" href="<c:url value='/resources/memberResources/trending.html' />">
                            <img alt="#" src='<c:url value="/resources/memberResources/img/pro2.jpg" />' class="img-fluid rounded">
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <!-- Trending this week -->
            <div class="pt-4 pb-2 title d-flex align-items-center">
                <h5 class="m-0">산뜻한 아침 특집.</h5>
                <a class="font-weight-bold ml-auto" href="<c:url value='/resources/memberResources/trending.html' />">View all <i class="feather-chevrons-right"></i></a>
            </div>
            <!-- slider -->
            <div class="trending-slider">
                <div class="osahan-slider-item">
                    <div class="list-card bg-white h-100 rounded overflow-hidden position-relative shadow-sm">
                        <div class="list-card-image">
                            <div class="star position-absolute"><span class="badge badge-success"><i class="feather-star"></i> 3.1 (300+)</span></div>
                            <div class="favourite-heart text-danger position-absolute"><a href="<c:url value='/resources/memberResources/#' />"><i class="feather-heart"></i></a></div>
                            <div class="member-plan position-absolute"><span class="badge badge-dark">Promoted</span></div>
                            <a href="<c:url value='/resources/memberResources/restaurant.html' />">
                                <img alt="#" src='<c:url value="/resources/memberResources/img/trending1.png "/>' class="img-fluid item-img w-100">
                            </a>
                        </div>
                        <div class="p-3 position-relative">
                            <div class="list-card-body">
                                <h6 class="mb-1"><a href='<c:url value="restaurant.html" />" />' class="text-black"> 양식의 정석
                              </a>
                                </h6>
                                <p class="text-gray mb-3">• Vegetarian • Indian </p>
                                <p class="text-gray mb-3 time"><span class="bg-light text-dark rounded-sm pl-2 pb-1 pt-1 pr-2"><i class="feather-clock"></i> 15–30 분</span> <span class="float-right text-black-50"> 6000원 부터</span></p>
                            </div>
                            <div class="list-card-badge">
                                <span class="badge badge-danger">coupon</span> <span class="badge badge-success">new</span> 
                            </div>
                        </div>
                    </div>
                </div>
                <div class="osahan-slider-item">
                    <div class="list-card bg-white h-100 rounded overflow-hidden position-relative shadow-sm">
                        <div class="list-card-image">
                            <div class="star position-absolute"><span class="badge badge-success"><i class="feather-star"></i> 3.1 (300+)</span></div>
                            <div class="favourite-heart text-danger position-absolute"><a href="<c:url value='/resources/memberResources/#' />"><i class="feather-heart"></i></a></div>
                            <div class="member-plan position-absolute"><span class="badge badge-dark">Promoted</span></div>
                            <a href="<c:url value='/resources/memberResources/restaurant.html' />">
                                <img alt="#" src='<c:url value="/resources/memberResources/img/trending2.png" />' class="img-fluid item-img w-100">
                            </a>
                        </div>
                        <div class="p-3 position-relative">
                            <div class="list-card-body">
                                <h6 class="mb-1"><a href="<c:url value='/resources/memberResources/restaurant.html' />" class="text-black">타이의 아침</a></h6>
                                <p class="text-gray mb-3"> • Thai • Pure veg</p>
                                <p class="text-gray mb-3 time"><span class="bg-light text-dark rounded-sm pl-2 pb-1 pt-1 pr-2"><i class="feather-clock"></i> 30–35 분</span> <span class="float-right text-black-50"> 5000원 부터</span></p>
                            </div>
                            <div class="list-card-badge">
                                <span class="badge badge-success">coupon</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="osahan-slider-item">
                    <div class="list-card bg-white h-100 rounded overflow-hidden position-relative shadow-sm">
                        <div class="list-card-image">
                            <div class="star position-absolute"><span class="badge badge-success"><i class="feather-star"></i> 3.1 (300+)</span></div>
                            <div class="favourite-heart text-danger position-absolute"><a href="<c:url value='/resources/memberResources/#' />"><i class="feather-heart"></i></a></div>
                            <div class="member-plan position-absolute"><span class="badge badge-dark">Promoted</span></div>
                            <a href="<c:url value='/resources/memberResources/restaurant.html' />">
                                <img alt="#" src='<c:url value="/resources/memberResources/img/trending3.png" />' class="img-fluid item-img w-100">
                            </a>
                        </div>
                        <div class="p-3 position-relative">
                            <div class="list-card-body">
                                <h6 class="mb-1"><a href="<c:url value='/resources/memberResources/restaurant.html' />" class="text-black"> 함박 스테이크의 기본
                              </a>
                                </h6>
                                <p class="text-gray mb-3">• Hamburgers </p>
                                <p class="text-gray mb-3 time"><span class="bg-light text-dark rounded-sm pl-2 pb-1 pt-1 pr-2"><i class="feather-clock"></i> 20-30 분</span> <span class="float-right text-black-50"> 8000원 부터</span></p>
                            </div>
                            <div class="list-card-badge">
                                <span class="badge badge-danger">coupon</span> 
                            </div>
                        </div>
                    </div>
                </div>
                <div class="osahan-slider-item">
                    <div class="list-card bg-white h-100 rounded overflow-hidden position-relative shadow-sm">
                        <div class="list-card-image">
                            <div class="star position-absolute"><span class="badge badge-success"><i class="feather-star"></i> 3.1 (300+)</span></div>
                            <div class="favourite-heart text-danger position-absolute"><a href="<c:url value='/resources/memberResources/#' />"><i class="feather-heart"></i></a></div>
                            <div class="member-plan position-absolute"><span class="badge badge-dark">Promoted</span></div>
                            <a href="<c:url value='/resources/memberResources/restaurant.html' />">
                                <img alt="#" src='<c:url value="/resources/memberResources/img/corns.png"/>' class="img-fluid item-img w-100 h-100">
                            </a>
                        </div>
                        <div class="p-3 position-relative">
                            <div class="list-card-body">
                                <h6 class="mb-1"><a href="<c:url value='/resources/memberResources/restaurant.html' />" class="text-black">아침에 셀러드</a></h6>
                                <p class="text-gray mb-3"> • Indian • Pure veg</p>
                                <p class="text-gray mb-3 time"><span class="bg-light text-dark rounded-sm pl-2 pb-1 pt-1 pr-2"><i class="feather-clock"></i> 15-20 분</span> <span class="float-right text-black-50"> 6500원 부터</span></p>
                            </div>
                            <div class="list-card-badge">
                                <span class="badge badge-success">coupon</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Most popular -->
            <div class="py-3 title d-flex align-items-center">
                <h5 class="m-0">인기 메뉴</h5>
                <a class="font-weight-bold ml-auto" href="<c:url value='/resources/memberResources/most_popular.html' />">show more <i class="feather-chevrons-right"></i></a>
            </div>
            <!-- Most popular -->
            <div class="most_popular">
                <div class="row">
                    <div class="col-md-3 pb-3">
                        <div class="list-card bg-white h-100 rounded overflow-hidden position-relative shadow-sm">
                            <div class="list-card-image">
                                <div class="star position-absolute"><span class="badge badge-success"><i class="feather-star"></i> 3.1 (300+)</span></div>
                                <div class="favourite-heart text-danger position-absolute"><a href="<c:url value='/resources/memberResources/#' />"><i class="feather-heart"></i></a></div>
                                <div class="member-plan position-absolute"><span class="badge badge-dark">Promoted</span></div>
                                <a href="<c:url value='/resources/memberResources/restaurant.html' />">
                                    <img alt="#" src='<c:url value="/resources/memberResources/img/popular1.png" />' class="img-fluid item-img w-100">
                                </a>
                            </div>
                            <div class="p-3 position-relative">
                                <div class="list-card-body">
                                    <h6 class="mb-1"><a href="<c:url value='/resources/memberResources/restaurant.html' />" class="text-black">강죽
                                 </a>
                                    </h6>
                                    <p class="text-gray mb-1 small">•rice • healthy</p>
                                    <p class="text-gray mb-1 rating">
                                    </p>
                                    <ul class="rating-stars list-unstyled">
                                        <li>
                                            <i class="feather-star star_active"></i>
                                            <i class="feather-star star_active"></i>
                                            <i class="feather-star star_active"></i>
                                            <i class="feather-star star_active"></i>
                                            <i class="feather-star"></i>
                                        </li>
                                    </ul>
                                    <p></p>
                                </div>
                                <div class="list-card-badge">
                                    <span class="badge badge-danger">coupon</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 pb-3">
                        <div class="list-card bg-white h-100 rounded overflow-hidden position-relative shadow-sm">
                            <div class="list-card-image">
                                <div class="star position-absolute"><span class="badge badge-success"><i class="feather-star"></i> 3.1 (300+)</span></div>
                                <div class="favourite-heart text-danger position-absolute"><a href="<c:url value='/resources/memberResources/#' />"><i class="feather-heart"></i></a></div>
                                <div class="member-plan position-absolute"><span class="badge badge-dark">Promoted</span></div>
                                <a href="<c:url value='/resources/memberResources/restaurant.html' />">
                                    <img alt="#" src='<c:url value="/resources/memberResources/img/popular2.png" />' class="img-fluid item-img w-100">
                                </a>
                            </div>
                            <div class="p-3 position-relative">
                                <div class="list-card-body">
                                    <h6 class="mb-1"><a href="<c:url value='/resources/memberResources/restaurant.html' />" class="text-black">브런치 식당</a></h6>
                                    <p class="text-gray mb-1 small">•Italian •brunch</p>
                                    <p class="text-gray mb-1 rating">
                                    </p>
                                    <ul class="rating-stars list-unstyled">
                                        <li>
                                            <i class="feather-star star_active"></i>
                                            <i class="feather-star star_active"></i>
                                            <i class="feather-star star_active"></i>
                                            <i class="feather-star star_active"></i>
                                            <i class="feather-star"></i>
                                        </li>
                                    </ul>
                                    <p></p>
                                </div>
                                <div class="list-card-badge">
                                    <span class="badge badge-success">coupon</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 pb-3">
                        <div class="list-card bg-white h-100 rounded overflow-hidden position-relative shadow-sm">
                            <div class="list-card-image">
                                <div class="star position-absolute"><span class="badge badge-success"><i class="feather-star"></i> 3.1 (300+)</span></div>
                                <div class="favourite-heart text-danger position-absolute"><a href="<c:url value='/resources/memberResources/#' />"><i class="feather-heart"></i></a></div>
                                <div class="member-plan position-absolute"><span class="badge badge-dark">Promoted</span></div>
                                <a href="<c:url value='/resources/memberResources/restaurant.html' />">
                                    <img alt="#" src='<c:url value="/resources/memberResources/img/popular3.png" />' class="img-fluid item-img w-100">
                                </a>
                            </div>
                            <div class="p-3 position-relative">
                                <div class="list-card-body">
                                    <h6 class="mb-1"><a href="<c:url value='/resources/memberResources/restaurant.html' />" class="text-black">한상 가득 식당
                                 </a>
                                    </h6>
                                    <p class="text-gray mb-1 small">• korean • side dish</p>
                                    <p class="text-gray mb-1 rating">
                                    </p>
                                    <ul class="rating-stars list-unstyled">
                                        <li>
                                            <i class="feather-star star_active"></i>
                                            <i class="feather-star star_active"></i>
                                            <i class="feather-star star_active"></i>
                                            <i class="feather-star star_active"></i>
                                            <i class="feather-star"></i>
                                        </li>
                                    </ul>
                                    <p></p>
                                </div>
                                <div class="list-card-badge">
                                    <span class="badge badge-danger">coupon</span> 
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 pb-3">
                        <div class="list-card bg-white h-100 rounded overflow-hidden position-relative shadow-sm">
                            <div class="list-card-image">
                                <div class="star position-absolute"><span class="badge badge-success"><i class="feather-star"></i> 3.1 (300+)</span></div>
                                <div class="favourite-heart text-danger position-absolute"><a href="<c:url value='/resources/memberResources/#' />"><i class="feather-heart"></i></a></div>
                                <div class="member-plan position-absolute"><span class="badge badge-dark">Promoted</span></div>
                                <a href="<c:url value='/resources/memberResources/restaurant.html' />">
                                    <img alt="#" src='<c:url value="/resources/memberResources/img/popular4.png" />' class="img-fluid item-img w-100">
                                </a>
                            </div>
                            <div class="p-3 position-relative">
                                <div class="list-card-body">
                                    <h6 class="mb-1"><a href="<c:url value='/resources/memberResources/restaurant.html' />" class="text-black">미국에도 파스타家</a></h6>
                                    <p class="text-gray mb-1 small">American • pasta</p>
                                    <p class="text-gray mb-1 rating">
                                    </p>
                                    <ul class="rating-stars list-unstyled">
                                        <li>
                                            <i class="feather-star star_active"></i>
                                            <i class="feather-star star_active"></i>
                                            <i class="feather-star star_active"></i>
                                            <i class="feather-star star_active"></i>
                                            <i class="feather-star"></i>
                                        </li>
                                    </ul>
                                    <p></p>
                                </div>
                                <div class="list-card-badge">
                                    <span class="badge badge-success">coupon</span> 
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
          
            </div>
            <!-- Most sales -->
            <div class="pt-2 pb-3 title d-flex align-items-center">
                <h5 class="m-0">추천 식당</h5>
                <a class="font-weight-bold ml-auto" href="<c:url value='/resources/memberResources/#' />">show others <i class="feather-chevrons-right"></i></a>
            </div>
            <!-- Most sales -->
            <div class="most_sale">
                <div class="row mb-3">
                    <div class="col-md-4 mb-3">
                        <div class="d-flex align-items-center list-card bg-white h-100 rounded overflow-hidden position-relative shadow-sm">
                            <div class="list-card-image">
                                <div class="star position-absolute"><span class="badge badge-success"><i class="feather-star"></i> 3.1 (300+)</span></div>
                                <div class="favourite-heart text-danger position-absolute"><a href="<c:url value='/resources/memberResources/#' />"><i class="feather-heart"></i></a></div>
                                <div class="member-plan position-absolute"><span class="badge badge-dark">Promoted</span></div>
                                <a href="<c:url value='/resources/memberResources/restaurant.html' />">
                                    <img alt="#" src='<c:url value="/resources/memberResources/img/sales1.png" />' class="img-fluid item-img w-100">
                                </a>
                            </div>
                            <div class="p-3 position-relative">
                                <div class="list-card-body">
                                    <h6 class="mb-1"><a href="<c:url value='/resources/memberResources/restaurant.html' />" class="text-black">사이드 레스토랑
                                 </a>
                                    </h6>
                                    <p class="text-gray mb-3">•waffle •side dish</p>
                                    <p class="text-gray mb-3 time"><span class="bg-light text-dark rounded-sm pl-2 pb-1 pt-1 pr-2"><i class="feather-clock"></i> 15–25 min</span> <span class="float-right text-black-50"> 5000원 부터</span></p>
                                </div>
                                <div class="list-card-badge">
                                    <span class="badge badge-danger">coupon</span> 
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mb-3">
                        <div class="d-flex align-items-center list-card bg-white h-100 rounded overflow-hidden position-relative shadow-sm">
                            <div class="list-card-image">
                                <div class="star position-absolute"><span class="badge badge-success"><i class="feather-star"></i> 3.1 (300+)</span></div>
                                <div class="favourite-heart text-danger position-absolute"><a href="<c:url value='/resources/memberResources/#' />"><i class="feather-heart"></i></a></div>
                                <div class="member-plan position-absolute"><span class="badge badge-dark">Promoted</span></div>
                                <a href="<c:url value='/resources/memberResources/restaurant.html' />">
                                    <img alt="#" src='<c:url value="/resources/memberResources/img/sales2.png" />' class="img-fluid item-img w-100">
                                </a>
                            </div>
                            <div class="p-3 position-relative">
                                <div class="list-card-body">
                                    <h6 class="mb-1"><a href="<c:url value='/resources/memberResources/restaurant.html' />" class="text-black">함박 스테이크의 기본</a></h6>
                                    <p class="text-gray mb-3">• Hamburgers</p>
                                    <p class="text-gray mb-3 time"><span class="bg-light text-dark rounded-sm pl-2 pb-1 pt-1 pr-2"><i class="feather-clock"></i> 20 - 30분</span> <span class="float-right text-black-50"> 8000원 부터</span></p>
                                </div>
                                <div class="list-card-badge">
                                    <span class="badge badge-success">coupon</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mb-3">
                        <div class="d-flex align-items-center list-card bg-white h-100 rounded overflow-hidden position-relative shadow-sm">
                            <div class="list-card-image">
                                <div class="star position-absolute"><span class="badge badge-success"><i class="feather-star"></i> 3.1 (300+)</span></div>
                                <div class="favourite-heart text-danger position-absolute"><a href="<c:url value='/resources/memberResources/#' />"><i class="feather-heart"></i></a></div>
                                <div class="member-plan position-absolute"><span class="badge badge-dark">Promoted</span></div>
                                <a href="<c:url value='/resources/memberResources/restaurant.html' />">
                                    <img alt="#" src='<c:url value="/resources/memberResources/img/sales3.png" />' class="img-fluid item-img w-100">
                                </a>
                            </div>
                            <div class="p-3 position-relative">
                                <div class="list-card-body">
                                    <h6 class="mb-1"><a href="<c:url value='/resources/memberResources/restaurant.html' />" class="text-black">타이의 아침
                                 </a>
                                    </h6>
                                    <p class="text-gray mb-3">• Thai • Pure veg</p>
                                    <p class="text-gray mb-3 time"><span class="bg-light text-dark rounded-sm pl-2 pb-1 pt-1 pr-2"><i class="feather-clock"></i> 30-35 min</span> <span class="float-right text-black-50"> 5000원 부터</span></p>
                                </div>
                                <div class="list-card-badge">
                                    <span class="badge badge-danger">coupon</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<%@include file="../memInc/bottom.jsp" %>