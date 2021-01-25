<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:if test="${!empty list}">
	<c:forEach var="vo" items="${list}">
		<div class="col-md-3 col-6 pb-3">
		    <div class="list-card bg-white h-100 rounded overflow-hidden position-relative shadow-sm">
		        <div class="list-card-image">
		        	<div class="star position-absolute"><span class="badge badge-success"><i class="feather-star"></i> ${vo.reviewRating} (${vo.reviewCount})</span></div>
		            <div class="favourite-heart text-danger position-absolute"><a href="<c:url value='/member/' />"><i class="feather-heart"></i></a></div>
		            <c:if test="${vo.sStatusNo==2}">
		                <div class="member-plan position-absolute"><span class="badge badge-primary">영업중</span></div>
	                </c:if>
	                <c:if test="${vo.sStatusNo==1 or vo.sStatusNo==3}">
		                <div class="member-plan position-absolute"><span class="badge badge-dark">준비중</span></div>
	                </c:if>
		            <a href="<c:url value='/member/store/storeDetail.do?storeNo=${vo.storeNo}' />">
		            	<img alt="#" src='<c:url value="/resources/imgs/${vo.storeLogo}" />' class="img-fluid item-img w-100">
		            </a>
		        </div>
		        <div class="p-3 position-relative">
		            <div class="list-card-body">
		                <p class="mb-1 h6">
	                   <span>
	                   	${vo.storeName}
	                   </span>
	                     	<span class="badge badge-danger sm float-right">coupon</span>
	                    <c:if test="${vo.couponExist>0}">
	                     	<span class="badge badge-danger">coupon</span>
	                     </c:if>
	               		<%
		                  	Date d = new Date();
		                  	d.setMonth(d.getMonth()+2);
	                 	%>
	                     <c:set var="newday" value="<%=d%>"/>
	                     <fmt:parseDate var="openday" value="${vo.storeRegdate}" type="DATE" pattern="yyyy-MM-dd"/>
						 <c:if test="${openday<newday}">
			                 <span class="badge badge-sm-warning float-right">new</span> 
						 </c:if>
		                </p>
		                <p class="text-gray mb-1 small">${vo.storeAddress} ${vo.storeAddressDetail}</p>
	               		<p class="text-gray mb-2">
	                    <span class="float-left text-black-50"><fmt:formatNumber value="${vo.storeMinPrice}" type="currency"/>부터</span></p>
		            </div>
		        </div>
		    </div>
		</div>
	</c:forEach>
</c:if>
<c:if test="${empty list}">
	<div class="col-md-12 pb-12">
	    <div class="list-card bg-white h-100 rounded overflow-hidden position-relative shadow-sm" style="min-height: 250px">
	        <h1 class="mb-1">텅</h1>
	    </div>
	</div>
</c:if>