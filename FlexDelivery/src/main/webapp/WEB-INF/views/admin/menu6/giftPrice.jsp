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
	
			<div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">선물하기 - 금액</h4>
                        <a href="#" class="btn btn-dark round">등록</a>
                    </div>
                    <div class="card-body">
                        <table class="table table-hover mb-0">
							<thead>
							    <tr>
							      <th>번호</th>
							      <th colspan="3">금액</th>
							
							      <th>비고</th>
							    </tr>
							</thead>
							<tbody>
							    <tr>
							      <td class="text-bold-500">1</td>
							      <td colspan="3">5,000</td>
							      
							      <td><a href="#" class="btn btn-primary round">수정</a>
							      <a href="#" class="btn btn-danger round">삭제</a></td>
							    </tr>
							    <tr>
							      <td class="text-bold-500">2</td>
							      <td colspan="3">10,000</td>
							     
							      <td><a href="#"><i
							            class="badge-circle badge-circle-light-secondary font-medium-1" data-feather="mail"></i></a></td>
							    </tr>
							    <tr>
							      <td class="text-bold-500">3</td>
							      <td colspan="3">15,000</td>
							      
							      <td><a href="#"><i
							            class="badge-circle badge-circle-light-secondary font-medium-1" data-feather="mail"></i></a></td>
							    </tr>
							    <tr>
							      <td class="text-bold-500">4</td>
							      <td colspan="3">20,000</td>
							      
							      <td><a href="#"><i
							            class="badge-circle badge-circle-light-secondary font-medium-1" data-feather="mail"></i></a></td>
							    </tr>
							    <tr>
							      <td class="text-bold-500">5</td>
							      <td colspan="3">30,000</td>
							      
							      <td><a href="#"><i
							            class="badge-circle badge-circle-light-secondary font-medium-1" data-feather="mail"></i></a></td>
							    </tr>
							    <tr>
							      <td class="text-bold-500">6</td>
							      <td colspan="3">50,000</td>
							      
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

<!-- script start -->
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/feather-icons/feather.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/app.js"></script>
   
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/simple-datatables/simple-datatables.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/vendors.js"></script>

<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/main.js"></script>

<!-- script end -->
    
<%@include file="../../adminInc/bottom.jsp" %>    