<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../../memInc/top.jsp" %>
<!DOCTYPE html>
<html lang="ko">

    <div class="d-none">
        <div class="bg-primary p-3 d-flex align-items-center">
            <a class="toggle togglew toggle-2" href="#"><span></span></a>
            <h4 class="font-weight-bold m-0 text-white">Osahan Bar</h4>
        </div>
    </div>	
    <div class="offer-section py-4">
        <div class="container position-relative">
            <img alt="#" src="<c:url value="/resources/imgs/${vo.storeLogo}"/>" class="restaurant-pic">
            <div class="pt-3 text-white">
                <h2 class="font-weight-bold">${vo.storeName }</h2>
                <p class="text-white m-0">${vo.storeAddress} ${vo.storeAddressDetail}</p>
                <div class="rating-wrap d-flex align-items-center mt-2">
                    <ul class="rating-stars list-unstyled">
                        <li>
	                    	<c:forEach var="i" begin="1" end="5">
	                    		<c:if test="${vo.reviewRating>i}">
	                        		<i class="feather-star star_active"></i>
	                    		</c:if>
	                    		<c:if test="${vo.reviewRating<i}">
	                    			<i class="feather-star"></i>
	                    		</c:if>
	                    	</c:forEach>
	                    </li>
                    </ul>
                    <p class="label-rating text-white ml-2 small"> (${vo.reviewCount})</p>
                </div>
            </div>
            <div class="pb-4">
                <div class="row">
                    <div class="col-6 col-md-2">
                        <p class="text-white-50 font-weight-bold m-0 small">최소주문금액</p>
                        <p class="text-white m-0">~<fmt:formatNumber value="${vo.storeMinPrice}" type="currency"/></p>
                    </div>
                    <div class="col-6 col-md-2">
                        <p class="text-white-50 font-weight-bold m-0 small">영업 시간</p>
                        <p class="text-white m-0">${vo.storeOpenTime} ~ ${vo.storeCloseTime}</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    
    <div class="container position-relative">
        <div class="row">
            <div class="col-md-8 pt-3">
            	<!-- Menu -->
            	<div class="shadow-sm rounded bg-white mb-3 overflow-hidden">
				    <div class="d-flex item-aligns-center">
				        <p class="font-weight-bold h6 p-3 border-bottom mb-0 w-100">메뉴</p>
				    </div>
		            <c:import url="/member/menu/menuGroupInc.do">
		            	<c:param name="storeNo" value="${storeNo}" />
		            </c:import>
                </div>
                <!-- /Menu -->
                <!-- Review -->
                <div class="mb-3">
                    <div id="ratings-and-reviews" class="bg-white shadow-sm d-flex align-items-center rounded p-3 mb-3 clearfix restaurant-detailed-star-rating">
                        <h6 class="mb-0">별점</h6>
                        <div class="star-rating ml-auto">
                            <div class="d-inline-block h6 m-0">
	                            <c:forEach var="i" begin="1" end="5">
		                    		<c:if test="${vo.reviewRating>i}">
		                        		<i class="feather-star text-warning"></i>
		                    		</c:if>
		                    		<c:if test="${vo.reviewRating<i}">
		                    			<i class="feather-star"></i>
		                    		</c:if>
		                    	</c:forEach>
                            </div>
                            <b class="text-black ml-2">${reviewCount}별점테스트</b>
                        </div>
                    </div>
                    <div class="bg-white rounded p-3 mb-3 clearfix graph-star-rating rounded shadow-sm">
                        <h6 class="mb-0 mb-1">리뷰와 평점</h6>
                        <p class="text-muted mb-4 mt-1 small">Rated 3.5 out of 5</p>
                        <div class="graph-star-rating-body">
                            <div class="rating-list">
                                <div class="rating-list-left font-weight-bold small">5 Star</div>
                                <div class="rating-list-center">
                                    <div class="progress">
                                        <div role="progressbar" class="progress-bar bg-info" aria-valuenow="56" aria-valuemin="0" aria-valuemax="100" style="width: 56%;"></div>
                                    </div>
                                </div>
                                <div class="rating-list-right font-weight-bold small">56 %</div>
                            </div>
                            <div class="rating-list">
                                <div class="rating-list-left font-weight-bold small">4 Star</div>
                                <div class="rating-list-center">
                                    <div class="progress">
                                        <div role="progressbar" class="progress-bar bg-info" aria-valuenow="23" aria-valuemin="0" aria-valuemax="100" style="width: 23%;"></div>
                                    </div>
                                </div>
                                <div class="rating-list-right font-weight-bold small">23 %</div>
                            </div>
                            <div class="rating-list">
                                <div class="rating-list-left font-weight-bold small">3 Star</div>
                                <div class="rating-list-center">
                                    <div class="progress">
                                        <div role="progressbar" class="progress-bar bg-info" aria-valuenow="11" aria-valuemin="0" aria-valuemax="100" style="width: 11%;"></div>
                                    </div>
                                </div>
                                <div class="rating-list-right font-weight-bold small">11 %</div>
                            </div>
                            <div class="rating-list">
                                <div class="rating-list-left font-weight-bold small">2 Star</div>
                                <div class="rating-list-center">
                                    <div class="progress">
                                        <div role="progressbar" class="progress-bar bg-info" aria-valuenow="6" aria-valuemin="0" aria-valuemax="100" style="width: 6%;"></div>
                                    </div>
                                </div>
                                <div class="rating-list-right font-weight-bold small">6 %</div>
                            </div>
                            <div class="rating-list">
                                <div class="rating-list-left font-weight-bold small">1 Star</div>
                                <div class="rating-list-center">
                                    <div class="progress">
                                        <div role="progressbar" class="progress-bar bg-info" aria-valuenow="4" aria-valuemin="0" aria-valuemax="100" style="width: 4%;"></div>
                                    </div>
                                </div>
                                <div class="rating-list-right font-weight-bold small">4 %</div>
                            </div>
                        </div>
                    </div>
                    <div class="bg-white p-3 mb-3 restaurant-detailed-ratings-and-reviews shadow-sm rounded">
                        <h6 class="mb-1">이 가게의 리뷰</h6>
                        <div class="reviews-members py-3">
                            <div class="media">
                                <div class="media-body">
                                    <div class="reviews-members-header">
                                        <div class="star-rating float-right">
                                            <div class="d-inline-block" style="font-size: 14px;"><i class="feather-star text-warning"></i>
                                                <i class="feather-star text-warning"></i>
                                                <i class="feather-star text-warning"></i>
                                                <i class="feather-star text-warning"></i>
                                                <i class="feather-star"></i>
                                            </div>
                                        </div>
                                        <h6 class="mb-0"><a class="text-dark" href="#">메리</a></h6>
                                        <p class="text-muted small">2021월 1월 4일</p>
                                    </div>
                                    <div class="reviews-members-body">
                                        <p>새해 지나고 처음 시킨 스프 정말 맛있었어요!</p>
                                    </div>
                                    <div class="reviews-members-footer"><a class="total-like btn btn-sm btn-outline-primary" href="#"><i class="feather-thumbs-up"></i> 15</a>
                                        <span class="total-like-user-main ml-2" dir="rtl">
		                                 </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr>
                        <div class="reviews-members py-3">
                            <div class="media">
                                <div class="media-body">
                                    <div class="reviews-members-header">
                                        <div class="star-rating float-right">
                                            <div class="d-inline-block" style="font-size: 14px;"><i class="feather-star text-warning"></i>
                                                <i class="feather-star text-warning"></i>
                                                <i class="feather-star text-warning"></i>
                                                <i class="feather-star text-warning"></i>
                                                <i class="feather-star"></i>
                                            </div>
                                        </div>
                                        <h6 class="mb-0"><a class="text-dark" href="#">윅 존</a></h6>
                                        <p class="text-muted small">2020월 1월 11일</p>
                                    </div>
                                    <div class="reviews-members-body">
                                        <p>콘포타주가 이렇게 부드러운줄 몰랐어요!</p>
                                    </div>
                                    <div class="reviews-members-footer"><a class="total-like btn btn-sm btn-outline-primary" href="#"><i class="feather-thumbs-up"></i> 8</a> 
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr>
                        <a class="text-center w-100 d-block mt-3 font-weight-bold" href="#">다른 리뷰 보기</a>
                    </div>
                    <div class="bg-white p-3 rating-review-select-page rounded shadow-sm">
                        <h6 class="mb-3">리뷰 작성</h6>
                        <div class="d-flex align-items-center mb-3">
                            <p class="m-0 small">이 가게를 평가해주세요!</p>
                            <div class="star-rating ml-auto">
                                <div class="d-inline-block"><i class="feather-star text-warning"></i>
                                    <i class="feather-star text-warning"></i>
                                    <i class="feather-star text-warning"></i>
                                    <i class="feather-star text-warning"></i>
                                    <i class="feather-star"></i>
                                </div>
                            </div>
                        </div>
                        <form>
                            <div class="form-group"><label class="form-label small">내용</label><textarea class="form-control"></textarea></div>
                            <div class="form-group mb-0"><button type="button" class="btn btn-primary btn-block"> 리뷰 작성 </button></div>
                        </form>
                    </div>
                </div>
                <!-- /Review -->
            </div>
            <!-- 장바구니 -->
            <div class="col-md-4 pt-3">
                <div class="osahan-cart-item rounded rounded shadow-sm overflow-hidden bg-white sticky_sidebar">
                    <div class="d-flex border-bottom osahan-cart-item-profile bg-white p-3">
                        <div class="d-flex flex-column">
                            <h6 class="mb-1 font-weight-bold">콘라드 레스토랑</h6>
                            <p class="mb-0 small text-muted"><i class="feather-map-pin"></i> 사랑시 행복동 75번지</p>
                        </div>
                    </div>
                    <div class="bg-white border-bottom py-2">
                        <div class="gold-members d-flex align-items-center justify-content-between px-3 py-2 border-bottom">
                            <div class="media align-items-center">
                                <div class="mr-2 text-danger">&middot;</div>
                                <div class="media-body">
                                    <p class="m-0">에그 프라이과 베이컨 토스트</p>
                                </div>
                            </div>
                            <div class="d-flex align-items-center">
                                <span class="count-number float-right"><button type="button" class="btn-sm left dec btn btn-outline-secondary"> <i class="feather-minus"></i> </button><input class="count-number-input" type="text" readonly="" value="2"><button type="button" class="btn-sm right inc btn btn-outline-secondary"> <i class="feather-plus"></i> </button></span>
                                <p class="text-gray mb-0 float-right ml-2 text-muted small">4500원</p>
                            </div>
                        </div>
                        <div class="gold-members d-flex align-items-center justify-content-between px-3 py-2 border-bottom">
                            <div class="media align-items-center">
                                <div class="mr-2 text-danger">&middot;</div>
                                <div class="media-body">
                                    <p class="m-0">비건 토스트
                                    </p>
                                </div>
                            </div>
                            <div class="d-flex align-items-center">
                                <span class="count-number float-right"><button type="button" class="btn-sm left dec btn btn-outline-secondary"> <i class="feather-minus"></i> </button><input class="count-number-input" type="text" readonly="" value="2"><button type="button" class="btn-sm right inc btn btn-outline-secondary"> <i class="feather-plus"></i> </button></span>
                                <p class="text-gray mb-0 float-right ml-2 text-muted small">6000원</p>
                            </div>
                        </div>
                        <div class="gold-members d-flex align-items-center justify-content-between px-3 py-2 border-bottom">
                            <div class="media align-items-center">
                                <div class="mr-2 text-success">&middot;</div>
                                <div class="media-body">
                                    <p class="m-0">양송이 스프
                                    </p>
                                </div>
                            </div>
                            <div class="d-flex align-items-center">
                                <span class="count-number float-right"><button type="button" class="btn-sm left dec btn btn-outline-secondary"> <i class="feather-minus"></i> </button><input class="count-number-input" type="text" readonly="" value="2"><button type="button" class="btn-sm right inc btn btn-outline-secondary"> <i class="feather-plus"></i> </button></span>
                                <p class="text-gray mb-0 float-right ml-2 text-muted small">6000원</p>
                            </div>
                        </div>
                        <div class="gold-members d-flex align-items-center justify-content-between px-3 py-2">
                            <div class="media align-items-center">
                                <div class="mr-2 text-success">&middot;</div>
                                <div class="media-body">
                                    <p class="m-0">감자 스프</p>
                                </div>
                            </div>
                            <div class="d-flex align-items-center">
                                <span class="count-number float-right"><button type="button" class="btn-sm left dec btn btn-outline-secondary"> <i class="feather-minus"></i> </button><input class="count-number-input" type="text" readonly="" value="2"><button type="button" class="btn-sm right inc btn btn-outline-secondary"> <i class="feather-plus"></i> </button></span>
                                <p class="text-gray mb-0 float-right ml-2 text-muted small">4500원</p>
                            </div>
                        </div>
                    </div>
                    
                    <div class="bg-white p-3 clearfix border-bottom">
                        <p class="mb-1">총합 <span class="float-right text-dark">21000원</span></p>
                        <p class="mb-1">배달팁<span class="text-info ml-1"><i class="feather-info"></i></span><span class="float-right text-dark">무료</span></p>
<!--                         <p class="mb-1 text-success">Total Discount<span class="float-right text-success">$1884</span></p> -->
                        <hr>
                        <h6 class="font-weight-bold mb-0">TO PAY <span class="float-right">21000원</span></h6>
                    </div>
                    <div class="p-3">
                        <a class="btn btn-success btn-block btn-lg" href="successful.html">PAY 21000원<i class="feather-arrow-right"></i></a>
                    </div>
                </div>
            </div>
            <!-- /장바구니 -->
        </div>
    </div>
</html>
<%@include file="../../memInc/bottom.jsp" %>