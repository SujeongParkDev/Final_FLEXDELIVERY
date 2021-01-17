<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../../adminInc/top.jsp" %>    

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/bootstrap.css">
   
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/simple-datatables/style.css">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/app.css">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/ownerResources/assets/images/favicon.svg" type="image/x-icon">
    

<div class="container">
	<div class="row">
		<div class="main-content container-fluid">
		    <div class="page-title">
		        <div class="row">
		            <div class="col-12 col-md-6 order-md-1 order-last">
		                <h3>1:1 문의내역 조회</h3>
		                <p class="text-subtitle text-muted">글번호, 아이디, 제목, 회원종류, 답변여부에 따른 정렬이 가능합니다.</p>
		            </div>
		        </div>
		    </div>
		    <section class="section">
		        <div class="card">
		            <div class="card-header">
		            </div>
		            <div class="card-body">
		                <table class='table table-striped' id="table1">
		                    <thead>
		                        <tr>
		                            <th>글번호</th>
		                            <th>아이디</th>
		                            <th>제목</th>
		                            <th>회원종류</th>
		                            <th>답변여부</th>
		                        </tr>
		                    </thead>
		                    <tbody>
		                        <tr>
		                            <td>1</td>
		                            <td>hong</td>
		                            <td>유료광고 월정액 중복이체</td>
		                            <td>점포</td>
		                            <td>
		                                <span class="badge bg-success">답변완료</span>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>2</td>
		                            <td>park</td>
		                            <td>선물쿠폰 잔액 조회</td>
		                            <td>회원</td>
		                            <td>
		                                <span class="badge bg-success">답변완료</span>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>3</td>
		                            <td>kim</td>
		                            <td>선물하기는 아이디로는 안 되나요?</td>
		                            <td>회원</td>
		                            <td>
		                                <span class="badge bg-danger">미답변</span>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>Darius</td>
		                            <td>velit@nec.com</td>
		                            <td>0309 690 7871</td>
		                            <td>Ways</td>
		                            <td>
		                                <span class="badge bg-success">Active</span>
		                            </td>
		                        </tr>
		                        
		                        <tr>
		                            <td>Channing</td>
		                            <td>tempor.bibendum.Donec@ornarelectusante.ca</td>
		                            <td>0845 46 49</td>
		                            <td>Warrnambool</td>
		                            <td>
		                                <span class="badge bg-success">Active</span>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>Aladdin</td>
		                            <td>sem.ut@pellentesqueafacilisis.ca</td>
		                            <td>0800 1111</td>
		                            <td>Bothey</td>
		                            <td>
		                                <span class="badge bg-success">Active</span>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>Cruz</td>
		                            <td>non@quisturpisvitae.ca</td>
		                            <td>07624 944915</td>
		                            <td>Shikarpur</td>
		                            <td>
		                                <span class="badge bg-success">Active</span>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>Keegan</td>
		                            <td>molestie.dapibus@condimentumDonecat.edu</td>
		                            <td>0800 200103</td>
		                            <td>Assen</td>
		                            <td>
		                                <span class="badge bg-success">Active</span>
		                            </td>
		                        </tr>
		                    </tbody>
		                </table>
		            </div>
		        </div>
		
		    </section>
		</div>
		
	</div>
</div>
    
   
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/feather-icons/feather.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/app.js"></script>
   
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/simple-datatables/simple-datatables.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/vendors.js"></script>

<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/main.js"></script>

        
<%@include file="../../adminInc/bottom.jsp" %>    