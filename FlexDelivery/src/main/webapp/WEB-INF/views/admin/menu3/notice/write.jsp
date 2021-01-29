<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../../adminInc/top.jsp" %>

<!-- css start -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/bootstrap.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/simple-datatables/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/app.css">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/ownerResources/assets/images/favicon.svg" type="image/x-icon">
<!-- css end -->

<div class="container">
	<div class="row">
		<div class="main-content container-fluid">
			<div class="page-title">
		        <div class="row">
		            <div class="col-12 col-md-6 order-md-1 order-last">
		                <h3>이벤트</h3>
		                <p class="text-subtitle text-muted">플렉스 딜리버리가 사장님께 소개하는 꿀팁!</p>
		            </div>
		        </div>
		    </div>

			<!-- ##### Blog Wrapper Start ##### -->
		    <div class="blog-wrapper section-padding-100-0 clearfix">
		        <div class="container">
		            <div class="row">
		                <!-- Single Blog Area  -->
		                <div class="col-12 col-md-6 col-lg-4">
		                    <div class="single-blog-area blog-style-2 mb-100">
		                        <div class="single-blog-thumbnail">
		                            <img src="${pageContext.request.contextPath}/resources/adminResources/img/blog-img/4.jpg" alt="">
		                            <div class="post-date">
		                                <a href="#">3 <span>march</span></a>
		                            </div>
		                        </div>
		                        <!-- Blog Content -->
		                        <div class="single-blog-content mt-50">
		                            <div class="line"></div>
		                            <a href="#" class="post-tag">JIAN.B 작가와 플렉스 딜리버리의</a>
		                            <h4><a href="#" class="post-headline">을지로 사진전 이야기</a></h4>
		                            <div class="post-meta">
		                                <!-- <p>By <a href="#">james smith</a></p> -->
		                                <p>2021-01-19</p>
		                            </div>
		                        </div>
		                    </div>
		                </div>
		               
		            </div>
		        </div>
		    </div>
		    <!-- ##### Blog Wrapper End ##### -->
		    
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

<%@ include file="../../../adminInc/bottom.jsp" %>
