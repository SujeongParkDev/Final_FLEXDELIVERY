<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script type="text/javascript" src="<c:url value='/resources/memberResources/js/jquery-3.5.1.min.js'/>"></script>
<script type="text/javascript">
	$(window).scroll(function(){
		if($(window).scrollTop()==$(document).height()-$(window).height()){
			//더보기처리
			$.ajax()
		}	
	});
</script>
<c:if test="${empty list}">
	<div class="col-md-12 pb-12">
	    <div class="list-card bg-white h-100 rounded overflow-hidden position-relative shadow-sm" style="min-height: 250px">
	        <h1>텅 </h1>
	    </div>
	</div>
</c:if>
<c:if test="${!empty list}">	
	<c:forEach var="vo" items="${list}">
		<div class="col-md-6 mb-3" onclick="location.href='<c:url value='/member/store/storeDetail.do?storeNo=${vo.storeNo}' />'">
		    <div class="d-flex align-items-center list-card bg-white h-100 rounded overflow-hidden position-relative shadow-sm">
		        <div class="list-card-image">
		            <div class="favourite-heart text-danger position-absolute"><a href="<c:url value='/resources/memberResources/#' />"><i class="feather-heart"></i></a></div>
		            <c:if test="${vo.sStatusNo==2}">
		                <div class="member-plan position-absolute"><span class="badge badge-primary">영업중</span></div>
	                </c:if>
	                <c:if test="${vo.sStatusNo==1 or vo.sStatusNo==3}">
		                <div class="member-plan position-absolute"><span class="badge badge-dark">준비중</span></div>
	                </c:if>
		            <a href="<c:url value='/member/store/storeDetail.do?storeNo=${vo.storeNo}' />">
	                    <img alt="#" src='<c:url value="/resources/imgs/${vo.storeLogo}"/>' class="img-fluid item-img w-100">
	                </a>
		        </div>
		        <div class="p-3 position-relative">
		            <div class="list-card-body">
	                   <p class="mb-1 h6">${vo.storeName}</p>
	                    <p class="text-gray mb-2">${vo.storeAddress} ${vo.storeAddressDetail}</p>
		                <p class="text-gray mb-2 time">
		                <span class="bg-light text-dark rounded-sm"><i class="feather-clock"></i>
		                	${vo.storeOpenTime} ~ ${vo.storeCloseTime}
		                 </span>
		                </p>
	               		<p class="text-gray mb-2">
	                    <span class="float-left text-black-50"><fmt:formatNumber value="${vo.storeMinPrice}" type="currency"/>부터 배달가능</span></p>
	                </div>
		        </div>
                   <c:if test="${vo.couponExist>0}">
		               	<span class="badge badge-danger float-right" style="position: absolute; top: 8px;right: 8px" >coupon</span>
                   </c:if>
		    </div>
		</div>
	</c:forEach>
</c:if>