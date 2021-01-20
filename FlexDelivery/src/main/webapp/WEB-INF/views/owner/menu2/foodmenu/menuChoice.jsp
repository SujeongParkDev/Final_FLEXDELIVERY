
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="../../../ownerInc/jianSidebarTop.jsp"%>

<!-- 이건 진짜 뷰만 만듬.. 시간없어서.. ㅜㅜ  -->


<!-- 창 띄우기 -->
	<script type="text/javascript">
			
			
			$(function(){
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
			$(function(){
				$('.btMenuChoiceChange').click(function(){
					
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
					var url="";
					if($(this).attr('name')=='menuEdit'){
						url="${pageContext.request.contextPath}/owner/menu2/foodmenu/menuChoiceEdit.do?menuNo="+menuNo;
					}else if($(this).attr('name')=='menuDelete'){
						url="${pageContext.request.contextPath}/owner/menu2/foodmenu/menuChoiceDelete.do?menuNo="+menuNo;
					}else if($(this).attr('name')=='menuWrite'){
						url="${pageContext.request.contextPath}/owner/menu2/foodmenu/menuChoiceWrite.do";
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
		                	 <button id="btNowMenu" class="btn btn-primary btMenuChoiceChange" >현재메뉴</button>
		                	 <button id="btMenuChange" class="btn btn-primary btMenuChoiceChange" >메뉴편집</button>
		                	 <button id="btOptionChange" class="btn btn-primary btMenuChoiceChange " >옵션편집</button>
		                	 <button id="btMainMenu" class="btn btn-primary btMenuChoiceChange " >대표메뉴</button>
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
					                  <th style="width:40%;">메뉴</th>
					                  <th style="width:20%;">가격</th>
					                  <th style="width:23%;">수정/삭제</th>
					                   <th style="width:17%;" class="pl-3"><button class="btn btn-outline-primary p-2" id="btMenuChoiceWrite">등록</button></th>
					                </tr>
					              </thead>
					              <tbody>
					                <tr class="text-center">
					                  <td class="text-bold-500"><strong>호랭이 돈까스</strong></td>
					                  <td>2000원</td>
					                  <td>  
					                  		<button class="btn btn-outline-dark p-2 btmenu" value="1" name="menuEdit" >수정</button>
					                  		<button class="btn btn-outline-dark p-2 btmenu" value="2" name="menuDelete">삭제</button>
					                  </td>
					                  <td></td>
					                  
					                </tr>
					                <tr class="text-center">
					                  <td class="text-bold-500"><strong>호랭이 치킨</strong></td>
					                  <td>2000원</td> 
					                  <td>  
					                  		<button class="btn btn-outline-dark p-2 btmenu" value="1" name="menuEdit">수정</button>
					                  		<button class="btn btn-outline-dark p-2 btmenu" value="2" name="menuDelete">삭제</button>
					                  </td>
					                  <td></td>
					                </tr>
					                <tr class="text-center">
					                  <td class="text-bold-500"><strong>호랭이 피자</strong></td>
					                   <td>2000원</td> 
					                   <td>  
					                  		<button class="btn btn-outline-dark p-2 btmenu"  value="1" name="menuEdit">수정</button>
					                  		<button class="btn btn-outline-dark p-2 btmenu" value="2" name="menuDelete">삭제</button>
					                  </td>
					                  <td></td>
					                </tr>
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

	