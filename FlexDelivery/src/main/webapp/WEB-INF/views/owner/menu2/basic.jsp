<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<%@include file="../../ownerInc/jianSidebarTop.jsp"%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.6.9/core.min.js"></script>

<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/basic.css" />
<link rel="stylesheet" href="https://ceo-cdn.baemin.com/cdn/ceo-selfservice/css/ceo-selfservice.css?ts=20210119110213">

<div class="frame-wrap">
   <div class="frame-body">
      <button class="top-button  hide">
         <i class="icon icon-top"></i>
      </button>
      <div>
         <div class="ShopSelect mb-4 mb-sm-0">
            <select><option value="13195815">피자알파 서면점</option></select>
            <section class="title">
               <h3>
                  피자알파 서면점 <i class="icon icon-arrow-down"></i>
               </h3>
               <p class="text-sub mt-1">피자 · 배달의민족 · W13195815</p>
            </section>
         </div>
         <div>
            <div class="tabs TabNav">
               <ul>
                  <li><a aria-current="page" class="active"
                     href="/self-service/shops/13195815/basic">기본정보</a></li>
                  <li><a href="/self-service/shops/13195815/operation">운영정보</a></li>
                  <li><a href="/self-service/shops/13195815/order">주문정보</a></li>
                  <li><a href="/self-service/shops/13195815/delivery-region">배달지역</a></li>
               </ul>
            </div>
            <form class="form-card">
               <div>
                  <div class="Card ">
                     <div class="card-header">
                        <h3>가게 정보</h3>
                     </div>
                     <div class="form-group ">
                        <h5 class="form-label">로고</h5>
                        <div class="card-columns ">
                           <div class="mr-2 mb-2 shop-logo">
                              <img
                                 src="https://img-cdn.baemin.com/cache/shop/logo/2020/7/6/10903606_logoc_13195815.jpg">
                           </div>
                           <div class="box-wrapper flex-1 small">
                              로고 변경은
                              <button type="button" class="button p-0 text text">로고
                                 변경요청</button>
                              에서 하실 수 있습니다.
                              <ul class="bullet-ul small muted">
                                 <li>영업일 기준 최대 5일 이내 처리됩니다.</li>
                              </ul>
                           </div>
                        </div>
                     </div>
                     <div class="form-group ">
                        <h5 class="form-label">가게 이름</h5>
                        <div class="inline-values flex-1 mb-1">피자알파 서면점</div>
                        <ul class="bullet-ul small muted">
                           <li>변경이 필요한 경우 고객센터로 문의해주세요.</li>
                        </ul>
                     </div>
                     <div class="form-group ">
                        <h5 class="form-label">가게 번호</h5>
                        <div class="inline-values flex-1 ">13195815</div>
                     </div>
                     <div class="form-group ">
                        <h5 class="form-label">서비스 · 카테고리</h5>
                        <div class="inline-values flex-1 ">배달의민족, 피자</div>
                     </div>
                     <div class="form-group ">
                        <h5 class="form-label">실제 위치</h5>
                        <div class="inline-values flex-1 mb-1">(47360) 부산광역시 부산진구
                           범천동 886-12 1층 피자알파(범천동)</div>
                        <ul class="bullet-ul mt-0 small muted">
                           <li>위 정보의 변경이 필요한 경우 고객센터로 문의해 주세요.</li>
                        </ul>
                        <button type="button" class="button mt-2 p-0 text text">노출위치
                           변경</button>
                     </div>
                  </div>
               </div>
            </form>
            <form class="form-card">
               <div>
                  <div class="Card ">
                     <div class="card-header">
                        <h3>가게 상태</h3>
                        <div class="card-menu " style="opacity: 0.99;">
                           <button type="button" class="button change-button medium text">
                              <i class="icon icon-pencil"></i> 변경
                           </button>
                        </div>
                     </div>
                     <div class="form-group no-divider" style="min-height: auto;">
                        <div class="form-control-wrap form-control-inline">
                           <div class="form-control ">
                              <div class="inline-values flex-1 ">
                                 <span class="inline-value ">영업</span>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </form>
            <form class="form-card">
               <div>
                  <div class="Card ">
                     <div class="card-header">
                        <h3>가게 전화번호</h3>
                        <div class="card-menu " style="opacity: 0.99;">
                           <button type="button" class="button change-button medium text">
                              <i class="icon icon-pencil"></i> 변경
                           </button>
                        </div>
                     </div>
                     <div class="form-group telephone-list">
                        <h5 class="form-label">대표번호</h5>
                        <div class="form-control-wrap">
                           <div class="form-control ">
                              <div class="inline-values flex-1 telephone">
                                 051-633-5433<span class="text-sub">&nbsp;&nbsp;050-6457-5605</span>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </form>
            <form class="form-card">
               <div>
                  <div class="Card ">
                     <div class="card-header">
                        <h3>가게 영상・사진</h3>
                        <div class="card-menu " style="opacity: 0.99;">
                           <button type="button" class="button change-button medium text">
                              <i class="icon icon-pencil"></i> 변경
                           </button>
                        </div>
                     </div>
                     <div class="form-group p-0">
                        <div class="text-disabled h5 px-sm-2 pt-sm-2 pb-sm-2 px-4 pt-4">등록된
                           내용이 없습니다.</div>
                     </div>
                  </div>
               </div>
            </form>
            <form class="form-card">
               <div>
                  <div class="Card ">
                     <div class="card-header">
                        <h3>가게 소개</h3>
                        <div class="card-menu " style="opacity: 0.99;">
                           <button type="button" class="button change-button medium text">
                              <i class="icon icon-pencil"></i> 변경
                           </button>
                        </div>
                     </div>
                     <div class="form-group no-divider" style="min-height: auto;">
                        <div class="form-control-wrap form-control-inline">
                           <div class="form-control ">
                              <div class="inline-values flex-1 ">
                                 <span class="inline-value ">♡피자알파는 흑미도우를 사용합니다.<br>♡(건강한
                                    담백함과 숙성도우의 쫄깃함)<br>♡자연산 최고급 치즈를 사용합니다.<br>
                                 <br>하나 ☆ 박리다매♡<br>피자는 절대 허접하지 않습니다.<br>드셔보시고
                                    판단 해주세요.<br>이 불경기에 비싼 피자 부담스럽습니다.<br>어려움을 고객님과 함께
                                    하겠습니다.<br>
                                 <br>둘 ☆ 재료선정과 맛♡<br>피자알파만의 색깔로 아낌없는 재료와 푸짐한 가성비 그리고
                                    어디서도 맛볼 수 없는 맛<br>저렴한 가격에도 최상의 맛과 퀄리티로 고객님들에게 만족시켜드릴 수
                                    있도록 노력하겠습니다.<br>아무리 금액이 저렴해도 맛이 없다면 고객님들의 선택을 받을 수
                                    없습니다.<br>
                                 <br>셋 ☆ 초심♡<br>처음 가게 오픈해서 처음 주문 받았던 그 감사한 마음을
                                    "절대"잊지 않고 항상 고객님들의 말씀을 새겨듣는 매장으로 거듭나겠습니다.
                                 </span>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </form>
            <form class="form-card">
               <div>
                  <div class="Card ">
                     <div class="card-header">
                        <h3>
                           찾아가는 길 안내 <small class="hint cursor-pointer "><i
                              class="icon icon-help"></i></small>
                        </h3>
                        <div class="card-menu " style="opacity: 0.99;">
                           <button type="button" class="button change-button medium text">
                              <i class="icon icon-pencil"></i> 변경
                           </button>
                        </div>
                     </div>
                     <div class="form-group no-divider" style="min-height: auto;">
                        <div class="inline-values flex-1 ">
                           <span class="text-disabled">주문 고객이 우리 가게를 쉽게 찾을 수 있습니다.
                              지금 사용해보세요.</span>
                        </div>
                     </div>
                  </div>
               </div>
            </form>
         </div>
      </div>
   </div>
   <div class="frame-promo">
      <div class="tip-container"></div>
   </div>
</div>

<%@include file="../../ownerInc/jianSidebarBottom.jsp"%>