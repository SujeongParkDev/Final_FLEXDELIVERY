<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../../adminInc/top.jsp" %>    
	
<!-- script start -->
<script>
	$(function(){
		$('#lcategoryRegister').click(function(){
			window.open("<c:url value='/menu6/largecategory/write.do' />", "음식 대분류 등록", "width=400, height=600, scrollbars=0, toolbar=0, menubar=no");
		});
	});
</script>
<!-- script end -->
	
<!-- css start -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/bootstrap.css">  
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/simple-datatables/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/app.css">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/ownerResources/assets/images/favicon.svg" type="image/x-icon">
<!-- css end -->

<div class="container">
	<div class="row">
		<!-- Hoverable rows start -->
		<div class="row" id="table-hover-row">
		  <div class="col-12">
		    <div class="card">
		      <div class="card-header">
		        <h4 class="card-title">음식메뉴 - 대분류 카테고리 관리</h4>
		      </div>
		      <div class="card-content">
		        <div class="card-body">
		          
		        </div>        
		        <button class="btn btn-dark round" id="lcategoryRegister" name="lcategoryRegister">등록</button>
		        <!-- table hover -->
		        <div class="table-responsive">
		          <table class="table table-hover mb-0">
		            <thead>
		              <tr>
		                <th>번호</th>
		                <th colspan="3">이름</th>

		                <th></th>
		                <th>이미지파일</th>
		                <th>비고</th>
		              </tr>
		            </thead>
		            <tbody>
		              <tr>
		                <td class="text-bold-500">1</td>
		                <td colspan="3">한식</td>
		                
		                <td></td>
		                <td></td>
		                <td><a href="<c:url value='/categoryLargeEdit' />" class="btn btn-primary round">수정</a>
		                <a href="<c:url value='/categoryLargeDelete' />" class="btn btn-danger round">삭제</a></td>
		              </tr>
		              <tr>
		                <td class="text-bold-500">2</td>
		                <td colspan="3">중식</td>
		               
		                <td></td>
		                <td></td>
		                <td><a href="#"><i
		                      class="badge-circle badge-circle-light-secondary font-medium-1" data-feather="mail"></i></a></td>
		              </tr>
		              <tr>
		                <td class="text-bold-500">3</td>
		                <td colspan="3">분식</td>
		                
		                <td></td>
		                <td></td>
		                <td><a href="#"><i
		                      class="badge-circle badge-circle-light-secondary font-medium-1" data-feather="mail"></i></a></td>
		              </tr>
		              <tr>
		                <td class="text-bold-500">4</td>
		                <td colspan="3">일식/돈가스</td>
		                
		                <td></td>
		                <td></td>
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
    