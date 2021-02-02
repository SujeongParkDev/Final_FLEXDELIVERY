<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="../../../ownerInc/jianSidebarTop.jsp"%>

	
		
	<script type="text/javascript">
	
	
	/*
 	$.ajax({
		url:"<c:url value='/owner/menu2/order/findOrderMenu.do'/>",
		data:"ordersNo=" + item.map['ORDERS_NO'],
		dataType:"json",
		type:"GET",
		success:function(mapResultTwo){
			
			str+="<td><a href='#' class='goDetail' data-toggle='modal' data-target='#orderDetail'>"+mapResultTwo.title+"</a></td>";
		},
		error:function(xhr, status, error){
			alert("error!! : " + error);
		}
	}); 
	*/							
								
	
	
	//submit 구간
		function pageFunc(curPage, type){
			if( type == 1){
				$('form[name=frmRequest]').find('input[name=currentPage]').val(curPage);	
				$('form[name=frmRequest]').submit();
			}
		}
	</script>


	
	
	<div class="row">
	  	<div class="col-md-1 col-12"></div>
	 	 <div class="col-md-10 col-12">
			<div class="card">
	            <div class="card-header  text-center">
	            	<br>
	            	<br>
	            	<br>
	                <h4 class="card-title">주문현황</h4>
	            </div>
	            <div class="card-body">
	                <div class="row">
	                    <div class="col-md-6">
	                    
	                     
		                        <ul class="nav nav-tabs" id="myTab" role="tablist">
		                            <li class="nav-item" role="presentation">
		                                <a class="nav-link active" id="request-tab" data-toggle="tab" href="#request" role="tab" aria-controls="request" aria-selected="true">주문신청</a>
		                            </li>
		                            <li class="nav-item" role="presentation">
		                                <a class="nav-link" id="orderIng-tab" data-toggle="tab" href="#orderIng" role="tab" aria-controls="orderIng" aria-selected="false">주문중</a>
		                            </li>
		                            <li class="nav-item" role="presentation">
		                                <a class="nav-link " id="deliveryIng-tab" data-toggle="tab" href="#deliveryIng" role="tab" aria-controls="deliveryIng" aria-selected="false">배달중</a>
		                            </li>
		                            <li class="nav-item" role="presentation">
		                                <a class="nav-link" id="deliverySuccess-tab" data-toggle="tab" href="#deliverySuccess" role="tab" aria-controls="deliverySuccess" aria-selected="false">배달완료</a>
		                            </li>
		                        </ul>
	                     </div>
	                   </div>
	                   <br>
                        <div class="tab-content" id="myTabContent">
                        
                        	<!-- 주문신청 -->
                            <div class="tab-pane fade active show" id="request" role="tabpanel" aria-labelledby="request-tab">
                            	<br>
                                <form name="frmRequest" method="post" name="frm1"  action="<c:url value='/owner/menu2/order/orderMain.do'/>" >
									<input type="hidden" name="currentPage" value="1">
								</form>
								
								
			                             <!-- table hover -->
							        <div class="table-responsive">
							          <table class="table table mb-5">
							            <thead>
							              <tr class="text-center">
							              	<th style="width:15%;">번호</th>
							              	<th style="width:20%;">회원</th>
							                <!-- 다급한거 이미지 -->
							                <th style="width:30%;">주문내역</th>
							                <th style="width:20%;">주문시각</th>
							                <th style="width:15%;">결제금액</th>
							               
							              </tr>
							            </thead>
							            <tbody>
							            <!-- table 시작 -->
							            	<c:if test="${empty list }">
						            			<tr class="text-center">
													<td colspan="5" class="align_center">데이터가 존재하지 않습니다.</td>
												</tr>
							            	</c:if>
							            	<c:if test="${!empty list }">
								            	<c:forEach var="map" items="${list }">	
									              <tr  class="text-center">
									              		<td>${map['RNUM'] }</td>
										                <td>${map['MEMBER_ID'] }</td>
										                <td></td>
										                <td class="text-bold-500">${map['ORDERS_PAY_END_DATE']}</td>
										                <td>${map['ORDERS_PRICE']-map['ORDERS_DISCOUNT'] }</td>
									             </tr>
									             </c:forEach>
								           </c:if>
							          	
							            </tbody>
							          </table>
							        </div>
							        <!-- table reponsive div 끝 -->
			                     </div>   
                            
	                           
	                            
	                             		<!-- 주문중 -->
	                            <div class="tab-pane fade" id="orderIng" role="tabpanel" aria-labelledby="orderIng-tab">
	                             			<br>
	                                <form name="frmOrderIng" method="post" name="frm1"  action="<c:url value='/owner/menu2/advertise/advertiseExpire.do'/>" >
							  			<input type="hidden" name="currentPage" value="1">
									</form>
	                            
	                           	</div>	
	                            
	                            
	                            
	                             	<!-- 배달중 -->
	                            <div class="tab-pane fade " id="deliveryIng" role="tabpanel" aria-labelledby="deliveryIng-tab">
	                                	<br>
	                                <form name="frmDeliveryIng" method="post" name="frm1"  action="<c:url value='/owner/menu2/advertise/advertiseExpire.do'/>" >
							  			<input type="hidden" name="currentPage" value="1">
									</form>
	                            </div>
	                            
	                            
	                            
	                            
	                            
	                            
	                            
	                            
	                            
	                            
	                        <!-- 	    배달완료	 --> 
	                            <div class="tab-pane fade" id="deliverySuccess" role="tabpanel" aria-labelledby="deliverySuccess-tab">
	                                	<br>
	                                <form name="frmDeliverySuccess" method="post" name="frm1"  action="<c:url value='/owner/menu2/advertise/advertiseExpire.do'/>" >
							  			<div class="row" >
								  			<div class="col-md-5 col-12"></div>
								  			<div class="col-md-5 col-12 ml-5">
												 <%@include file="../../../owner/datePicker/datePicker.jsp" %>	
												<input type="hidden" name="currentPage" value="1">
											</div>
											<div class="col-md-1 col-12">
												<input type="submit" style="background-color:rgb(223,108,220); color:white;" value="조회" >
											</div>
										</div>
									</form>
	                            </div>
	                            
	                        </div>
	                   
			         </div>
			         
						<!-- 계속 페이지 첫 시작에서 문제 생김 -->
						<!-- 페이징 시작 -->
			
				           <nav aria-label="Page navigation example">				<!-- 페이지 가운데 정렬은  justify-content-center-->
				               <ul class="pagination pagination-primary justify-content-center">
						   <!-- 페이지 번호 추가 -->		
							<!-- 이전 블럭으로 이동 -->
						 			<c:if test="${pagingInfo.firstPage>1 }">	
										<li class="page-item">
							                   <a class="page-link" href="#" aria-label="Previous" onclick="pageFunc(${pagingInfo.firstPage-1}, ${type })">
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
										    <li class="page-item"><a class="page-link" href="#" onclick="pageFunc(${i},${type })">${i}</a></li>
										</c:if>
									</c:forEach>
				
								  <c:if test="${pagingInfo.lastPage < pagingInfo.totalPage }">	
									<li class="page-item">
						                   <a class="page-link" href="#" aria-label="Previous"  onclick="pageFunc(${pagingInfo.lastPage+1},${type })">
												 <span aria-hidden="true">&raquo;</span>
						                   </a>
					                   </li>
								 </c:if>
				               </ul>
				           </nav>
				      
		
			    
	 		</div>
		</div>
		<div class="col-md-1 col-12"></div>
	</div>





















<!-- 모달 시작 -->

                    
                    <!-- Vertically Centered modal Modal -->
                    <div class="modal fade" id="orderDetail" tabindex="-1" aria-labelledby="orderDetailTitle" style="display: none;" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered modal-dialog-centered modal-dialog-scrollable" role="document">
                        <div class="modal-content">
	                        <div class="modal-header">
	                            <h5 class="modal-title" id="orderDetailTitle">주문 상세 내역</h5>
	                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	                            	<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x"><line x1="18" y1="6" x2="6" y2="18"></line><line x1="6" y1="6" x2="18" y2="18"></line></svg>
	                            </button>
	                        </div>
	                        <div class="modal-body">
	                          <!-- 내용 -->
	                        </div>
	                        <div class="modal-footer justify-content-center">
	                        	<button type="button" class="btn btn-primary ml-1" data-dismiss="modal">
	                           		 <i class="bx bx-check d-block d-sm-none"></i>
	                           		 <span class="d-none d-sm-block">확인</span>
	                            </button>
	                        </div>
                        </div>
                    </div>
                    </div>
              


 <%@include file="../../../ownerInc/jianSidebarBottom.jsp"%>