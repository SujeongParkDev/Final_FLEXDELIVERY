<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FLEX한 사장님을 위한 내 점포 사이트</title>
<!--  css  -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/bootstrap.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/app.css">
<!-- vender css -->
	<!-- apexcharts -->	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/apexcharts/apexcharts.css">

	<!-- chartjs -->	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/chartjs/Chart.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/chartjs/Chart.min.css">

	<!-- choices.js -->	
	<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/choices.js/base.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/choices.js/base.min.css">
 --%>
 	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/choices.js/choices.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/choices.js/choices.min.css">

	<!-- dragula -->	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/dragula/dragula.min.css">

	<!-- perfect-scrollbar -->	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/perfect-scrollbar/perfect-scrollbar.css">

	<!-- quill -->	
   	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/quill/quill.bubble.css">
   	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/quill/quill.core.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/quill/quill.snow.css">

	<!--simple-datatables-->	
   	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/simple-datatables/style.css">

	<!-- toastify -->	
   	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/toastify/src/toastify.css">


    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/ownerResources/assets/images/favicon.svg" type="image/x-icon">


	
<!-- js -->
	<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/feather-icons/feather.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/app.js"></script>
    
    <script src="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/chartjs/Chart.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/apexcharts/apexcharts.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/pages/dashboard.js"></script>
    <script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/main.js"></script>

	<!-- owner한테 없어서 admin거 가져왔슴다 -->
	 <script src="${pageContext.request.contextPath}/resources/adminResources/js/jquery/jquery-2.2.4.min.js"></script>
	 <script src="${pageContext.request.contextPath}/resources/adminResources/js/active.js"></script>





	
	<!-- 클릭시 비밀번호 유효성 검사 및 페이지 이동 -->
    <!-- jQuery (Necessary for All JavaScript Plugins) -->
	<script type="text/javascript">
	  $(function(){
			$('#btMenuGroupWriteOpen').click(function(){
				if($('input[type=text]').val().length<1){
					alert('그룹명을 입력해 주세요');
					$('input[type=text]').focus();
					event.preventDefault();
				}else{
					var sMGroupName  =$('input[type=text]').val();
					window.opener.location.href="${pageContext.request.contextPath}/owner/menu2/foodmenu/menuGroupWrite.do?sMGroupName="+sMGroupName;
					self.close();
				}
					
			});
		});
    
    
   
    
	
	</script>
</head>
		<br>	<br>	
		<section id="basic-vertical-layouts">
		    <div class="row match-height">
		    	<div class="col-md-3 col-sm-12"></div>
		        <div class="col-md-6 col-sm-12">
		        <div class="card">
		            <div class="card-header">
		            <h4 class="card-title">메뉴 그룹 등록</h4>
		            </div>
		            <div class="card-content">
		            <div class="card-body">
		                <form class="form form-vertical">
		                   <div class="form-body">
		                    <div class="row">
		                    <div class="col-12">
		                        <div class="form-group">
		                        <label for="first-name-vertical">메뉴 그룹 이름</label>
		                        <input type="text" id="sMGroupName" class="form-control" name="sMGroupName">
		                        </div>
		                    </div>
		                    <div class="col-12 d-flex justify-content-end">
		                        <input type="button" class="btn btn-primary mr-1 mb-1" id="btMenuGroupWriteOpen" value="등록">
		                        <button type="reset" class="btn btn-light-secondary mr-1 mb-1" onclick="history.back()">취소</button>
		                    </div>
		                    </div>
		                </div>
		                </form>
		            </div>
		            </div>
		        </div>
		        </div>
		        <div class="col-md-3 col-sm-12"></div>
		    </div>
		</section>
			
			  
			
</body>
</html>
    	