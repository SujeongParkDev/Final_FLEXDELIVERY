
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
			 
		<!-- 테이블 시작 -->
			<div class="row" id="table-hover-row">
				 <div class="col-md-2 col-sm-12"></div>
					  <div class="col-12 col-md-8">
					    <div class="card">
					      <br>
					      <!-- <div class="card-header">
					        <h4 class="card-title text-center" >메뉴</h4>
					      </div> -->
					      <div class="card-content">
					        <div class="card-body">
					          <p class="card-text text-center" style="font-size:20px;">현재 메뉴</p>
					          <p class="card-text text-center"> 현재 보여지는 메뉴들 입니다.</p>
					          <div class="table-responsive">
						          <table class="table table-hover mb-5">
						            <thead>
						              <tr class="text-center">
						                <th>메뉴번호</th>
						                <th>메뉴이름</th>
						                <th>메뉴그룹</th>
						                <th>메뉴가격</th>
						              </tr>
						            </thead>
						            <tbody>
						            <!-- table 시작 -->
							              <tr  class="text-center">
								                <td class="text-bold-500">FD01</td>
								              	<td><a onclick="goDetail(1)" href="#">호랭이 치킨</a></td>
								                <td>치킨</td>
								                <td>20000원</td>
							              </tr>
							              <tr  class="text-center">
								               	<td class="text-bold-500">FD04</td>
								                <td><a onclick="goDetail(2)" href="#" >호랭이 돈까스</a></td>
								                <td>돈까스</td>
								                <td>8000</td> 
							              </tr>
							                <tr  class="text-center">
								               	<td class="text-bold-500">FD011</td>
								                <td><a  onclick="goDetail(3)" href="#" >호랭이 초밥</a></td>
								                <td>초밥</td>
								                <td>12000</td> 
							              </tr>
						            </tbody>
						          </table>
				        	   </div>
				     	    </div>
					    </div>
				 	</div>
			<div class="col-md-2 col-sm-12"></div>
			</div>
			<!-- 테이블 끝 -->
		</div>
		<br>
		<br>
		<br>
		

 <%@include file="../../../ownerInc/jianSidebarBottom.jsp"%>
<%--  <%@include file="../../../ownerInc/bottom.jsp"%> --%>

	