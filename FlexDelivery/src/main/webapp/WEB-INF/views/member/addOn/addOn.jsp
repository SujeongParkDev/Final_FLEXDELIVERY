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
	       <h4 class="font-weight-bold m-0 text-white">Offers</h4>
	   </div>
	</div>
	<div class="offer-section">
	    <div class="container">
	        <div class="py-5 d-flex align-items-center">
	            <div>
	                <h2 class="text-white">FLEX-OFFERS!</h2>
	                <p class="h6 text-white mt-1">FLEX-DELIVERY만의 특별한 할인쿠폰과 선물상품입니다.</p>
	            </div>
	            <div class="ml-auto"><img alt="#" src="<c:url value='/resources/memberResources/img/offers.png' />" class="img-fluid offers_img"></div>
	        </div>
	    </div>
	</div>
	
   <!-- Tabs 버튼 -->
   <div class="bg-white shadow-sm">
       <div class="container">
           <div class="bg-white">
               <ul class="nav nav-tabs" id="myTab" role="tablist">
                   <li class="nav-item" role="presentation">
                       <a class="px-0 py-3 nav-link text-dark h6 border-0 mb-0 active" id="profile-tab" data-toggle="tab" href="#eventCoupon" role="tab" aria-controls="profile" aria-selected="false">Coupons Offers</a>
                   </li>
                   <li class="nav-item bottom-tab" role="presentation">
                       <a class="px-0 py-3 nav-link text-dark h6 border-0 mb-0 ml-3" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Gift Offers</a>
                   </li>
               </ul>
           </div>
       </div>
   </div>
   
   
   
   <div class="container">
       <div class="tab-content" id="myTabContent">
       
       
       
       
       
       
       
       
       
       
       
       
       	   <!-- 이벤트쿠폰 탭 div -->
           <div class="tab-pane fade show active py-4" id="eventCoupon" role="tabpanel" aria-labelledby="profile-tab">
            <h5 class="mb-3 mt-0">발급가능 쿠폰</h5>
	            <div class="row">
	            	<!-- 이벤트 쿠폰 div -->
	            	<c:import url="/member/coupon/eventCouponList.do"></c:import>
	            </div>
       		</div>
       		<!-- /이벤트쿠폰 탭 -->
       		
       		
       		
       		
       		
       		
       		
       		
       		
       		<!-- 선물하기 탭 div -->
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
	   		<!-- 선물하기탭 끝 -->
	   		
	   		
	   		
	   		
	   		
	   		
	   		
	   		
	   		
	   		
	   		
	   		
		</div>
	</div>	
<%@include file="../../memInc/bottom.jsp"%>	