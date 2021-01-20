<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../adminInc/top.jsp" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/bootstrap.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/app.css">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/ownerResources/assets/images/favicon.svg" type="image/x-icon">

<!-- main start -->
<div class="main-content container-fluid" style="width: 75%">
    <div class="page-title">
        <div class="row">
            <div class="col-12 col-md-6 order-md-1 order-last">
                <h3>광고승인 세부조회</h3>
                <p class="text-subtitle text-muted">점포 승인 요청과 관련된 세부 내역입니다.</p>
            </div>
            <div class="col-12 col-md-6 order-md-2 order-first">
                <nav aria-label="breadcrumb" class='breadcrumb-header'>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="<c:url value='/admin/main.do'/> ">Main</a></li>
                        <li class="breadcrumb-item"><a href="<c:url value='/admin/menu2/approval.do'/> ">점포 등록/변경 승인 관리</a></li>
                        <li class="breadcrumb-item active" aria-current="page">점포 등록 세부 조회</li>
                    </ol>
                </nav>
            </div>
        </div>

    </div>

    <!-- // Basic multiple Column Form section start -->
    <section id="multiple-column-form">
        <div class="row match-height">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title" >변경 요청 내역 </h4>
                        <h4 class="card-title" >[접수번호 : 123456, 접수일자 : 2015년 05월 25일] </h4>
                    </div>
                    <div class="card-content">
                        <div class="card-body">
                            <form class="form">
                                <div class="row">
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            <label for="first-name-column" >사업자 번호</label>
                                            <input type="text" id="lisence-no-column" class="form-control" value="License No"
                                                name="fname-column" disabled="disabled">
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            <label for="owner-name-column">대표자 성함</label>
                                            <input type="text" id="owner-name-column" class="form-control" value="Owner Name"
                                                name="Oname-column" disabled="disabled">
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            <label for="shop-name">점포명</label>
                                            <input type="text" id="shop-name" class="form-control" value="Shop Name" name="shop-name"
                                            	disabled="disabled" >
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            <label for="shop-address">점포 주소</label>
                                            <input type="text" id="shop-address" class="form-control" name="shop-address"
                                                value="Shop Address" disabled="disabled">
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            <label for="phone-number">연락처</label>
                                            <input type="text" id="phone-number" class="form-control" name="phone-number"
                                                value="Phone Number" disabled="disabled">
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            <label for="email-id-column">Email</label>
                                            <input type="email" id="email-id-column" class="form-control" name="email-id-column"
                                                value="Email" disabled="disabled">
                                        </div>
                                    </div>
                                    <!-- 요청사항 -->
                                    <br><br>                                    
                                    <div class="row">
           								<div class="col">
                							<div class="card">
                								<div class="card-header">
                        							광고 요청 사항 :
                   								</div>
                    							<div class="card-body">
                    								<form class="form">
                                						<div class="row">
                    										<div class="col-md-4 col-12">
                                        						<div class="form-group">
                                           							 <label for="present-ad">현재 광고 등급</label>
                                            							 <input type="text" id="present-ad" class="form-control" name="present-ad"
                                                								value="신규" disabled="disabled">
                                        						</div>
                                    						</div>
                    									
                                    						<div class="col-md-4 col-12">
                                     		   					<div class="form-group">
                                            						<label for="request-ad">요청 광고 등급</label>
                                            						<input type="text" id="request-ad" class="form-control" name="request-ad"
                                                				  		   value="슈퍼캡숑" disabled="disabled">
                                        						</div>
                                    						</div>                        							
                    									</div>
                    								</form>
                    							</div>
                							</div>
            							</div>
        							</div>
                                    <!-- 요청사항 끝 -->
                                    <div class="col-12 d-flex justify-content-end">
                                        <button type="submit" class="btn btn-primary mr-1 mb-1">승인</button>
                                        <button type="reset" class="btn btn-danger mr-1 mb-1">반려</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- // Basic multiple Column Form section end -->
</div>

<!-- main end -->

<!-- script start -->
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/feather-icons/feather.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/app.js"></script>   
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/simple-datatables/simple-datatables.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/vendors.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/main.js"></script>
<!-- script end -->
<%@ include file="../../adminInc/bottom.jsp" %>