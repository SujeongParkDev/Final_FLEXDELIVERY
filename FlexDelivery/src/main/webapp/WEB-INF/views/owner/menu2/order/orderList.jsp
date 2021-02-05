
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@include file="../../../ownerInc/jianSidebarTop.jsp"%>
<!-- top 끝 -->


	<style>
		#oStatusNo{
			border:1px solid gray;
			border-radius: 3px;
		}
	</style>

	<script type="text/javascript">
	
	
	function goDetail(ordersNo,ordersDiscount){
			$.ajax({
				url:"<c:url value='/owner/menu2/order/orderRequestResult.do'/>",
				data:"ordersNo="+ordersNo,
				dataType:"json",
				type:"GET",
				success:function(dList){
					var str="";
					console.log(dList);
	       
	            	if(dList.length==0){
						   str+="<tr class='text-center'><td colspan='4'>데이터가 존재하지 않습니다.</td></tr>";         		
	            	}else{
	            			 str+="<tr><th colspan='2'>주문 번호</th><br><td colspan='2'>"+ordersNo+"</td></tr>";
	            			 var price = 0;
	            		$.each(dList, function(idx, item){
	            			if(item['M_OPTION_NO']==0){
	            				str+="<tr><th>메뉴 이름</th><br><td>"+item['MENU_NAME']+"</td><td>"+item['O_DETAIL_QTY']+"개</td><td><small>"+(item['O_DETAIL_QTY']*item['MENU_PRICE'])+"원</small></td></tr>";
	            				price+=(item['O_DETAIL_QTY']*item['MENU_PRICE']);
	            			}else{
	            				str+="<tr style='font-size:5px;'><th>ㄴ옵션 </th><br><td>"+item['M_OPTION_NAME']+"</td><td>"+item['O_DETAIL_QTY']+"개</td><td><small>"+(item['O_DETAIL_QTY']*item['M_OPTION_PRICE'])+"원</small></td></tr>";
	            				price+=(item['O_DETAIL_QTY']*item['M_OPTION_PRICE']);
	            			}
	            		});
	            		
	            		str+="<br><tr><td colspan='2'>합계 </td><td colspan='2'> "+price+"원</td></tr><br>";
	            		if(ordersDiscount>0){
	            			str+="<tr><td colspan='2'></td><td> - 할인금액</td><td>"+ordersDiscount+"원</td></tr><br>";
	            			price-=ordersDiscount;
	            		}
	            		str+="<tr><td colspan='2'></td><td> + 배달팁</td><td>3000원</td></tr><br>";
	            		price+=3000;
	            		str+="<hr><br><tr><td colspan='2'>총 금액</td><td colspan='2'>"+price+"</td></tr><br>";
	            			
	            	}
	            	$('#orderDetailModal').html(str);
					
					
						
					},
					error:function(xhr, status, error){
						alert("error!! : " + error);
					}
			}); 
 	 };	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
		function pageFunc(curPage){
				$('form[name=frmPage]').find('input[name=currentPage]').val(curPage);	
				$('form[name=frmPage]').submit();
		}
		

		
		
		
		 
	</script>

		
	

			
	<div class="row m-5">
	  	
			<div class="card m-2">
	            <div class="card-header  text-center">
	            	<br>
	            	<br>
	            	<br>
	                <h4 class="card-title">주문내역</h4>
	            </div>
	         	   <br>
	            	<br>
	            	<br>
	            <div class="card-body">
	                <div class="row">
					  		<c:set var="buyPrice" value="0"/>
					  		<form name="frmPage" method="post"   action="<c:url value='/owner/menu2/order/orderList.do'/>" >
					  			<div class="row" >
					  				<div class="col-md-4 col-12">
		            					<h6 style="margin-left:50px; margin-top:10px;" id="totalPrice"></h6>
					  				</div>
						  			<div class="col-md-2 col-12 text-right">
						  				<select id="oStatusNo" name="oStatusNo" style="height:30px;">
						  					<option value="4"
						  					<c:if test="${oStatusNo== 4}">
						  							selected="selected"
		            						</c:if>
						  					>주문완료</option>
						  					<option value="5"
						  					<c:if test="${oStatusNo==5}">
						  							selected="selected"
		            						</c:if>
						  					>주문취소</option>
						  					
		            		
						  				</select>
						  			</div>
						  			<div class="col-md-5 col-12 ">
						  				
										 <%@include file="../../../owner/datePicker/datePicker.jsp" %>	
										<input type="hidden" name="currentPage" value="1">
									</div>
									<div class="col-md-1 col-12">
										<input type="submit" style="background-color:rgb(223,108,220); color:white;" value="조회" >
									</div>
								</div>
							</form>
								 <br>
	            					<br>
	            					<br>
					
			
								 <div class="table-responsive" >
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
								            	<c:set var="sum" value="${map['ORDERS_PRICE']-map['ORDERS_DISCOUNT']}"/>
												<c:set var="buyPrice" value="${buyPrice + sum }"/>	
									              <tr  class="text-center">
									              		<td>${map['RNUM'] }</td>
										                <td>${map['MEMBER_ID'] }</td>
										                	<c:import url="/owner/menu2/order/orderTd.do">
										                	 	<c:param name="ordersNo" value = "${map['ORDERS_NO'] }"/>
										                	 	<c:param name="ordersDiscount" value = "${map['ORDERS_DISCOUNT'] }"/>
										               		 </c:import>
										               	<c:if test="${map['O_STATUS_NO']==4}">
										                	<td class="text-bold-500">${map['DELIVERYSUCCESS']}</td>
										                </c:if>	 
										               	<c:if test="${map['O_STATUS_NO']==5 }">
										                	<td class="text-bold-500">${map['ORDERS_PAY_END_DATE']}</td>
										                </c:if>
										                <td>${sum }원</td>
									             </tr>
									             </c:forEach>
								           </c:if>
							            </tbody>
							          </table>
							        </div>
							        
							        
							        <script type="text/javascript">
							        	$('#totalPrice').html('총 금액 :'+${buyPrice}+'원');
							        	
							        </script>
							
										<!-- 페이징 시작 -->
										<div class="card-body">
								           <nav aria-label="Page navigation example">				<!-- 페이지 가운데 정렬은  justify-content-center-->
								               <ul class="pagination pagination-primary justify-content-center">
										   <!-- 페이지 번호 추가 -->		
											<!-- 이전 블럭으로 이동 -->
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
							</div>
						</div>
					</div>
			
			
			<!-- 주문 상세 내역 관련 모달 -->
                    <div class="modal fade" id="orderDetail" tabindex="-1" aria-labelledby="orderDetailTitle" style="display: none;" aria-hidden="true" role="dialog">
	                    <div class="modal-dialog modal-dialog-centered modal-dialog-centered modal-dialog-scrollable" role="document">
	                        <div class="modal-content">
		                        <div class="modal-header mt-5">
		                            <h5 class="modal-title" id="orderDetailTitle">주문 상세 내역</h5>
		                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		                            	<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x"><line x1="18" y1="6" x2="6" y2="18"></line><line x1="6" y1="6" x2="18" y2="18"></line></svg>
		                            </button>
		                        </div>
		                        <div class="modal-body">
		                        	 <div class="table-responsive">
								          <table class="table table mb-5">
							          			<tbody id="orderDetailModal">
							          			
							          			</tbody>
								          </table>
								      </div>
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


	