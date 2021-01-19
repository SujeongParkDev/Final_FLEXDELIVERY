<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../adminInc/top.jsp" %>

<!-- css start -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/bootstrap.css">
   
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/simple-datatables/style.css">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/app.css">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/ownerResources/assets/images/favicon.svg" type="image/x-icon">
<!-- css end -->

<div class="blog-wrapper section-padding-100-0 clearfix">
	<div class="container">
    	<div class="row">
           	<!-- ##### Sidebar Area ##### -->
               <!-- <div class="col-12 col-md-4 col-lg-3">
                   <div class="post-sidebar-area">

                       Widget Area
                       <div class="sidebar-widget-area">
                           <h5 class="title subscribe-title">Subscribe to my newsletter</h5>
                           <div class="widget-content">
                               <form action="#" class="newsletterForm">
                                   <input type="email" name="email" id="subscribesForm" placeholder="Your e-mail here">
                                   <button type="submit" class="btn original-btn">Subscribe</button>
                               </form>
                           </div>
                       </div>

                   </div>
               </div> -->
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">공지사항</h4>
                        <a href="#" class="btn btn-dark round">글쓰기</a>
                    </div>
                    <div class="card-body">
                        <table class="table table-hover mb-0">
							<thead>
							    <tr>
							      <th>번호</th>
							      <th>글제목</th>
							      <th>등록일</th>
							    </tr>
							</thead>
							<tbody>
							    <tr>
                                     <td>6</td>
                                     <td>개인정보처리방침 개정 안내 (1월 25일 시행)</td>
                                     <td>2021-01-19</td>
                                 </tr>
                                 <tr>
                                     <td>5</td>
                                     <td>리뷰 신고 기능 도입 안내(1월 14일 시행)</td>
                                     <td>2021-01-10</td>
                                 </tr>
                                 <tr>
                                     <td>4</td>
                                     <td>유료 광고 서비스 일부 내용 변경 안내</td>
                                     <td>2020-12-28</td>
                                 </tr>
                                 <tr>
                                     <td>3</td>
                                     <td>개인정보처리방침 개정 안내(12월 31일)</td>
                                     <td>2020-12-15</td> 
                                 </tr>
                                 <tr>
                                     <td>2</td>
                                     <td>플렉스 딜리버리 시스템 정기점검 안내(12/14)</td>
                                     <td>2020-12-10</td>  
                                 </tr>
                                 <tr>
                                     <td>1</td>
                                     <td>등급 서비스 내용 변경 안내</td>
                                     <td>2020-12-08</td>
                                 </tr>
							</tbody>
						</table>
                    </div>
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

<%@ include file="../../adminInc/bottom.jsp" %>
