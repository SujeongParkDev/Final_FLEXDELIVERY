<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../../memInc/top.jsp"%>
<style type="text/css">
	.text-end{
		text-align: end;
	}
</style>
<div class="d-none">
        <div class="bg-primary p-3 d-flex align-items-center">
            <a class="toggle togglew toggle-2" href="#"><span></span></a>
            <h4 class="font-weight-bold m-0 text-white">Coupon</h4>
        </div>
    </div>
    <div class="offer-section">
        <div class="container">
            <div class="py-5 d-flex align-items-center">
                <div>
                    <h2 class="text-white">Specialllll Offfers fffor youuuu~~~!!</h2>
                    <p class="h6 text-white">FLEX-DELIVERY만의 특별한 할인 이벤트!!</p>
                </div>
                <div class="ml-auto"><img alt="#" src="<c:url value='/resources/memberResources/img/offers.png' />" class="img-fluid offers_img"></div>
            </div>
        </div>
    </div>
    <!-- Tabs -->
    <div class="bg-white shadow-sm">
        <div class="container">
            <div class="bg-white">
                <ul class="nav nav-tabs" id="myTab" role="tablist">
                    <li class="nav-item" role="presentation">
                        <a class="px-0 py-3 nav-link text-dark h6 border-0 mb-0 active" id="profile-tab" data-toggle="tab" href="#eventCoupon" role="tab" aria-controls="profile" aria-selected="false">Payment offers/Coupons</a>
                    </li>
                    <li class="nav-item bottom-tab" role="presentation">
                        <a class="px-0 py-3 nav-link text-dark h6 border-0 mb-0 ml-3" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Restaurant offers</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="tab-content" id="myTabContent">
            <div class="tab-pane fade show active py-4" id="eventCoupon" role="tabpanel" aria-labelledby="profile-tab">
	            <h5 class="mb-3 mt-0">발급가능 쿠폰</h5>
	            <div class="row">
	            	<c:if test="${!empty list}">
	            		<c:forEach var="vo" items="${list}">
			                <div class="col-md-4 mb-3">
			                    <div class="bg-white shadow-sm rounded p-4">
			                        <p class="h6 mb-3"><span class="feather-home text-primary"></span><span class="ml-3">${vo.eCouponName}</span></p>
			                        <p class="font-weight-bold h5 mb-2 text-end"><fmt:formatNumber value="${vo.eCouponDc}" pattern="#,###원" />할인 쿠폰</p>
			                        <p class="font-weight-bold mb-2 text-end">From : <fmt:formatDate value='${vo.eCouponStartDate}' pattern="yyyy/MM/dd" />부터</p>
			                        <p class="font-weight-bold mb-2 text-end">To : <fmt:formatDate value='${vo.eCouponEndDate}' pattern="yyyy/MM/dd" />까지 사용가능</p>
			                        <p class="my-3 small">최소 주문 금액 <fmt:formatNumber value="${vo.eCouponMin}" pattern="#,###원" /> 이상부터 사용 가능합니다.</p>
			                        <a href="<c:url value='/member/coupon/getECoupon.do?eCouponNo=${vo.eCouponNo}'/>" class="btn btn-outline-primary">발급받기</a>
			                    </div>
			                </div>
	            		</c:forEach>
	            	</c:if>
	            </div>
        	</div>
        	<div class="tab-pane fade py-4" id="home" role="tabpanel" aria-labelledby="home-tab">
       		<h5 class="mb-1">All offers (163)</h5>
            <p>All offers and deals, from restaurants near you</p>
            <div class="row">
                <div class="col-md-3 pb-3">
                    <div class="list-card bg-white h-100 rounded overflow-hidden position-relative shadow-sm">
                        <div class="list-card-image">
                            <div class="star position-absolute"><span class="badge badge-success"><i class="feather-star"></i> 3.1 (300+)</span></div>
                            <div class="favourite-heart text-danger position-absolute"><a href="#"><i class="feather-heart"></i></a></div>
                            <div class="member-plan position-absolute"><span class="badge badge-dark">Promoted</span></div>
                            <a href="restaurant.html">
                                <img alt="#" src="img/popular1.png" class="img-fluid item-img w-100">
                            </a>
                        </div>
                        <div class="p-3 position-relative">
                            <div class="list-card-body">
                                <h6 class="mb-1"><a href="restaurant.html" class="text-black">The osahan Restaurant
                             </a>
                                </h6>
                                <p class="text-gray mb-1 small">• North • Hamburgers</p>
                                <p class="text-gray mb-1 rating">
                                    <ul class="rating-stars list-unstyled">
                                        <li>
                                            <i class="feather-star star_active"></i>
                                            <i class="feather-star star_active"></i>
                                            <i class="feather-star star_active"></i>
                                            <i class="feather-star star_active"></i>
                                            <i class="feather-star"></i>
                                        </li>
                                    </ul>
                                </p>
                            </div>
                            <div class="list-card-badge">
                                <span class="badge badge-danger">OFFER</span> <small>65% OSAHAN50</small>
                            </div>
                        </div>
                    </div>
                </div>
        	</div>
    	</div>
	</div>
<%@include file="../../memInc/bottom.jsp"%>