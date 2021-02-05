<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
<!DOCTYPE html>
<html lang="ko">
<head>


    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>메뉴등록</title>

  
  
  	<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/bootstrap.css"> --%>
   
    
    <!-- CSS only -->
 	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<%--     <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/chartjs/Chart.min.css">
 --%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/app.css">

<%--     <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/ownerResources/assets/images/favicon.svg" type="image/x-icon">
 --%>	
	<script src="${pageContext.request.contextPath}/resources/ownerResources/herbJs/jquery-3.5.1.min.js"></script>
 
	
	<!-- 클릭시 비밀번호 유효성 검사 및 페이지 이동 -->
    <!-- jQuery (Necessary for All JavaScript Plugins) -->
	<script type="text/javascript">
		
	
	$(document).ready(function(){
		 	var type=1;
			var YorN = ${YorN};
			 
			 if(type==YorN) {
				opener.parent.location.reload();
				self.close();
				} 
	
	});
 
	   
		$(function(){
			$('#btMenuChoice').click(function(){
			
				if($('#menuName').val().length<1){
					$('#warningName').html('<small>이름을 입력해 주세요</small><br>');
					$('#menuName').focus();
					event.preventDefault();
				}else if($('#menuPrice').val().length<1){
					$('#warningPrice').html('<small>가격을 입력해 주세요</small><br>');
					$('#menuPrice').focus();
					event.preventDefault();				
				}else if($('#menuContent').val().length<1){
					$('#warningContent').html('<small>내용을 입력해 주세요</small><br>');
					$('#menuContent').focus();
					event.preventDefault();				
				}
			});
			
		});
		
		
			
		$(function(){
			$('input[type=text]').change(function(){
			
				if($(this).prop('name')=='menuName'){
					$('#warningName').html('');
					
					
					$.ajax({
						url:"<c:url value='/owner/menu2/foodmenu/checkDupMenuName.do'/>",
						data:"menuName=" + $('#menuName').val(),
						dataType:"json",
						type:"GET",
						success:function(res){
							//alert(res);
							if(res==true){
								$('#warningName').html("<small>중복된 이름이 존재합니다. 다른 이름을 입력해 주세요</small>");
								$('input[name=menuName]').focus();
								event.preventDefault();
							}
						},
						error:function(xhr, status, error){
							alert("error!! : " + error);
						}
					});
					event.preventDefault();
					
				}else if($(this).prop('name')=='menuPrice'){
					$('#warningPrice').html('');
					event.preventDefault();				
				}
			});
			
		});
		
		
		
		
		
		 //엔터 누를때 
		  $(function(){
				$('input[name=menuName]').keypress(function(event){
					if(event.key==="Enter"){
					
						$.ajax({
							url:"<c:url value='/owner/menu2/foodmenu/checkDupMenuName.do'/>",
							data:"menuName=" + $('#menuName').val(),
							dataType:"json",
							type:"GET",
							success:function(res){
								//alert(res);
								if(res==true){
									$('#warningName').html("<small>중복된 이름이 존재합니다. 다른 이름을 입력해 주세요</small>");
									$('input[name=menuName]').focus();
									event.preventDefault();
									return false;
								}
							},
							error:function(xhr, status, error){
								alert("error!! : " + error);
							}
						});
					}
				
				});
				
			}); 
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		$(function(){
			$('textarea').change(function(){
			
				if($(this).prop('name')=='menuContent'){
					$('#warningContent').html('');
					event.preventDefault();				
				}
			});
			
		});
		
		
		$(function(){
			$('input[type=text]').click(function(){
			
				if($(this).prop('name')=='menuName'){
					$('#warningName').html('');
					event.preventDefault();
				}else if($(this).prop('name')=='menuPrice'){
					$('#warningPrice').html('');
					event.preventDefault();				
				}
			});
			
		});
		
		$(function(){
			$('textarea').click(function(){
			
				if($(this).prop('name')=='menuContent'){
					$('#warningContent').html('');
					event.preventDefault();				
				}
			});
			
		});
		
		$(function(){
		   $('#upfile').on('change', function(){
		       readInputFile(this);
		   });
		});
		
		
		function readInputFile(input) {
		    if(input.files && input.files[0]) {
		        var reader = new FileReader();
		       reader.onload = function (e) {
		            $('#preview').html("<img src="+ e.target.result +"  style='width:90%; margin-left:20px;' >");
		        }
		        reader.readAsDataURL(input.files[0]);
		    }  
		} 
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	</script>
	
		
</head>
<body style="overflow-x:hidden;">
		<br>
		<section id="basic-vertical-layouts">
		    <div class="row match-height">
		    	<div class="col-md-3 col-sm-12"></div>
		        <div class="col-md-6 col-sm-12">
		        <div class="card" >
		            <div class="card-header" style="background-color:white;">
		            <h4 class="card-title text-center">메뉴 등록</h4>
		            </div>
		            <div class="card-content">
		            <div class="card-body">
		                <form class="form form-vertical" action="<c:url value='/owner/menu2/foodmenu/menuChoiceWrite.do'/>" method="post" enctype="multipart/form-data" >
		                   <div class="form-body">
		                    <div class="row">
		                    <div class="col-12">
		                        <div class="form-group">
		                        	<span><small>메뉴 그룹</small></span>
		                        	
		                     	 	<select class="form-select" id="sMGroupNo" name="sMGroupNo" style="text-align-last: right">
                                            <c:forEach var="vo" items="${list}">
                                            		<c:set var="sMGroupNoNo" value="${sMGroupNoNo }"></c:set>
                                            		<c:set var="sMGroupNoDB" value="${vo.sMGroupNo }"></c:set>
                                            		
                                           	 		<option value="${vo.sMGroupNo }"
                                           	 			<c:if test="${sMGroupNoNo==sMGroupNoDB}">
                                            				selected="selected"
                                            			</c:if>
                                           	 		>${vo.sMGroupName }</option>
                                           	</c:forEach>
                                    </select>
		                       		
		                       		<label for="first-name-vertical">메뉴 이름<span style="color:red; margin-left:4px;"><b>*</b></span></label>
		                        	<input type="text" id="menuName" class="form-control " name="menuName"  style="text-align: right;">
		                    	  	<div style="text-align: right;">
		                    	  		<span id="warningName" style="color:red; "></span>
		                    	    </div>
		                    	    <label for="first-name-vertical">메뉴 가격<span style="color:red; margin-left:4px;"><b>*</b></span></label>
		                        	<input type="text" id="menuPrice" class="form-control " name="menuPrice"  style="text-align: right;" >
		                     		<div style="text-align: right;">
		                     			<span id="warningPrice" style="color:red; "></span>
		                     		</div>
		                     		<span><small>메뉴 이미지</small></span>
		                     		 <div id="preview" class="text-center"></div>
		                     		<div class="form-file text-center">
		                     			 <input type="file" id="upfile" name="upfile" class="btn text-right"  accept=".gif, .jpg, .png" />
		                     			 
                                           <br><span style="margin-left:60px;"><small>* 첨부파일을 새로 지정할 경우 기존파일은 삭제됩니다.</small></span>    
                                    </div>
                            		
                            		<label for="exampleFormControlTextarea1" class="form-label">메뉴 내용<span style="color:red; margin-left:4px;"><b>*</b></span></label>
                            		<textarea class="form-control" id="menuContent" name="menuContent" rows="3"></textarea>
                					<span id="warningContent" style="color:red; margin-left:200px;"></span>
                        		
                        		</div>
		                       
		                      </div>
		                    </div>
		                    <div class="col-12 d-flex justify-content-end">
		                        <input type="submit" class="btn btn-primary mr-1 mb-1" id="btMenuChoice" name="btMenuChoice" value="등록">
		                        <button type="reset" class="btn btn-light-secondary mr-1 mb-1" onclick="self.close()">취소</button>
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
    <%-- 
    <script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/feather-icons/feather.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
     --%>
<%--     <script src="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/chartjs/Chart.min.js"></script>
<%--  --%>  <%--   <script src="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/apexcharts/apexcharts.min.js"></script> --%>
     <script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/pages/dashboard.js"></script>

    <script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/main.js"></script>
    
    
    
   
	     	  
			
</body>
</html>
