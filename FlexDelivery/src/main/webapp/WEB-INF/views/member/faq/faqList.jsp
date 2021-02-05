<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../memInc/top.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="osahan-home-page">
	<div class="bg-primary p-3 d-none">
		<div class="text-white">
			<div class="title d-flex align-items-center">
				<a class="toggle"
					href="<c:url value='/resources/memberResources/#' />"> <span></span>
				</a>
				<h4 class="font-weight-bold m-0 pl-5">고객센터</h4>
			</div>
		</div>
	</div>
	<!-- profile -->
	<div class="container position-relative">
		<div class="py-5 osahan-profile row">
			<div class="col-md-12 mb-12">
				<div class="osahan-cart-item-profile">
					<div class="box bg-white mb-3 shadow-sm rounded">
						<div class="p-3 d-flex align-items-center">
							<i class="feather-lock display-4"></i>
							<div class="ml-3">
								<h6 class="text-dark mb-2 mt-0">1:1문의</h6>
								<p class="mb-0 text-muted">한놈씩덤벼</p>
							</div>
						</div>
						<div class="overflow-hidden border-top d-flex align-items-center p-3">
							<a class="font-weight-bold d-block"
								href="<c:url value='/member/askWrite.do'/>">이동</a> <i
								class="feather-arrow-right-circle ml-auto text-primary"></i>
						</div>
					</div>
					<div id=memberregister>
						<div class="mb-2 mt-3">
							<h5 class="font-weight-semi-bold mb-0">회원가입 FAQ</h5>
						</div>
	 					<c:import url="/member/faq/faqC.do">
							<c:param name="fCategoryNo" value="10"></c:param>
						</c:import>
					</div>
					<div class="mb-2 mt-3">
						<h5 class="font-weight-semi-bold mb-0">리뷰관리 FAQ</h5>
					</div>
 					<c:import url="/member/faq/faqC.do">
						<c:param name="fCategoryNo" value="11"></c:param>
					</c:import>
					
					<div class="mb-2 mt-3">
						<h5 class="font-weight-semi-bold mb-0">이용문의 FAQ</h5>
					</div>
 					<c:import url="/member/faq/faqC.do">
						<c:param name="fCategoryNo" value="12"></c:param>
					</c:import>
					
					<div class="mb-2 mt-3">
						<h5 class="font-weight-semi-bold mb-0">불편사항 FAQ</h5>
					</div>
 					<c:import url="/member/faq/faqC.do">
						<c:param name="fCategoryNo" value="13"></c:param>
					</c:import>

				</div>
			</div>
		</div>
	</div>
</div>
<%@include file="../../memInc/bottom.jsp"%>