<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../memInc/top.jsp"%>
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
        
        <!-- offer sectio slider -->
        <div class="bg-white">
            <div class="container">
                <div class="offer-slider">
                    <div class="cat-item px-1 py-3">
                        <a class="d-block text-center shadow-sm" href="<c:url value='/resources/memberResources/trending.html'/>">
                            <img alt="#" src="<c:url value='/resources/memberResources/img/pro1.jpg' />" class="img-fluid rounded">
                        </a>
                    </div>
                    <div class="cat-item px-1 py-3">
                        <a class="d-block text-center shadow-sm" href="<c:url value='/resources/memberResources/trending.html' />">
                            <img alt="#" src="<c:url value='/resources/memberResources/img/pro2.jpg' />" class="img-fluid rounded">
                        </a>
                    </div>
                    <div class="cat-item px-1 py-3">
                        <a class="d-block text-center shadow-sm" href="<c:url value='/resources/memberResources/trending.html' />">
                            <img alt="#" src="<c:url value='/resources/memberResources/img/pro3.jpg' />" class="img-fluid rounded">
                        </a>
                    </div>
                    <div class="cat-item px-1 py-3">
                        <a class="d-block text-center shadow-sm" href="<c:url value='/resources/memberResources/trending.html' />">
                            <img alt="#" src="<c:url value='/resources/memberResources/img/pro4.jpg' />" class="img-fluid rounded">
                        </a>
                    </div>
                    <div class="cat-item px-1 py-3">
                        <a class="d-block text-center shadow-sm" href="<c:url value='/resources/memberResources/trending.html' />">
                            <img alt="#" src="<c:url value='/resources/memberResources/img/pro2.jpg' />" class="img-fluid rounded">
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Filters -->
        <div class="container">
            <div class="cat-slider">
                <div class="cat-item px-1 py-3">
                    <a class="bg-white rounded d-block p-2 text-center shadow-sm" href="<c:url value='/resources/memberResources/trending.html' />">
                        <img alt="#" src="<c:url value='/resources/memberResources/img/icons/Fries.png' />" class="img-fluid mb-2">
                        <p class="m-0 small">디저트</p>
                    </a>
                </div>
                <div class="cat-item px-1 py-3">
                    <a class="bg-white rounded d-block p-2 text-center shadow-sm" href="<c:url value='/resources/memberResources/trending.html' />">
                        <img alt="#" src="<c:url value='/resources/memberResources/img/icons/Pizza.png' />" class="img-fluid mb-2">
                        <p class="m-0 small">피자</p>
                    </a>
                </div>
                <div class="cat-item px-1 py-3">
                    <a class="bg-white rounded d-block p-2 text-center shadow-sm" href="<c:url value='/resources/memberResources/trending.html' />">
                        <img alt="#" src="<c:url value='/resources/memberResources/img/icons/Burger.png' />" class="img-fluid mb-2">
                        <p class="m-0 small">패스트푸드</p>
                    </a>
                </div>
                <div class="cat-item px-1 py-3">
                    <a class="bg-white rounded d-block p-2 text-center shadow-sm" href="<c:url value='/resources/memberResources/trending.html' />">
                        <img alt="#" src="<c:url value='/resources/memberResources/img/icons/Sandwich.png' />" class="img-fluid mb-2">
                        <p class="m-0 small">간식</p>
                    </a>
                </div>
                <div class="cat-item px-1 py-3">
                    <a class="bg-white rounded d-block p-2 text-center shadow-sm" href="<c:url value='/resources/memberResources/trending.html' />">
                        <img alt="#" src="<c:url value='/resources/memberResources/img/icons/Coffee.png' />" class="img-fluid mb-2">
                        <p class="m-0 small">커피</p>
                    </a>
                </div>
                <div class="cat-item px-1 py-3">
                    <a class="bg-white rounded d-block p-2 text-center shadow-sm" href="<c:url value='/resources/memberResources/trending.html' />">
                        <img alt="#" src="<c:url value='/resources/memberResources/img/icons/Steak.png' />" class="img-fluid mb-2">
                        <p class="m-0 small">양식</p>
                    </a>
                </div>
                <div class="cat-item px-1 py-3">
                    <a class="bg-white rounded d-block p-2 text-center shadow-sm" href="<c:url value='/resources/memberResources/trending.html' />">
                        <img alt="#" src="<c:url value='/resources/memberResources/img/icons/ColaCan.png' />" class="img-fluid mb-2">
                        <p class="m-0 small">음료</p>
                    </a>
                </div>
                <div class="cat-item px-1 py-3">
                    <a class="bg-white rounded d-block p-2 text-center shadow-sm" href="<c:url value='/resources/memberResources/trending.html' />">
                        <img alt="#" src="<c:url value='/resources/memberResources/img/icons/Breakfast.png' />" class="img-fluid mb-2">
                        <p class="m-0 small">양식</p>
                    </a>
                </div>
                <div class="cat-item px-1 py-3">
                    <a class="bg-white rounded d-block p-2 text-center shadow-sm" href="<c:url value='/resources/memberResources/trending.html' />">
                        <img alt="#" src="<c:url value='/resources/memberResources/img/icons/Salad.png' />" class="img-fluid mb-2">
                        <p class="m-0 small">한식</p>
                    </a>
                </div>
            </div>
        </div>
        <div class="container">
            <!-- Trending this week -->
            <div class="pt-4 pb-2 title d-flex align-items-center">
                <h5 class="m-0">Trending this week</h5>
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
                                <img alt="#" src="<c:url value='/resources/memberResources/img/trending1.png' />" class="img-fluid item-img w-100">
                            </a>
                        </div>
                        <div class="p-3 position-relative">
                            <div class="list-card-body">
                                <h6 class="mb-1"><a href="<c:url value='/resources/memberResources/restaurant.html' />" class="text-black">Famous Dave's Bar-B-Que
                              </a>
                                </h6>
                                <p class="text-gray mb-3">Vegetarian • Indian • Pure veg</p>
                                <p class="text-gray mb-3 time"><span class="bg-light text-dark rounded-sm pl-2 pb-1 pt-1 pr-2"><i class="feather-clock"></i> 15–30 min</span> <span class="float-right text-black-50"> $350 FOR TWO</span></p>
                            </div>
                            <div class="list-card-badge">
                                <span class="badge badge-danger">OFFER</span> <small> Use Coupon OSAHAN50</small>
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
                                <img alt="#" src="<c:url value='/resources/memberResources/img/trending2.png' />" class="img-fluid item-img w-100">
                            </a>
                        </div>
                        <div class="p-3 position-relative">
                            <div class="list-card-body">
                                <h6 class="mb-1"><a href="<c:url value='/resources/memberResources/restaurant.html' />" class="text-black">Thai Famous Cuisine</a></h6>
                                <p class="text-gray mb-3">North Indian • Indian • Pure veg</p>
                                <p class="text-gray mb-3 time"><span class="bg-light text-dark rounded-sm pl-2 pb-1 pt-1 pr-2"><i class="feather-clock"></i> 30–35 min</span> <span class="float-right text-black-50"> $250 FOR TWO</span></p>
                            </div>
                            <div class="list-card-badge">
                                <span class="badge badge-success">OFFER</span> <small>65% off</small>
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
                                <img alt="#" src="<c:url value='/resources/memberResources/img/trending3.png' />" class="img-fluid item-img w-100">
                            </a>
                        </div>
                        <div class="p-3 position-relative">
                            <div class="list-card-body">
                                <h6 class="mb-1"><a href="<c:url value='/resources/memberResources/restaurant.html' />" class="text-black">The osahan Restaurant
                              </a>
                                </h6>
                                <p class="text-gray mb-3">North • Hamburgers • Pure veg</p>
                                <p class="text-gray mb-3 time"><span class="bg-light text-dark rounded-sm pl-2 pb-1 pt-1 pr-2"><i class="feather-clock"></i> 15–25 min</span> <span class="float-right text-black-50"> $500 FOR TWO</span></p>
                            </div>
                            <div class="list-card-badge">
                                <span class="badge badge-danger">OFFER</span> <small>65% OSAHAN50</small>
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
                                <img alt="#" src="<c:url value='/resources/memberResources/img/trending2.png' />" class="img-fluid item-img w-100">
                            </a>
                        </div>
                        <div class="p-3 position-relative">
                            <div class="list-card-body">
                                <h6 class="mb-1"><a href="<c:url value='/resources/memberResources/restaurant.html' />" class="text-black">Thai Famous Cuisine</a></h6>
                                <p class="text-gray mb-3">North Indian • Indian • Pure veg</p>
                                <p class="text-gray mb-3 time"><span class="bg-light text-dark rounded-sm pl-2 pb-1 pt-1 pr-2"><i class="feather-clock"></i> 30–35 min</span> <span class="float-right text-black-50"> $250 FOR TWO</span></p>
                            </div>
                            <div class="list-card-badge">
                                <span class="badge badge-success">OFFER</span> <small>65% off</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<%@include file="../memInc/bottom.jsp"%>