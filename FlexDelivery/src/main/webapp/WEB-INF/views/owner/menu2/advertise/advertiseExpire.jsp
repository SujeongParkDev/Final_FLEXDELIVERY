
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="../../../ownerInc/top.jsp"%>
<%@include file="../../../ownerInc/jianSidebarTop.jsp"%>
<!-- top 끝 -->

	<script type="text/javascript">
		function pageFunc(curPage){
				$('form[name=frm1]').find('input[name=currentPage]').val(curPage);	
				$('form[name=frm1]').submit();
		}
		
		
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

	


	
		 <!-- 광고등록 탭 + 버튼-->
		  <div class="row mt-3">
		  		<div class="col-md-2 col-sm-12"></div>
		  		<div class="col-md-8 col-sm-12">
			  		<ul class="nav nav-pills" style="float: left;">
						  <li class="nav-item">
						    <a class="nav-link " aria-current="page" href="<c:url value="/owner/menu2/advertise/advertiseMain.do"/>">진행</a>
						  </li>
						  <li class="nav-item">
						    <a class="nav-link active" href="<c:url value="/owner/menu2/advertise/advertiseExpire.do"/>">만료</a>
						  </li>
					</ul>
	               	 <button id="btAdRegister" class="btn btn-outline-warning" style="float: right;">광고등록</button>
	            </div>
	                  <div class="col-md-2 col-sm-12"></div>
		  </div>
		  <br>
	<%-- 
		<!-- 페이지, 데이터 검색 form보내기 -->
		<form action="<c:url value='/owner/menu2/advertise/advertiseExpire.do'/>" name="frm1" method="post">
			<%@include file="../../inc/dateTerm.jsp" %>	
			<!-- dateTerm 써야할것같아요! -->
			
		<input type="hidden" name="currentPage" value="1">
		<input type="submit" value="조회" >	
		</form> --%>
		
		
		
		<!-- 테이블 감싼 디비 시작 -->

		<div class="row" id="table-hover-row">
			  <div class="col-md-2 col-sm-12"></div>
			  
			  <div class="col-md-8 col-sm-12">
			    <div class="card">
			      <div class="card-header text-center">
			        <h4 class="card-title">만료된 광고</h4>
			      </div>
			      <div class="card-content">
			        <div class="card-body text-center">
			          <p>사장님께서 이용해주신 광고입니다. 감사합니다</p>
			        </div>
			        <!-- table hover -->
			        <div class="table-responsive">
			          <table class="table table-hover mb-0">
			            <thead>
			              <tr class="text-center">
			                <th>광고번호</th>
			                <th>광고명</th>
			                <th>가격</th>
			                <th>이용기간</th>
			              </tr>
			            </thead>
			            <tbody>
			            <!-- table 시작 -->
				              <tr  class="text-center">
					                <td class="text-bold-500">FD01</td>
					                <td>FLEX한 광고</td>
					                <td>50000원</td>
					                <td>2020-01-03 ~ 2021-03-04</td>
				              </tr>
				              <tr  class="text-center">
					               	<td class="text-bold-500">FD04</td>
					                <td>오픈리스트</td>
					                <td>30000원</td>
					                <td>2020-01-03 ~ 2021-03-05</td> 
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
	
		<!-- 페이징 시작 -->
		<div class="card-body">
           <nav aria-label="Page navigation example">				<!-- 페이지 가운데 정렬은  justify-content-center-->
               <ul class="pagination pagination-primary justify-content-center">
                   <li class="page-item"><a class="page-link" href="#">
                       <span aria-hidden="true"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left"><polyline points="15 18 9 12 15 6"></polyline></svg></span>
                   </a></li>
                   <li class="page-item"><a class="page-link" href="#">1</a></li>
                   <li class="page-item active"><a class="page-link" href="#">2</a></li>
                   <li class="page-item"><a class="page-link" href="#">3</a></li>
                   <li class="page-item"><a class="page-link" href="#">4</a></li>
                   <li class="page-item"><a class="page-link" href="#">5</a></li>
                   <li class="page-item"><a class="page-link" href="#">
                       <span aria-hidden="true"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-right"><polyline points="9 18 15 12 9 6"></polyline></svg></span>
                   </a></li>
               </ul>
           </nav>
        </div>
		
  <%@include file="../../../ownerInc/jianSidebarBottom.jsp"%>
  <%@include file="../../../ownerInc/bottom.jsp"%>

	