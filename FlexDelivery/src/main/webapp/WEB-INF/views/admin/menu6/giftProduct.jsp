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
		<div class="col-12 ">
            <div class="card">
                <div class="card-header">
	                <h4 class="section-title text-uppercase">선물하기 - 상품 목록</h4>
                </div>
                <div class="card-body">
				    <section id="groups">
				        <div class="row match-height">
				            <div class="col-12 mt-3 mb-1">
				            	<p class="section-title text-uppercase">카테고리 목록</p>
				            </div>
				            <div class="buttons">                      
			                        <a href="#" class="btn btn-outline-dark">전체보기</a>
			                        <a href="#" class="btn btn-outline-dark">고마움을</a>
			                        <a href="#" class="btn btn-outline-dark">사랑을</a>
			                        <a href="#" class="btn btn-outline-dark">축하를</a>
			                        <a href="#" class="btn btn-outline-dark">응원을</a>
			                        <a href="#" class="btn btn-outline-dark">인사안부를</a>
			                        <a href="#" class="btn btn-outline-dark">센스를</a>
			                        <a href="#" class="btn btn-outline-dark">내체력을</a>
			                        <a href="#" class="btn btn-outline-dark">내생명력을</a>
			                        <a href="<c:url value='giftCategoryWrite.do'/>" class="btn btn-dark">+등록</a>
			               </div>
				       </div>
                  </section>
                  
			        <div class="row match-height">
			            <div class="col-12">
			                <div class="card-group">
			                    <div class="card">
			                        <div class="card-content">
			                            <img class="card-img-top img-fluid" src="${pageContext.request.contextPath}/resources/adminResources/img/blog-img/5.jpg"
			                                alt="Card image cap">
			                            <div class="card-body">
			                                <h4 class="card-title">수고했어 오늘도</h4>
			                                <!-- <p class="card-text"> 수정  | 삭제
			                                </p> -->
			                                <small class="text-muted">수정  | 삭제</small>
			                            </div>
			                        </div>
			                    </div>
			                    <div class="card">
			                        <div class="card-content">
			                            <img class="card-img-top img-fluid" src="${pageContext.request.contextPath}/resources/adminResources/img/blog-img/4.jpg"
			                                alt="Card image cap" />
			                            <div class="card-body">
			                                <h4 class="card-title">으쌰으쌰</h4>
			                                <!-- <p class="card-text">
			                                    This card has supporting text below as a natural lead-in to additional
			                                    content.
			                                </p> -->
			                                <small class="text-muted">수정  | 삭제</small>
			                            </div>
			                        </div>
			                    </div>
			                    <div class="card">
			                        <div class="card-content">
			                            <img class="card-img-top img-fluid" src="${pageContext.request.contextPath}/resources/adminResources/img/blog-img/6.jpg"
			                                alt="Card image cap">
			                            <div class="card-body">
			                                <h4 class="card-title">잘먹고 잘살자</h4>
			                                <!-- <p class="card-text">
			                                    This card has supporting text below as a natural lead-in to additional
			                                    content.
			                                </p> -->
			                                <small class="text-muted">수정  | 삭제</small>
			                            </div>
			                        </div>
			                    </div>	                    
			                </div>
			            </div>
			        </div>
			            
                </div><!-- card-body -->
            </div><!-- card -->
            
        </div><!--col-12-->
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
    