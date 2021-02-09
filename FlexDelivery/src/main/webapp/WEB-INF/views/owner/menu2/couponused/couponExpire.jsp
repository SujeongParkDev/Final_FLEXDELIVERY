
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../../../ownerInc/jianSidebarTop.jsp"%>
<!-- 메뉴 버튼 -->
		<br>
			 <div class="row mt-3">
			  		<div class="col-md-2 col-sm-12"></div>
			  		<div class="col-md-8 col-sm-12">
				  		 <div class="text-right">
		                	 <button id="btAll" class="btn btn-primary">전체 조회 </button>
		                	 <button id="btExpire" class="btn btn-primary">쿠폰 발급 내역 </button>
		                	 <button id="btRegi" class="btn btn-outline-warning">쿠폰 신청 </button>
	                	 </div>
		            </div>
                    <div class="col-md-2 col-sm-12"></div>
			  </div>
			 <br>
		<!-- 테이블 시작 -->
		<form name="frmList" method="post"  action="<c:url value='/owner/menu2/couponused/couponExpire.do'/>">
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
							<!-- datepicker !  -->
							<div class="row">
								<form name="frmPage" method="post" name="frm1"
									action="<c:url value='/owner/menu2/couponused/couponUsed.do'/>">
							<div class="col-md-4 col-12"></div><!-- 이상하게 처음 화면에서 전체 데이터 안나와서 다시 리스트 출 -->
							<div class="col-md-6 col-12 ">
									<%@include file="../../../owner/datePicker/datePicker.jsp"%>
									<input type="hidden" name="currentPage" value="1">
							</div>
							<div class="col-md-2 col-12">
								<input type="submit" style="background-color: #0d6efd; color: white;" value="조회" id="searchDate">
						</div><br><br><!-- datepicker row -->
							</form>
							</div>
						
						<div class="col-md-4 col-12"></div>
						<div class="text-right">
						<input type="button" value="선택한 상품 삭제" id="btDel"><br><br>
						</div>
					          <!--  -->
					          <div class="table-responsive delck">
						          <table class="table table-hover mb-5 deltable">
						          <colgroup>
									<col style="width:10%" />
									<col style="width:20%" />
									<col style="width:10%" />
									<col style="width:20%" />	
									<col style="width:20%" />
									<col style="width:20%" />			
								</colgroup>
						            <thead>
						              <tr class="text-center">
						              	<th scope="col">번호</th>
						              	<th scope="col">주문 최소 금액 </th>
						              	<th scope="col">할인 가격 </th>
						                 <th scope="col">발급 시작일</th>
						                <th scope="col">발급 종료일</th>
						                <th scope="col">사용 상태</th>
						              </tr>
						            </thead>
						            <tbody>
						            
						            <div class="AllList">
						            	  <c:if test="${empty exList }">
						            	  		<tr>
													<td colspan="6" class="text-center">데이터가 존재하지 않습니다.</td>
												</tr>
						            	  </c:if>
						            	  <c:if test="${!empty exList }">
						            	  		<c:forEach var="map" items="${exList}">
										              <tr  class="text-center">
										              		<td>${map['R_COUPON_NO'] }</td>
										              		<td>${map['R_COUPON_MIN'] }</td>
										              		<td>${map['R_COUPON_DC'] }</td>
											              	<td>${map['S_C_START_DATE'] }</td>
											                <td>${map['S_C_END_DATE'] }</td>
														    <td>
														    	<span class="badge bg-light">만료 </span>
														    </td>											                
										              </tr>
							              		</c:forEach>
							               </c:if>
							             </div><!-- AllList -->
						            
						            <!-- table 시작 -->
						            <div class="DateList">
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
														    <td>
														    	<span class="badge bg-light">만료 </span>
														    </td>											                
										              </tr>
							              		</c:forEach>
							               </c:if>
							             </div><!-- DateList -->
						            </tbody>
						          </table>
						          </div>
						      <!-- 테이블 끝 -->
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
        </div> <!-- 페이징 끝  -->
        </div><!-- card content -->
        </div>
        </div>
        </div>
        
			<div class="col-md-2 col-sm-12"></div>
			</div>
			</form>

			
			
		<br>
		<br>
		<br>
<!-- coupon register -->
		
<!--  -->
<script type="text/javascript">
$(function(){
	$('#DateList').hide();
	$('#searchDate').click(function(){
		$('#AllList').hide();
		$('#DateList').show();
	});
});
	$(function(){
		$('#btRegi').click(function(){
			location.href='<c:url value="/owner/menu2/couponused/couponRegi.do"/>';
		});
		$('#btExpire').click(function(){
			location.href='<c:url value="/owner/menu2/couponused/couponExpire.do"/>';
		});
	});
	function pageFunc(curPage){
		$('form[name=frmDate]').find('input[name=currentPage]').val(curPage);	
		$('form[name=frmDate]').submit();
	}
	
	$(function(){
		$('#btDel').click(function(){
			var no=$('.ckbox').val();
			var len
				=$('.delck .deltable tbody').find('input[type=checkbox]:checked').length;
			if(len==0){
				alert('먼저 삭제할 쿠폰을 선택해야 합니다.!');
				return false;	
			}
			
			$('form[name=frmList]').prop('action',
					'<c:url value="/owner/menu2/couponused/deleteMulti.do"/>');
			$('form[name=frmList]').submit();
		});	
		
		$('input[name=chkAll]').click(function(){
			$('.divList .box2 tbody').find('input[type=checkbox]')
				.prop('checked', this.checked);	
		});
	});
	

	/* 처음에 전체 목록 불러오기
	$(function(){
     	$.ajax({
			url:"<c:url value='/owner/menu2/couponused/couponExpire.do'/>",
			type:"GET",
		//	data: , 
			dataType:"json",
			contentType: 'application/x-www-form-urlencoded; charset=utf-8',
			success:function(res){
				alert(res);
				$('#DateList').hide();
				$('#AllList').show();
					
				},
				error:function(xhr, status, error){
					alert("error! : " + error);
				}				
			});//ajax
	});
	
	*/
</script>

 <%@include file="../../../ownerInc/jianSidebarBottom.jsp"%>

	