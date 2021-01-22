
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="../../../ownerInc/jianSidebarTop.jsp"%>


<!-- 창 띄우기 -->
	<script type="text/javascript">
				
			$(function(){
				$('#btMenuGroupWrite').on('click', function(){
					window.screen.width //현재 윈도우창의 가로크기를 가져옴
					window.screen.height //세로크기 가져옴
					
					var popupWidth = 500; //띄울 창 가로크기
					var popupHeight = 300;
					
					var popupX = (window.screen.width / 2) - (popupWidth /2);
					var popupY = (window.screen.height / 2) - (popupHeight /2);
					
					window.open(
						"${pageContext.request.contextPath}/owner/menu2/foodmenu/menuGroupWrite.do", 
						"메뉴 그룹 등록", 
						'toolbar=no, menubar=no, scrollbars=no, height='+popupHeight+', width='+ popupWidth +', left='+popupX+', top='+popupY);
				});
			
			
			}); 
			
		
			
			$(function(){
				$('.btmenu').click(function(){
					//수정이랑 삭제누르면 수정은 오픈창가고 삭제는 걍 confirm 창 뜬다.
					//원래는 더짧게 하고싶었는데 소스가 안먹혀서 어쩔수가없었다.. 아쉽..
					
					var sMGroupNo = $(this).attr('value');
					var url="";
					if($(this).attr('name')=='menuEdit'){
						url="${pageContext.request.contextPath}/owner/menu2/foodmenu/menuGroupEdit.do?sMGroupNo="+sMGroupNo;
						window.screen.width //현재 윈도우창의 가로크기를 가져옴
						window.screen.height //세로크기 가져옴
						
						var popupWidth = 500; //띄울 창 가로크기
						var popupHeight = 300;
						
						var popupX = (window.screen.width / 2) - (popupWidth /2);
						var popupY = (window.screen.height / 2) - (popupHeight /2);
						
						window.open(
							url, 
							"메뉴 수정", 
							'toolbar=no, menubar=no, scrollbars=no, height='+popupHeight+', width='+ popupWidth +', left='+popupX+', top='+popupY);
					
						
						
					}else if($(this).attr('name')=='menuDelete'){
						if(confirm(sMGroupNo+"번 그룹을 삭제하시겠습니까?")){
							url="${pageContext.request.contextPath}/owner/menu2/foodmenu/menuGroupDelete.do?sMGroupNo="+sMGroupNo;
							location.href=url;
						}else{
							history.back();
						}
					}
					
					
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
			 
			 
				   <!-- 내용 -->

					<div class="row" id="basic-table">
					  <div class="col-md-2 col-sm-12"></div>
					  <div class="col-12 col-md-8">
					    <div class="card">
					      <br>
					      <!-- <div class="card-header">
					        <h4 class="card-title text-center" >메뉴</h4>
					      </div> -->
					      <div class="card-content">
					        <div class="card-body">
					          <p class="card-text text-center" style="font-size:20px;">메뉴그룹</p>
					          <p class="card-text text-center">메뉴 그룹 수정 삭제해주세요</p>
					          <div class="table-responsive">
					            <table class="table">
					              <thead>
					                <tr class="text-center">
					                  <th style="width:60%;">메뉴 그룹</th>
					                  <th style="width:23%;">수정/삭제</th>
					                   <th style="width:17%;" class="pl-3"><button class="btn btn-outline-primary p-2"  id="btMenuGroupWrite">등록</button></th>
					                </tr>
					              </thead>
					              <tbody>
										 <c:if test="${empty list }">
					                  		<tr class="text-center">
					                  			<td  colspan="3"> 데이터가 없습니다 </td>
					                  		</tr>
					                 	  </c:if>	
					                 	  <c:if test="${!empty list}">
					                 	  		<c:forEach var="vo" items="${list }">
						                 	  		  <tr class="text-center">
									                  <td class="text-bold-500"><a href="${pageContext.request.contextPath}/owner/menu2/foodmenu/menuChoice.do?sMGroupNo=${vo.sMGroupNo}"><strong>${vo.sMGroupName }</strong></a></td>
									                  <td>  
									                  		<button class="btmenu btn btn-outline-dark p-2 " value="${vo.sMGroupNo}"  name="menuEdit" >수정</button>
									                  		<button class="btmenu btn btn-outline-dark p-2 " value="${vo.sMGroupNo}" name="menuDelete">삭제</button>
									                  </td>
									                  <td></td>
					                 	  		</c:forEach>
					                 	  </c:if>				              
					              </tbody>
					            </table>
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

	