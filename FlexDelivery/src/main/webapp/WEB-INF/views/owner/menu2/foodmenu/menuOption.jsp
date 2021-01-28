
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="../../../ownerInc/jianSidebarTop.jsp"%>



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
		
			
			
			
			
			
			/* 
			$(function(){
				$('#menuGroupSelect').change(function(){
					$('#warningPrice').html('');
					
					
				}
			});
				 */
				
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
			 
			 
				   <!--셀렉박스 내용-->
				   
		  <div class="row" id="basic-table">
				<div class="col-md-2 col-sm-12"></div>
				<div class="col-12 col-md-8">
			    <div class="card">
			      <br>
			      <!-- <div class="card-header">
			        <h4 class="card-title text-center" >메뉴</h4>
			      </div> -->
			      <br>
			      	  <div class="card-title text-center">
			      	  		<h5>메뉴 옵션 편집</h5>
			      	  </div>
				      <div class="card-content">
				        <div class="card-body">
							 <div class="row">
								  <div class="col-md-7 col-12"></div>
								  <div class="col-md-5 col-sm-12">
										<select class="form-select" name="menuGroup" id="menuGroupSelect" style="overflow : auto;">
											
												<option class="m-3 text-center" style="font-size:17px;" selected value="0" >메뉴 그룹 선택</option>
									
												<c:if test="${!empty list }">
												  <c:forEach var="vo" items="${list }">
												  		<option value="${vo.sMGroupNo }">${vo.sMGroupName }</option>
												  </c:forEach>
												</c:if>
										</select>
										<br>
										<div id="menuTable">
										
										</div>
								 </div>
							</div>
							<br>
						</div>
					</div>
				</div>
				</div>
				<div class="col-md-2 col-sm-12"></div>
		</div>
		
		
		
		
			
		
		<!-- 셀렉 옵션 선택 내용 -->
		<div class="row" id="basic-table">
					  <div class="col-md-2 col-sm-12"></div>
					  <div class="col-12 col-md-8">
					    <div class="card" >
					      <br>
					      <!-- <div class="card-header">
					        <h4 class="card-title text-center" >메뉴</h4>
					      </div> -->
					      <div class="card-content">
					        <div class="card-body">
					          <p class="card-text text-center" style="font-size:20px;">메뉴옵션</p>
					          <p class="card-text text-center">메뉴 옵션 수정 및 삭제 및 등록 해주세요</p>
					          <div class="table-responsive">
					            <table class="table">
					              <thead>
					                <tr class="text-center">
					                  <th style="width:30%;">메뉴 옵션</th>
					                  <th style="width:20%;">옵션 가격</th>
					                  <th style="width:33%;">수정/삭제</th>
					                   <th style="width:17%;" class="pl-3"><button class="btn btn-outline-primary p-2" id="btMenuGroupWrite">등록</button></th>
					                </tr>
					              </thead>
					              <tbody>
					                <tr class="text-center">
					                  <td class="text-bold-500"><a href="${pageContext.request.contextPath}/owner/menu2/foodmenu/menuOptionChoice.do?sMGroupNo=1"><strong>파 추가</strong></a></td>
					                  <td>2000원</td>
					                  <td>  
					                  		<button class="btn btn-outline-dark p-2 btmenu" value="1" name="menuEdit" >수정</button>
					                  		<button class="btn btn-outline-dark p-2 btmenu" value="2" name="menuDelete">삭제</button>
					                  </td>
					                  <td></td>
					                  
					                </tr>
					                <tr class="text-center">
					                  <td class="text-bold-500"><a href="${pageContext.request.contextPath}/owner/menu2/foodmenu/menuChoice.do?sMGroupNo=1"><strong>밥 추가</strong></a></td>
					                   <td>2000원</td>
					                   <td>  
					                  		<button class="btn btn-outline-dark p-2 btmenu" value="1" name="menuEdit">수정</button>
					                  		<button class="btn btn-outline-dark p-2 btmenu" value="2" name="menuDelete">삭제</button>
					                  </td>
					                  <td></td>
					                </tr>
					                <tr class="text-center">
					                  <td class="text-bold-500"><a href="${pageContext.request.contextPath}/owner/menu2/foodmenu/menuChoice.do?sMGroupNo=1"><strong> 하이 추가</strong></a></td>
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

	