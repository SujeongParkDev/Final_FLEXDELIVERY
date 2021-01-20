
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- top 시작-->





<style>
	
</style>
<%@include file="../../../ownerInc/jianSidebarTop.jsp"%>
<!-- top 끝 -->


	<script type="text/javascript">
			$(function(){
				$('#btAdRegister').on('click', function(){
					window.screen.width //현재 윈도우창의 가로크기를 가져옴
					window.screen.height //세로크기 가져옴
					
					var popupWidth = 500; //띄울 창 가로크기
					var popupHeight = 300;
					
					var popupX = (window.screen.width / 2) - (popupWidth /2);
					var popupY = (window.screen.height / 2) - (popupHeight /2);
					
					window.open(
						"${pageContext.request.contextPath}/owner/menu2/advertise/advertisePwdCheck.do", 
						"pwdCheck", 
						'toolbar=no, menubar=no, height='+popupHeight+', width='+ popupWidth +', left='+popupX+', top='+popupY);
				});
			
			
			});
			
			

			  
		
		</script>
	
		<section id="content-types">
		
			 <!-- 광고등록 탭 + 버튼-->
			  <div class="row mt-3">
			  		<div class="col-md-2 col-sm-12"></div>
			  		<div class="col-md-8 col-sm-12">
				  		<ul class="nav nav-pills" style="float: left;">
							  <li class="nav-item">
							    <a class="nav-link active" aria-current="page" href="<c:url value="/owner/menu2/advertise/advertiseMain.do"/>">진행</a>
							  </li>
							  <li class="nav-item">
							    <a class="nav-link" href="<c:url value="/owner/menu2/advertise/advertiseExpire.do"/>">만료</a>
							  </li>
						</ul>
	                	 <button id="btAdRegister" class="btn btn-outline-warning" style="float: right;">광고등록</button>
		            </div>
                    <div class="col-md-2 col-sm-12"></div>
			  </div>
			  <br>
			  
			  
			  <!-- 현재 진행중인 광고 -->
      		  <div class="row">
      		  
      		  		
      		  		<c:if test="${empty list} ">
 					</c:if>
      		  		 <!-- 플렉스한광고 -->
      		  		<div class="col-md-2 col-sm-12"></div>
				 	<div class="col-md-8 col-sm-12">
		                <div class="card">
		                    <div class="card-content">
		                        <div class="card-body">
		                            <h4 class="card-title">FLEX한 광고</h4>
		                            <p class="card-text">
					                	<span>광고명 : flex한 광고 </span><br>
					                	<a href="#">광고번호 : FD2 </a><br>
					                	<span>광고가격 : 30000 </span><br>
					                	<span>만료일 : '2020-10-01'</span>
		                            </p>
		                            <small class="text-muted">굳 초이스</small>
		                        </div>
		                        <img class="card-img-bottom img-fluid h-12" src="${pageContext.request.contextPath}/resources/ownerResources/assets/images/samples/inspirational-aerial-landscape-autumn-forest-and-FU2LKHA.jpg"
		                            alt="Card image cap" style="height:200px;">
		                     </div>
		                 </div>
				  	 </div>
				 	 <div class="col-md-2 col-sm-12"></div>
		        
		        	 <!-- 오픈리스트 -->
		        	  <div class="col-md-2 col-sm-12"></div>
					 
					  <div class="col-md-8 col-sm-12">
			                <div class="card">
			                    <div class="card-content">
			                        <div class="card-body">
			                            <h4 class="card-title">오픈리스트</h4>
			                            <p class="card-text">
						                	<span>광고명 : 오픈리스트 </span><br>
						                	<a href="#">광고번호 : FD3 </a><br>
						                	<span>광고가격 : 15000 </span><br>
						                	<span>만료일 : '2020-10-10'</span>
			                            </p>
			                            <small class="text-muted">좋습니다</small>
			                        </div>
			                        <img class="card-img-bottom img-fluid h-12" src="${pageContext.request.contextPath}/resources/ownerResources/assets/images/samples/inspirational-aerial-landscape-autumn-forest-and-FU2LKHA.jpg"
			                            alt="Card image cap" style="height:200px;">
			                    </div>
			                </div>
					   </div>
					   <div class="col-md-2 col-sm-12"></div>
			        
		        
		        	
			 </div>
		
			   	
			  
		 </section>
			 
		
		
<!--  bottom  -->
  <%@include file="../../../ownerInc/jianSidebarBottom.jsp"%>

		