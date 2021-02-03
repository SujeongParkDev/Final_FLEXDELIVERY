<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../../../ownerInc/top.jsp"%>
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
				<div class="card-content"> 
		           <div class="card-body">
						<div class="main-content container-fluid">
			                <div class="col-12">
			                    <div class="single-blog-area blog-style-2 mb-100">
		                       <!-- ##### Post Content Area ##### -->
					                <div class="col-12">
					                    <!-- Single Blog Area  -->
					                    <div class="single-blog-area blog-style-2 mb-50">
					                        <!-- Blog Content -->
					                        <div class="single-blog-content">
					                            <div class="line"></div>
					                            <a href="#" class="post-tag">${vo.honeytipNo }번째 꿀팁</a>
					                            <h4><a href="#" class="post-headline mb-0">${vo.honeytipTitle }</a></h4>
					                            <div class="post-meta mb-50">
					                                <p>By <a href="#none">플렉스 딜리버리</a></p>
					                                <hr>
					                            </div>
					                            <div class="text-center">
					                            	<img src="${pageContext.request.contextPath}/resources/imgs/HoneytipImages/${vo.honeytipThumbnail}">
					                            	<br><br><br>
						                            <p>${vo.honeytipContent }</p>
					                            </div>
											</div>
					                    </div>
					
					                    <!-- About Author -->
					                    <div class="blog-post-author mt-100 d-flex">
					                        <div class="author-thumbnail">
					                            <img src="${pageContext.request.contextPath}/resources/imgs/CommonImages/fdMemberLineTp.png" alt="플렉스딜리버리"
					                            	>
					                        </div>
					                        <div class="author-info">
					                            <div class="line"></div>
					                            <span class="author-role">Author</span>
					                            <h4><a href="#" class="author-name">플렉스 딜리버리</a></h4>
					                            <p><span>여러분께 행복을 선물해드리고 싶은 플렉스 딜리버리입니다.</span></p>
					                       </div>	
					                    </div>
										<div class="text-center" style="text-center">
											<br><br>
											<a class="btn btn-primary mr-1 mb-1" id="List" href="<c:url value='/owner/menu3/honeyTip/honeyTip.do'/>">목록</a>
											
										</div>       
					                </div><!-- col-12 -->
				                </div>
				            </div>
				        </div>
    				</div>
   				</div>
	    		
		    </div><!-- card -->
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


<%@ include file="../../../ownerInc/bottom.jsp"%>