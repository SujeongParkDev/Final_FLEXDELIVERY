<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="bg-white rounded p-3 mb-3 clearfix graph-star-rating rounded shadow-sm">
    <h6 class="mb-0 mb-1">리뷰와 평점</h6>
    <p class="text-muted mb-4 mt-1 small">실제 주문고객들의 리뷰와 평점입니다</p>
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
    <form>
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
        <div class="form-group"><label class="form-label small">내용</label>
        	<textarea class="form-control"></textarea>
        </div>
        <div class="form-group mb-0">
        	<button type="button" class="btn btn-primary btn-block"> 리뷰 작성 </button>
        </div>
    </form>
</div>