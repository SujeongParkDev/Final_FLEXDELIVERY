<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../../adminInc/top.jsp" %>    
	
<!-- css start -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/bootstrap.css">
   
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/simple-datatables/style.css">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/app.css">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/ownerResources/assets/images/favicon.svg" type="image/x-icon">
<!-- css end -->

<div class="container">
	<div class="row">
	
		<div class="buttons">
	        <a href="#" class="btn btn-secondary round">Secondary</a>
	        <a href="#" class="btn btn-info round">Info</a>
	        <a href="#" class="btn btn-warning round">Warning</a>
	        <a href="#" class="btn btn-success round">Success</a>
	        <a href="#" class="btn btn-light round">Light</a>
	    </div>
		<!-- Hoverable rows start -->
		<div class="row" id="table-hover-row">
			<div class="col-12">
			 	<div class="card">
			  		<div class="card-header">
						<h4 class="card-title">쿠폰 관리 - 이벤트 쿠폰</h4>
			    	</div>
			    	<div class="card-content">
			      		<div class="card-body">
			        
			      		</div>
			      
			      		<a href="#" class="btn btn-dark round">등록</a>
			      
						<!-- table hover -->
					    <div class="table-responsive">
					    	<table class="table table-hover mb-0">
					            <thead>
					              <tr>
					                <th>번호</th>
					                <th colspan="3">쿠폰 코드</th>
									<th>시작일</th>
									<th>만료일</th>
									<th>할인가격</th>
					                <th>최소주문금액</th>
					                <th>비고</th>
					              </tr>
					            </thead>
					           <tbody>
					              <tr>
					                <td class="text-bold-500">1</td>
					                <td colspan="3">WELCOME2021</td>
					                <td>2021-01-15</td>
					                <td>2021-01-31</td>
					                <td>2,021</td>
					                <td>15,000</td>
					                <td><a href="#" class="btn btn-primary round">수정</a>
					                <a href="#" class="btn btn-danger round">삭제</a></td>
					              </tr>
					              <tr>
					                <td class="text-bold-500">2</td>
					                <td colspan="3">SNOWPERSON</td>
					               	<td>2021-02-01</td>
					               	<td>2021-02-28</td>
					               	<td>2,000</td>
					                <td>20,000</td>
					                <td><a href="#"><i
					                      class="badge-circle badge-circle-light-secondary font-medium-1" data-feather="mail"></i></a></td>
					              </tr>
					              <tr>
					                <td class="text-bold-500">3</td>
					                <td colspan="3">FLOWERSCOME</td>
					                <td>2021-03-01</td>
					                <td>2021-03-31</td>
					                <td>3,000</td>
					                <td>25,000</td>
					                <td><a href="#"><i
					                      class="badge-circle badge-circle-light-secondary font-medium-1" data-feather="mail"></i></a></td>
					              </tr>
					              <tr>
					                <td class="text-bold-500">4</td>
					                <td colspan="3">CHILDRENSDAY</td>
					                <td>2021-05-01</td>
					                <td>2021-05-07</td>
					                <td>2,000</td>
					                <td>20,000</td>
					                <td><a href="#"><i
					                      class="badge-circle badge-circle-light-secondary font-medium-1" data-feather="mail"></i></a></td>
					              </tr>
			              
			       				</tbody>
			        		</table>
			      		</div>
			    	</div>
			    </div>
			</div>
		</div>
	</div>
</div>
<!-- Hoverable rows end -->


<!-- script start -->
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/feather-icons/feather.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/app.js"></script>
   
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/simple-datatables/simple-datatables.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/vendors.js"></script>

<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/main.js"></script>

<!-- script end -->

<%@include file="../../adminInc/bottom.jsp" %> 
    
    