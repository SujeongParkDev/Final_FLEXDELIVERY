
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="../../../ownerInc/jianSidebarTop.jsp"%>

<!-- 이건 진짜 뷰만 만듬.. 시간없어서.. ㅜㅜ  -->


<!-- 창 띄우기 -->
	<script type="text/javascript">
	
	
	

			
		/* 	$(function(){
				$('#btMenuChoiceWrite').on('click', function(){
					window.screen.width //현재 윈도우창의 가로크기를 가져옴
					window.screen.height //세로크기 가져옴
					
					var popupWidth = 400; //띄울 창 가로크기
					var popupHeight = 500;
					
					var popupX = (window.screen.width / 2) - (popupWidth /2);
					var popupY = (window.screen.height / 2) - (popupHeight /2);
					
					window.open(
						"${pageContext.request.contextPath}/owner/menu2/foodmenu/menuChoiceWrite.do", 
						"메뉴 그룹 등록", 
						'toolbar=no, menubar=no, height='+popupHeight+', width='+ popupWidth +', left='+popupX+', top='+popupY);
				});
			
			
			});
			 */
			
			
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
		
			
			
			$(function(){
				$('.btmenu').click(function(){
					
					var menuNo = $(this).attr('value');
					var url="", title="";

					var popupWidth = 0; //띄울 창 가로크기
					var popupHeight = 0;
					
					if($(this).attr('name')=='menuEdit'){
						url="${pageContext.request.contextPath}/owner/menu2/foodmenu/menuChoiceEdit.do?menuNo="+menuNo;
						title="메뉴 수정";
						popupWidth=400;
						popupHeight=500;
					}else if($(this).attr('name')=='menuDelete'){
						url="${pageContext.request.contextPath}/owner/menu2/foodmenu/menuChoiceDelete.do?menuNo="+menuNo;
						if(confirm(menuNo+"을 삭제하시겠습니까?")){
							location.href=url;
						}
					}else if($(this).attr('name')=='menuWrite'){
						var sMGroupNo=${sMGroupNo};
						url="${pageContext.request.contextPath}/owner/menu2/foodmenu/menuChoiceWrite.do?sMGroupNo="+sMGroupNo;
						title="메뉴 등록";
						popupWidth=400;
						popupHeight=500;
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
					          <p class="card-text text-center" style="font-size:20px;">메뉴</p>
					          <p class="card-text text-center">메뉴 수정 삭제해주세요</p>
					          <div class="table-responsive">
					            <table class="table">
					              <thead>
					                <tr class="text-center">
					                  <th style="width:30%;">메뉴</th>
					                  <th style="width:20%;">가격</th>
					                  <th style="width:33%;">수정/삭제</th>
					                   <th style="width:17%;" class="pl-3"><button class="btn btn-outline-primary p-2 btmenu" name="menuWrite">등록</button></th>
					                </tr>
					              </thead>
					              <tbody>
					              	<c:if test="${empty list }">
					              		<tr class="text-center">
					              			<td colspan="4">등록된 메뉴가 없습니다</td>
					              		</tr>
					              	</c:if>
					              	<c:if test="${!empty list }">
					              		<c:forEach var="vo" items="${list }">
							                <tr class="text-center">
							                  <td class="text-bold-500"><strong>${vo.menuName }</strong></td>
							                  <td>${vo.menuPrice }</td>
							                  <td>  
							                  		<button class="btn btn-outline-dark p-2 btmenu" value="${vo.menuNo }" name="menuEdit" >수정</button>
							                  		<button class="btn btn-outline-dark p-2 btmenu" value="${vo.menuNo }" name="menuDelete">삭제</button>
							                  </td>
							                  <td></td>
							                </tr>
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

	