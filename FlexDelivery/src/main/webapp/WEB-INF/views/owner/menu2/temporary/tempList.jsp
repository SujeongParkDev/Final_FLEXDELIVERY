<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@include file="../../../ownerInc/jianSidebarTop.jsp"%>
	
<!-- CSS start -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/bootstrap.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/simple-datatables/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/app.css">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/ownerResources/assets/images/favicon.svg" type="image/x-icon">
<link rel="stylesheet" type="text/css" href
="${pageContext.request.contextPath}/resources/ownerResources/assets/css/oneToOne.css"/>
<!-- CSS end --> 
<div class="container">
	<div class="row">
		<div class="main-content container-fluid">
			<div class="page-title">
				<div class="row">
					<div class="col-12 col-md-6 order-md-1 order-last">
						<h3>나의 신청 내역 </h3>
						<p class="text-subtitle text-muted">승인 신청 목록입니다.</p>
					</div> 
				</div> 
			</div>
			<section class="section">
				<div class="card">
				            <div class="card-header">
					<!--  -->
					</div> 
		            			<div class="card-body">
		                			<ul class="nav nav-tabs">
							<li class="nav-item">
						 		<a class="nav-link active" data-toggle="tab" href="#asd">승인 신청 목록 <span class="badge bg-transparent">3</span></a>
							</li> 
							
						</ul>
						
						<div class="tab-pane fade show active" id="asd">
							<br>
						 	<!-- Hoverable rows start -->
							<div class="row" id="table-hover-row">
								<div class="col-12">
									<div class="card">
										<div class="card-content">
		       									<!-- table hover -->
											<div class="table-responsive">
												<table class="table table-hover mb-0">
													<thead>
														<tr>
															<th>번호</th>
							  								<th colspan="3">신청서 종류 </th>
															<th></th>					
															<th>신청 일시</th>
															<th>상태</th>
															<th>취소하기</th>
														</tr>
													</thead>
													<tbody>
							 							<tr>
															<td class="text-bold-500">2</td>
															<td colspan="3">입점 신청  </td>							               
															<td></td>
															<td>2021-01-19</td>
							      								<td><span class="badge bg-danger">미승인 </span></td>
							    								<td><span class="badge bg-dark">취소</span></td>
							     							</tr>
														<tr>
															
							                						<tr>
							   								<td class="text-bold-500">1</td>
															<td colspan="3">사업자등록증 </td>							                
							                							<td></td>
							                							<td>2021-01-06</td>
							                							<td><span class="badge bg-success">승인 완료</span></td>
							                							<td></td>

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
		          	  	</div>
			</section> 
		</div> 
	</div> 
</div> 

<!-- script start -->   
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/feather-icons/feather.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/app.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/simple-datatables/simple-datatables.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/vendors.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/main.js"></script>
<!-- script end -->
<%@include file="../../../ownerInc/jianSidebarBottom.jsp"%>