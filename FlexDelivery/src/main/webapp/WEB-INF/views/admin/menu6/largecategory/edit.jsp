<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
<!-- css start -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/bootstrap.css">  
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/simple-datatables/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/app.css">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/ownerResources/assets/images/favicon.svg" type="image/x-icon">
<!-- css end -->

<div class="container">
	<div class="row">
		<form name="frmLCategoryWrite" method="post" action="#" >
			<!-- Hoverable rows start -->
			<div class="row" id="table-hover-row">
				<div class="col-12">
				    <div class="card">
				      <div class="card-content"> 
				            
				        <!-- table head dark -->
				        <div class="table-responsive" style="text-align: center;">
				          <table class="table mb-0">
				            <thead class="thead-dark">
				              <tr>
				                <th colspan="3"></th> 
				              </tr>
				            </thead>
				            <tbody>
				              <tr>
				                <td colspan="3"  style="text-align: center;">
				                	<button class="btn btn-outline-light">파일 등록</button>
				                </td>
				              </tr>
				              <tr>
				                <td colspan="1"><span>대분류 이름</span></td>
				                <td colspan="2">
				                	<input type="text" name="lCategoryName" id="lCategoryName" placeholder="이름을 입력하세요">
				                </td>
				              </tr>
				              <tr>
				                <td colspan="3"  style="text-align: center;">
				                	<input type="submit" value="수정" class="btn btn-dark round">
				                </td>
				              </tr>
				            </tbody>
				          </table>
				          
				        </div>
				      </div>
				    </div>
				</div>
			</div>
		</form>
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

    