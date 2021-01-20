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


<!-- admin.css -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/adminResources/css/bootstrap.min.css"/>
	
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
    <script src="${pageContext.request.contextPath}/resources/adminResources/js/jquery/jquery-2.2.4.min.js"></script>
	<script type="text/javascript">
    $(function(){
		$('#button-addon1').click(function(){
			if($('input[type=password]').val().length<1){
				alert('비밀번호를 입력하세요');
				$('input[type=password]').focus();
				event.preventDefault();
			}else{
			
				window.opener.location.href="${pageContext.request.contextPath}/owner/menu2/advertise/advertiseChoice.do";
				self.close();
			}
				
		});
	});
	
	</script>
</head>
<body style="overflow-x:hidden;">
<!-- 
	 		  <br>
	 		  <br>
	 		  <br>
	 		  <br>
	 		  
	 		  adPwd 의 제목, 내용 
	 		  <div align="center">
	 		  		<h3> 본인 인증 </h3>
	 		  		<br>
	 		  		<div>
	 		  			<span> 본인 인증을 위해 비밀번호를 입력해주세요</span>
	 		  		</div>
	 		  </div>
	 		  <br>
	 		  <br>
		 		  본인인증을 위한 비밀번호 입력값
				  <div class="row">
				  		<div class="col-md-4 col-sm-12"></div>
				  		<div class="col-md-4 col-sm-12">
	                           <div class="input-group mb-4">
	                                 <input type="password" class="form-control" aria-label="Example text with button addon" aria-describedby="button-addon1">
	                          		 <button class="btn btn-primary btAdPwdCheck"  id="button-addon1" >확인</button>
	                           </div>
			            </div>
	                    <div class="col-md-4 col-sm-12"></div>
				  </div>
		 -->
			  
			 		<br>	<br>	
		<section id="basic-vertical-layouts">
		    <div class="row match-height">
		    	<div class="col-md-3 col-sm-12"></div>
		        <div class="col-md-6 col-sm-12">
		        <div class="card">
		            <div class="card-header" style="background-color:white;">
		            <h4 class="card-title"> 본인 인증 </h4>
		            </div>
		            <div class="card-content">
		            <div class="card-body">
		                <form class="form form-vertical">
		                   <div class="form-body">
		                    <div class="row">
		                    <div class="col-12">
		                        <div class="form-group">
			                         <div class="input-group mb-4">
		                                 <input type="password" class="form-control" aria-label="Example text with button addon" aria-describedby="button-addon1">
		                               
		                                 <div class="col-12 d-flex mt-3 justify-content-center">
		                          		 	<button class="btn btn-primary btAdPwdCheck"  id="button-addon1" >확인</button>
		                         		  </div>
		                         	 </div>
		                    	</div> 
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
    	