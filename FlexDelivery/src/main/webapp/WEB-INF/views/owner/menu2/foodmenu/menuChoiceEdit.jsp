<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
<!DOCTYPE html>
<html lang="ko">
<head>


    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>메뉴수정</title>

  
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/bootstrap.css">
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/chartjs/Chart.min.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/app.css">

    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/ownerResources/assets/images/favicon.svg" type="image/x-icon">

 <script src="${pageContext.request.contextPath}/resources/ownerResources/herbJs/jquery-3.5.1.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>

    

	
	<!-- 클릭시 비밀번호 유효성 검사 및 페이지 이동 -->
    <!-- jQuery (Necessary for All JavaScript Plugins) -->
	<script type="text/javascript">
	  $(function(){
			$('#btMenuChoiceEdit').click(function(){
				if($('input[type=text]').val().length<1){
					alert('그룹명을 입력해 주세요');
					$('input[type=text]').focus();
					event.preventDefault();
				}else{
					window.opener.location.href="${pageContext.request.contextPath}/owner/menu2/foodmenu/menuChoice.do";
					self.close();
				}
					
			});
		});
    
    
   
    
	
	</script>
</head>
<body style="overflow-x:hidden;">
		<br>	<br>	
		
		
		<section id="basic-vertical-layouts">
		    <div class="row match-height">
		    	<div class="col-md-3 col-sm-12"></div>
		        <div class="col-md-6 col-sm-12">
		        <div class="card" >
		            <div class="card-header" style="background-color:white;">
		            <h4 class="card-title text-center">메뉴 수정</h4>
		            </div>
		            <div class="card-content">
		            <div class="card-body">
		                <form class="form form-vertical">
		                   <div class="form-body">
		                    <div class="row">
		                    <div class="col-12">
		                        <div class="form-group">
		                        	<label for="first-name-vertical">메뉴 번호</label>
		                        	<input type="text" id="menuName" class="form-control" name="menuNo" readonly="readonly">
		                       		
		                       		<label for="first-name-vertical">메뉴 이름</label>
		                        	<input type="text" id="menuName" class="form-control" name="menuName">
		                    	  
		                    	    <label for="first-name-vertical">메뉴 가격</label>
		                        	<input type="text" id="menuPrice" class="form-control text-right" name="menuPrice">
		                     		<span>메뉴 이미지</span>
		                     		<div class="form-file">
                                        <input type="file" class="form-file-input" id="customFile">
                                        <label class="form-file-label" for="customFile">
                                            <span class="form-file-text text-right">파일을 선택하세요</span>
                                            <span class="form-file-button btn-primary "><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-upload"><path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-4"></path><polyline points="17 8 12 3 7 8"></polyline><line x1="12" y1="3" x2="12" y2="15"></line></svg></span>
                                        </label>
                                    </div>
                            		<label for="exampleFormControlTextarea1" class="form-label">메뉴 내용</label>
                            		<textarea class="form-control" id="menuContent" rows="3"></textarea>
                        		</div>
		                       
		                      </div>
		                    </div>
		                    <div class="col-12 d-flex justify-content-end">
		                        <input type="button" class="btn btn-primary mr-1 mb-1" id="btMenuChoiceEdit" value="수정">
		                        <button type="reset" class="btn btn-light-secondary mr-1 mb-1" onclick="history.back()">취소</button>
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
			
			  
			  
			  	
			
		 
        <script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/app.js"></script>
    
    <script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/feather-icons/feather.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    
    <script src="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/chartjs/Chart.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/apexcharts/apexcharts.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/pages/dashboard.js"></script>

    <script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/main.js"></script>
    
    
    
   
	     	  
			
</body>
</html>
