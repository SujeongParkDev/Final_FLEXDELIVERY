<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../../adminInc/top.jsp" %>    

<!-- CSS start -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/bootstrap.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/simple-datatables/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/app.css">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/ownerResources/assets/images/favicon.svg" type="image/x-icon">
<!-- CSS end -->    

<div class="container">
	<div class="row">
		<div class="col-12">
             <div class="card">
                 <div class="card-header">
                     <h4 class="card-title">마이페이지</h4>
                     <!-- <a href="#" class="btn btn-dark round">등록</a> -->
                 </div>
                 <div class="card-body">
	                 <div class="col-md-6">
	                 	 <form name="frmMyPage" action="#">
		                     <div class="form-group">
		                         <label for="disabledInput">아이디 </label>
		                         <input type="text" class="form-control" id="disabledInput" placeholder="admin" disabled>
		                         <label for="basicInput">비밀번호</label>
	                             <input type="password" class="form-control" id="basicInput" placeholder="비밀번호를 입력해주세요">
		                         <label for="basicInput">비밀번호 확인</label>
	                             <input type="password" class="form-control" id="basicInput" placeholder="비밀번호를 다시 입력해주세요">
		                         <label for="basicInput">이름</label>
	                             <input type="text" class="form-control" id="basicInput" placeholder="이름을 입력해주세요" value="박수정">
		                     </div>
		                     <!-- <div class="form-group">
		                         <label for="disabledInput">Readonly Input</label>
		                         <input type="text" class="form-control" id="readonlyInput" readonly="readonly"
		                             value="You can't update me :P">
		                     </div> -->
		                     
		                     <br><br><input type="submit" class="btn btn-dark round">
	                 	 </form>
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
        
<%@include file="../../adminInc/bottom.jsp" %>    