
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- <%@include file="../../../ownerInc/top.jsp"%> --%>

	
<%@include file="../../../ownerInc/jianSidebarTop.jsp"%>
<!-- 창 띄우기 -->
<script type="text/javascript">
			
			function goDetail(no){
				var windowW = 650;  // 창의 가로 길이
		        var windowH = 700;  // 창의 세로 길이
		        var left = Math.ceil((window.screen.width - windowW)/2);
		        var top = Math.ceil((window.screen.height - windowH)/2);
		        
		        var url="${pageContext.request.contextPath}/owner/menu2/foodmenu/menuDetail.do?menuNo="+no;
		        
				window.open(url,"메뉴 상세 정보","l top="+top+", left="+left+", height="+windowH+", width="+windowW,"scroll-x="+no);
				event.preventDefault();
			}
			
			$(function(){
				$('.btMainMenuChange').click(function(){
					
					var url='<c:url value="/owner/menu2/foodmenu/menuMain.do"/>';
					
					if($(this).attr('id')=='btNowMenu'){
						url='<c:url value="/owner/menu2/foodmenu/menuMain.do"/>';
					}else if($(this).attr('id')=='btMenuChange'){
						url='<c:url value="/owner/menu2/foodmenu/menuGroup.do"/>';				
					}else if($(this).attr('id')=='btOptionChange'){
						url='<c:url value="/owner/menu2/foodmenu/menuOption.do"/>';
					}else if($(this).attr('id')=='btMainMenu'){
						url='<c:url value="/owner/menu2/foodmenu/signatureMenu.do"/>';
					}
					
					location.href=url;
				});
				
			});  
		
		</script>
		
		
		
		<!-- 메뉴 버튼 -->
		<br><br><br>
			 <div class="row mt-3">
			  		<div class="col-md-2 col-sm-12"></div>
			  		<div class="col-md-8 col-sm-12">
				  		 <div class="text-right">
		                	 <button id="btNowMenu" class="btn btn-primary btMainMenuChange" >현재메뉴</button>
		                	 <button id="btMenuChange" class="btn btn-primary btMainMenuChange" >메뉴편집</button>
		                	 <button id="btOptionChange" class="btn btn-primary btMainMenuChange " >옵션편집</button>
		                	 <button id="btMainMenu" class="btn btn-primary btMainMenuChange" >대표메뉴</button>
	                	 </div>
		            </div>
                    <div class="col-md-2 col-sm-12"></div>
			  </div>
	
		<br>
		<br>
		<!-- row 시작 -->
		<div class="row"> 
			<!-- flex deivery ad 설명 -->
			<div class="col-md-2 col-sm-12"></div>
			<div class="col-md-8 col-sm-12">
				<div class="card">
					<div class="card-content">
				       <img class="card-img-top img-fluid" src="${pageContext.request.contextPath}/resources/ownerResources/assets/images/samples/aerial-panoramic-image-of-sansonvale-lake-X6TCENW.jpg" alt="Card image cap">
				       <div class="card-body">
				           <h4 class="card-title">대표메뉴</h4>
				           <p class="card-text">
				               	<span>대표메뉴 이름 : </span>	<br>
				               	<span>대표메뉴 가격:  </span>	<br>
				               	<span>대표메뉴 대분류 :</span>	<br>
				               	<span>대표메뉴 중분류 :</span>	<br>
				               	<span>대표메뉴 날씨 : </span>	<br>
				           </p>
				            <p class="card-text">
				               	대표메뉴에 대한 설명들 메뉴 상세 내용
				           </p>
				           <div class="text-right">
				         	  <button class="btn btn-primary block" id="btFlexAD"  name="btFlexAD">수정</button>
				         	  <button class="btn btn-primary block" id="btFlexAD"  name="btFlexAD" onclick="history.back()">취소</button>
				           </div>
				       </div>
				   </div>
				</div>
			</div>
			<div class="col-md-2 col-sm-12"></div>
		</div>
 		 <br>
 		 <br>
 		 <br>
 		 
	 		  
 <%@include file="../../../ownerInc/jianSidebarBottom.jsp"%>
