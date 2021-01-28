<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../adminInc/top.jsp" %>

<div class="container">
	<div class="row">
	    <div class="col-12">
           <div class="card">
              <div class="card-header">
                <h3 class="card-title">사장님꿀팁</h3>
                <p class="text-subtitle text-muted">플렉스 딜리버리가 사장님께 소개하는 꿀팁!</p>
                <hr>
              </div>
		<!-- 	<div class="page-title">
		        <div class="row">
		        </div>
		            <div class="col-12 col-md-6 order-md-1 order-last">
		    </div>
		    </div> -->
		    
				<div class="card-content"> 
		           <!-- modal start -->
		           <div class="card-body" style="text-align: right;">
		                    
						<div class="main-content container-fluid">
							<!-- ##### Blog Wrapper Start ##### -->
						    <div class="blog-wrapper section-padding-100-0 clearfix">
						        <div class="container">
						            <div class="row">
						            	<c:if test="${empty list }">
						            		<div class="col-12">
						            		
						            			<div class="card text-center bg-lighten-2">
					                               <div class="card-content d-flex">
					                                    	<h2 class="card-title white">등록된 사장님꿀팁이 없습니다.</h2>
					                              </div>
					                           </div>
						            		</div>
						            	</c:if>
						            	<c:if test="${!empty list }">                  
				                        	<c:forEach var="vo" items="${list}" varStatus="status">
								                <!-- Single Blog Area  -->
								                <div class="col-12 col-md-6 col-lg-4">
								                    <div class="single-blog-area blog-style-2 mb-100">
								                        <div class="single-blog-thumbnail">
								                            <img src="${pageContext.request.contextPath}/resources/imgs/HoneytipImages/${vo.honeytipThumbnail}" alt="글 ${vo.honeytipTitle }의 이미지">
								                            <div class="post-date">
								                                <a href="#">${vo.honeytipNo } <span>HONEY</span></a>
								                            </div>
								                        </div>
								                        <!-- Blog Content -->
								                        <div class="single-blog-content mt-50">
								                            <div class="line"></div>
								                            <a href="#" class="post-tag">${vo.honeytipRegdate }</a>
								                            <h4><a href="#" class="post-headline">${vo.honeytipTitle }</a></h4>
								                            <!-- <div class="post-meta">
								                                <p>By <a href="#">james smith</a></p>
								                                <p>3 comments</p>
								                            </div> -->
								                        </div>
								                    </div>
								                </div>
								                <!-- Single Blog Area  -->
						            		</c:forEach>
					            		</c:if>
						            </div>
						        </div>
						    </div>
						    <!-- ##### Blog Wrapper End ##### -->
		    
		    			</div>
		    		</div>
	    		</div>
		    </div>
	    </div><!--main-content-->
    </div>
</div>
    
<%@ include file="../../adminInc/bottom.jsp" %>
