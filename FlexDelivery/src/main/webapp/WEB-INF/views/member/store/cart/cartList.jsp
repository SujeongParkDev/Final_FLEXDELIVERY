<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="osahan-cart-item rounded rounded shadow-sm overflow-hidden bg-white sticky_sidebar">
    <div class="d-flex border-bottom osahan-cart-item-profile bg-white p-3">
        <div class="d-flex flex-column">
            <h6 class="mb-1 font-weight-bold">${vo.storeName}</h6>
            <p class="mb-0 small text-muted"><i class="feather-map-pin"></i>${vo.storeAddress} ${vo.storeAddressDetail}</p>
        </div>
    </div>
    <div class="bg-white border-bottom py-2 cartDiv">
   		<c:set var="buyPrice" value="0" />
   		<c:set var="totalPrice" value="0" />
   		<c:set var="delivery" value="0" />
    	<c:if test="${empty list}">
    		<div class="gold-members d-flex align-items-center justify-content-between px-3 py-2 border-bottom">
    			<img alt="장바구니 상품 없음" src="<c:url value='/resources/imgs/TUNG.png'/>">
    		</div>
    	</c:if>
    	<c:if test="${!empty list}">
    		<c:forEach var="cVo" items="${list}">
	    		<c:set var="sum" value="${(cVo.menuPrice+cVo.mOptionPrice)*cVo.cartQty}" />
    			<c:set var="buyPrice" value="${buyPrice+sum}" />
		        <div class="gold-members d-flex align-items-center justify-content-between px-3 py-2 border-bottom">
		            <div class="media align-items-center">
		                <div class="mr-2 text-danger">&middot;</div>
		                <input type="hidden" value="${cVo.cartNo}" name="cartNoHidden">
		                <div class="media-body">
		                    <p class="m-0">${cVo.menuName}
		                    <span class="font-monospace text-dark"><small><br>${cVo.mOptionName}</small></span>
		                    </p>
		                </div>
		            </div>
		            <div class="d-flex align-items-center">
		                <span class="count-number float-right">
		                <button type="button" class="btn-sm left dec btn btn-outline-secondary" onclick="minus(${cVo.cartNo})"> <i class="feather-minus"></i> </button>
		                <input class="count-number-input" type="text" readonly value="${cVo.cartQty}">
		                <button type="button" class="btn-sm right inc btn btn-outline-secondary" onclick="plus(${cVo.cartNo})"> <i class="feather-plus"></i> </button>
		                </span>
			            <p class="text-gray mb-0 float-right ml-2 text-muted small">${(cVo.menuPrice+cVo.mOptionPrice)*cVo.cartQty}</p>
		            </div>
		        </div>
    		</c:forEach>
    	</c:if>
    </div>
    <c:if test="${buyPrice<vo.storeMinPrice}">
    	<c:set var="delivery" value="3000" />
    </c:if>
    <c:set var="totalPrice" value="${buyPrice+delivery}" />
    <div class="bg-white p-3 clearfix border-bottom">
        <p class="mb-1">총합 <span class="float-right text-dark" id="cartTotalPrice">${buyPrice} 원</span></p>
        <p class="mb-1">배달팁<span class="text-info ml-1"><i class="feather-info"></i></span><span class="float-right text-dark">${delivery} 원</span></p>
        <hr>
        <h6 class="font-weight-bold mb-0">TO PAY <span class="float-right">${totalPrice}원</span></h6>
    </div>
    
    <div class="p-3">
    	<c:if test="${vo.sStatusNo==2}">
	        <a class="btn btn-success btn-block btn-lg" href="successful.html" >PAY ${totalPrice}원<i class="feather-arrow-right"></i></a>
    	</c:if>
    	<c:if test="${vo.sStatusNo==1 || vo.sStatusNo==3}">
	        <a class="btn btn-success btn-block btn-lg disabled" href="#" >지금은 준비중이에요<i class="feather-arrow-right"></i></a>
    	</c:if>
    </div>
</div>