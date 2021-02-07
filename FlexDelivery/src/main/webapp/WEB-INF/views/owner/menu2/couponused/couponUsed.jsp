
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../../../ownerInc/jianSidebarTop.jsp"%>
	<script type="text/javascript">
	$(function(){
		$('#btRegi').click(function(){
			location.href='<c:url value="/owner/menu2/couponused/couponRegi.do"/>';
		});
	});
		</script>
<!-- 메뉴 버튼 -->
		<br>
			 <div class="row mt-3">
			  		<div class="col-md-2 col-sm-12"></div>
			  		<div class="col-md-8 col-sm-12">
				  		 <div class="text-right">
		                	 <button id="btAll" class="btn btn-primary">전체 조회 </button>
		                	 <button id="btRegi" class="btn btn-outline-warning">쿠폰 신청 </button>
	                	 </div>
		            </div>
                    <div class="col-md-2 col-sm-12"></div>
			  </div>
			 <br>
		<!-- 테이블 시작 -->
			<div class="row" id="table-hover-row">
				 <div class="col-md-1  col-sm-12"></div>
					  <div class="col-12 col-md-10">
					    <div class="card">
					      <br>
					      <div class="card-content">
					       ${list }
					        <div class="card-body">
					          <p class="card-text text-center" style="font-size:20px;">쿠폰 내역 </p>
					          <p class="card-text text-center"> 전체 발급된 구폰 내역입니다. </p><br><br>
					       
							<br><br>
					          <!--  -->
					          <div class="table-responsive">
						          <table class="table table-hover mb-5">
						            <thead>
						              <tr class="text-center">
						              	<th>쿠폰 번호</th>
						              	<th>주문 최소 금액 </th>
						              	<th>할인 가격 </th>
						                 <th>발급 시작일</th>
						                <th>발급 종료일</th>
						                <th>사용 상태</th>
						              </tr>
						            </thead>
						            <tbody>
						            <!-- table 시작 -->
						            	  <c:if test="${empty list }">
						            	  		<tr>
													<td colspan="6" class="text-center">데이터가 존재하지 않습니다.</td>
												</tr>
						            	  </c:if>
						            	  <c:if test="${!empty list }">
						            	  		<c:forEach var="map" items="${list}">
										              <tr  class="text-center">
										              		<td>${map['R_COUPON_NO'] }</td>
										              		<td>${map['R_COUPON_MIN'] }</td>
										              		<td>${map['R_COUPON_DC'] }</td>
											              	<td>${map['S_C_START_DATE'] }</td>
											                <td>${map['S_C_END_DATE'] }</td>
														    <td>${map['S_C_SERVICE'] }</td>
										              </tr>
							              		</c:forEach>
							               </c:if>
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
           <nav aria-label="Page navigation example">			
               <ul class="pagination pagination-primary justify-content-center">
		 			<c:if test="${pagingInfo.firstPage>1 }">	
						<li class="page-item">
			                   <a class="page-link" href="#" aria-label="Previous" onclick="pageFunc(${pagingInfo.firstPage-1})">
        							<span aria-hidden="true">&laquo;</span>
			                   </a>
		                   </li>
					</c:if>
	              <!-- [1][2][3][4][5][6][7][8][9][10] -->
					<c:forEach var="i" begin="${pagingInfo.firstPage}" end="${pagingInfo.lastPage}">
						<c:if test="${i==pagingInfo.currentPage }">
							 <li class="page-item active"><a class="page-link" href="#" >${i}</a></li>
						</c:if>
						<c:if test="${i!=pagingInfo.currentPage }">
						    <li class="page-item"><a class="page-link" href="#" onclick="pageFunc(${i})">${i}</a></li>
						</c:if>
					</c:forEach>
				  <c:if test="${pagingInfo.lastPage < pagingInfo.totalPage }">	
					<li class="page-item">
		                   <a class="page-link" href="#" aria-label="Previous"  onclick="pageFunc(${pagingInfo.lastPage+1})">
								 <span aria-hidden="true">&raquo;</span>
		                   </a>
	                   </li>
				 </c:if>
               </ul>
           </nav>
        </div> 
			
		</div>
		<br>
		<br>
		<br>
<!-- coupon register -->
		
<!--  -->

 <%@include file="../../../ownerInc/jianSidebarBottom.jsp"%>

	