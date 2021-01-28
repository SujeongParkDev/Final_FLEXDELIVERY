<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../../ownerInc/top.jsp" %>
<script type="text/javascript" src="../js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function(){
	$('#btNext').click(function(){
		location.href='<c:url value="/owner/menu1/launch/launchNext.do"/>';
	});
});
</script>
<link rel="stylesheet" type="text/css" href
="${pageContext.request.contextPath}/resources/ownerResources/assets/css/launch.css"/>
<!-- 입점 신청 페이지 -->
 <div id="root">
      <div class="Frame xlarge">
        <div class="ols-intro frame-container pl-0 pt-0">
          <nav class="fixed-nav">
            <div>
              <a href="/"><figure class="logo">온라인계약</figure></a>
              <div>
                <button type="button" class="button small secondary">
                  입점 문의</button
                ><button type="button" class="button ml-1 small">
                  FLEXDELIVERY 입점 신청
                </button>
              </div>
            </div>
          </nav>
          <div class="frame-main">
            <div class="frame-wrap">
          
              <h2>
                FLEXDELIVERY 입점하고<br /><strong
                  >가게매출<img
                    src="https://ceo-cdn.baemin.com/cdn/ceo-selfservice/src/images/ols/icon_calc.png?ver=42f9afb5d8c17e79d0659cea66351d9f"
                  />을 올리세요!</strong
                >
              </h2>
              <button
                type="button" id="btNext"
                class="button medium" 
                style="width: 210px; height: 56px; max-height: none"
              >
                FLEXD 입점 신청
              </button>
            </div>
          </div>
          <div class="content-body s1">
            <section>
              <h3 class="section-title">
                입점하려면<br /><span class="underline">무엇이 필요</span
                >하나요?
              </h3>
              <div class="item-list">
                <div class="rounded">
                  <img
                    src="https://ceo-cdn.baemin.com/cdn/ceo-selfservice/src/images/ols/icon_document.svg?ver=3a40f1ace4816e037d34b1b3a76d81c5"
                  />사업자등록증, 영업신고증
                </div>
                <div class="rounded">
                  <img
                    src="https://ceo-cdn.baemin.com/cdn/ceo-selfservice/src/images/ols/icon_bankbook.svg?ver=f0cc5c23deddce4b104810346ce9d492"
                  />정산 받을 계좌의 통장 사본
                </div>
                <div class="rounded">
                  <img
                    src="https://ceo-cdn.baemin.com/cdn/ceo-selfservice/src/images/ols/icon_photo.svg?ver=ac9e54bfc226219ed1ee710d3b676e15"
                  />가게 로고, 메뉴판 사진
                </div>
              </div>
            </section>
          </div>
          <!--  -->
          <!-- 여기 뭐를 더 추가할까....? -->
     <!--  -->
</div>
</div>
</div>


<%@include file="../../../ownerInc/bottom.jsp" %> 