<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>비밀번호 확인</title>
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/bootstrap.css">
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/app.css">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/ownerResources/assets/images/favicon.svg" type="image/x-icon">
	

    

	
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

	 		  <br>
	 		  <br>
	 		  <br>
	 		  <br>
	 		  
	 		  <!-- adPwd 의 제목, 내용  -->
	 		  <div align="center">
	 		  		<h3> 본인 인증 </h3>
	 		  		<br>
	 		  		<div>
	 		  			<span> 본인 인증을 위해 비밀번호를 입력해주세요</span>
	 		  		</div>
	 		  </div>
	 		  <br>
	 		  <br>
		 		  <!-- 본인인증을 위한 비밀번호 입력값 -->
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
		
			  
			 	
			
			
			<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/feather-icons/feather.min.js"></script>
		    <script src="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
		    <script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/app.js"></script>
		    
		    <script src="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/chartjs/Chart.min.js"></script>
		    <script src="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/apexcharts/apexcharts.min.js"></script>
		    <script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/pages/dashboard.js"></script>
		
		    <script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/main.js"></script>
					  
			   
	
			  
			
</body>
</html>
    	