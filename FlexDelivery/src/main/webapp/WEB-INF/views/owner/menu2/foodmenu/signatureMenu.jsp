
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

	
<%@include file="../../../ownerInc/jianSidebarTop.jsp"%>
<!-- 창 띄우기 -->
<script type="text/javascript">
			
	$(function(){
		$('.btMain').click(function(){
			
			var menuNo = $(this).attr('value');
			var url="", title="";
	
			var popupWidth = 0; //띄울 창 가로크기
			var popupHeight = 0;
			var storeNo=${storeNo};
			
			if($(this).attr('name')=='btSignatureMenuEdit'){
				url="${pageContext.request.contextPath}/owner/menu2/foodmenu/signatureMenuEdit.do?storeNo="+storeNo;
				title="메뉴 수정";
				popupWidth=800;
				popupHeight=400;
			}else if($(this).attr('name')=='btSignatureMenuWrite'){
			
				url="${pageContext.request.contextPath}/owner/menu2/foodmenu//signatureMenuWrite.do?storeNo="+storeNo;
				title="메뉴 등록";
				popupWidth=800;
				popupHeight=400;
			}
			
			window.screen.width //현재 윈도우창의 가로크기를 가져옴
			window.screen.height //세로크기 가져옴
			
			var popupX = (window.screen.width / 2) - (popupWidth /2);
			var popupY = (window.screen.height / 2) - (popupHeight /2);
			
			window.open(
				url, 
				title, 
				'toolbar=no, menubar=no, height='+popupHeight+', width='+ popupWidth +', left='+popupX+', top='+popupY);
			
			/* location.href=url; */
		});
		
	});  
			
			
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
		<br>
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
					<br>
					<Br>
					<Br>
					<div class="card-title text-center">
						<h4>대 표 메 뉴</h4>
					</div>
					<br>
					<div class="card-content text-center">
						<c:if test="${countResult!=0 }">
						   <div >
							  <c:set var="type" value="${type }"></c:set> 
							   	<c:if test="${type=='file'}">
							   	<img src
									="<c:url value='/resources/imgs/MenuImages/${mainAllVo.menuVo.menuImg}'/>" 
									alt="${mainAllVo.menuVo.menuName }" style="height:250px; width:80%;">
								</c:if>
								<c:if test="${type=='url'}">
							      	<img src="${mainAllVo.menuVo.menuImg}" style="height:250px; width:80%;"
									 alt="${mainAllVo.menuVo.menuName }">
								</c:if>
							</div>
							<br>
						       <div class="card-body">
						           <div >
						           	<hr>
							           <p class="card-text">
							               	<span>이름 : ${mainAllVo.menuVo.menuName }</span>	<br>
							               	<span>가격: ${mainAllVo.menuVo.menuPrice } </span>	<br>
							               	<span>대분류 : ${mainAllVo.aMCategoryVo.lCategoryName }</span>	<br>
							               	<span>중분류 :  ${mainAllVo.aMCategoryVo.mCategoryName }</span>	<br>
							               	<span>날씨 : ${mainAllVo.aMCategoryVo.weatherName }</span>	<br>
							           </p>
							           <hr>
							           	<p class="card-text"> 상 세 내 용</p>
							            <p class="card-text">
							               	${mainAllVo.menuVo.menuContent }
							           </p>
						           </div>
						           <br>
						           <br>
						           <div class="text-center">
						         	  <button class="btn btn-primary block btMain" id="btSignatureMenuEdit"  name="btSignatureMenuEdit">수정</button>
						           </div>
						           <br>
						           <br>
						       </div>
			       			</c:if>
						       <c:if test="${countResult==0 }">
						       	  <hr>
						       	  <br>
						       	  
					       		  <div class="card-body">
					       		  	<h4>대표메뉴가 없습니다.</h4>
					       		  	<Br>
					       		  	<span style="color:gray;">등록 부탁 드려요!</span>
					       		  	<br><Br><br>
					       		  	 <div class="text-center">
						         	  <button class="btn btn-primary block btMain" id="btSignatureMenuWrite"  name="btSignatureMenuWrite">등록</button>
						           </div>
						           <br><Br><br>
					       		  </div>
						       </c:if>
						   </div>
						</div>
					</div>
					<div class="col-md-2 col-sm-12"></div>
				</div>
		 		 <br>
		 		 <br>
		 		 <br>
		 		 
	 		  
 <%@include file="../../../ownerInc/jianSidebarBottom.jsp"%>
