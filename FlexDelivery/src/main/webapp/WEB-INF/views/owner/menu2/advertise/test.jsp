<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    


<!DOCTYPE html>
  <html>
  <head>
	<script src="${pageContext.request.contextPath}/resources/ownerResources/herbJs/jquery-3.5.1.min.js"></script>  
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/bootstrap.css">
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/chartjs/Chart.min.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/app.css">

    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/ownerResources/assets/images/favicon.svg" type="image/x-icon">


	<script src='https://www.google.com/recaptcha/api.js'></script>
	<script type="text/javascript">
	<!-- js -->
	
 	
	  $(document).ready(function() {
          $("#test_btn").click(function() {
              $.ajax({
                  url:"<c:url value='/owner/VerifyRecaptcha.do'/>",
                  type: 'post',
                  data: {
                      recaptcha: $("#g-recaptcha-response").val()
                  },
                  success: function(data) {
                      switch (data) {
                          case 0:
                              alert("자동 가입 방지 봇 통과");
                              break;

                          case 1:
                              alert("자동 가입 방지 봇을 확인 한뒤 진행 해 주세요.");
                              break;

                          default:
                              alert("자동 가입 방지 봇을 실행 하던 중 오류가 발생 했습니다. [Error bot Code : " + Number(data) + "]");
                              break;
                      }
                  }
              });
          });
      });



	
	
	
	

	
</script>
<style>
	input{
		border:none;
		
		height:30px;
		border-bottom: 1px solid black;
	}
	
	input[readonly='readonly']{
		background-color: white;
	}


</style>
  </head>
  <body>
  	<button id="test_btn">테스트 버튼</button>
                        	<!--recaptcha-->
	<div class="g-recaptcha" data-sitekey="6LfgUU4aAAAAACrshEabcLYMkxfW7ZUfAATntxow"></div>
  </body>
</html>
