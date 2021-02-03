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
	
		  
		  //주문 번호 모달에게 전달하기
		  $(function(){
				$('.btRequest').click(function(){
					$.ajax({
						url:"<c:url value='/owner/menu2/order/goRequestOkModal.do'/>",
						data:"ordersNo="+$(this).val(),
						dataType:"json",
						type:"GET",
						success:function(res){
							str="";
							str+= "<div class='text-center'><h5>"+res+"번 주문 접수 하시겠습니까?</h5></div>";
							
							$('.requestOkText').html(str);
							$('.btRequestOkModal').val(res);
						},
						error:function(xhr, status, error){
							alert("error!! : " + error);
						}
					}); 
				
					
				});
		  });
		 
		  
		  
		  $(function(){
				$('.btRequestOkModal').click(function(){
					$.ajax({
						url:"<c:url value='/owner/menu2/order/orderRequestUpdate.do'/>",
						data:"ordersNo="+$(this).val(),
						dataType:"json",
						type:"GET",
						success:function(bool){
							if(bool==true){
								location.reload();
								alert("주문 접수 하셨습니다!");
								

							}else{
								alert('다시 시도해주세요');
							}
						},
						error:function(xhr, status, error){
							alert("error!! : " + error);
						}
					}); 
				
					
				});
		  });
		  
		  
		  
		//주문 번호 모달에게 전달하기
		  $(function(){
				$('.btDeliveryTime').click(function(){
					$.ajax({
						url:"<c:url value='/owner/menu2/order/goDeliveryOkModal.do'/>",
						data:"ordersNo="+$(this).val(),
						dataType:"json",
						type:"GET",
						success:function(res){
							
							
							$('.deliveryTimeOkModal').val(res);
						},
						error:function(xhr, status, error){
							alert("error!! : " + error);
						}
					}); 
				
					
				});
		  });
		  
		  
		  
			//delivery 값 가져와서 input 에 집어넣기 update 위해서임
		  $(function(){
				$('.btdvtime').click(function(){
					var dvTime= $(this).val();
					$('.deliveryTimeInput').val(dvTime);
				});
		  });
		  
		 
			
		 //모달 누르면 update 
		 
		  $(function(){
				$('.deliveryTimeOkModal').click(function(){
					
					var deliTime = $('input[class=deliveryTimeInput]').val();
					if(deliTime==0){
						$('#warningDeliveryTime').html('시간을 입력해 주세요');
						event.prventDefault();
						return false;
					}else{
						$.ajax({
							url:"<c:url value='/owner/menu2/order/orderDeliveryUpdate.do'/>",
							data:"ordersNo="+$(this).val()+"&ordersDuration="+deliTime,
							dataType:"json",
							type:"GET",
							success:function(bool){
								if(bool==true){
									location.reload();
									alert("배달 접수 하셨습니다!");
									

								}else{
									alert('다시 시도해주세요');
								}
							},
							error:function(xhr, status, error){
								alert("error!! : " + error);
							}
						}); 
						
						
					}
					
					
				});
				
		  });
		 
		 
		 
	//submit 구간
		function pageFunc(curPage, type){
			if( type == 1){
				$('form[name=frmRequest]').find('input[name=currentPage]').val(curPage);	
				$('form[name=frmRequest]').submit();
			}else if( type == 2){
				$('form[name=frmOrderIng]').find('input[name=currentPage]').val(curPage);	
				$('form[name=frmOrderIng]').submit();
			}else if( type == 3){
				$('form[name=frmDeliveryIng]').find('input[name=currentPage]').val(curPage);	
				$('form[name=frmDeliveryIng]').submit();
			}else if(type==4){
				$('form[name=frmDeliverySuccess]').find('input[name=currentPage]').val(curPage);	
				$('form[name=frmDeliverySuccess]').submit();
			}
		}
	</script>


	
	
	<div class="row m-5">
	  	
			<div class="card m-2">
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
		                                <a class="nav-link" id="orderIng-tab" data-toggle="tab" href="#orderIng" role="tab" aria-controls="orderIng" aria-selected="false">조리중</a>
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
							              	<th style="width:10%;">번호</th>
							              	<th style="width:15%;">회원</th>
							                <!-- 다급한거 이미지 -->
							                <th style="width:30%;">주문내역</th>
							                <th style="width:20%;">주문시각</th>
							                <th style="width:10%;">결제금액</th>
							                <th style="width:10%;">접수</th>
							               
							              </tr>
							            </thead>
							            <tbody>
							            <!-- table 시작 -->
							            	<c:if test="${empty list }">
						            			<tr class="text-center">
													<td colspan="6" class="align_center">데이터가 존재하지 않습니다.</td>
												</tr>
							            	</c:if>
							            	<c:if test="${!empty list }">
								            	<c:forEach var="map" items="${list }">	
									              <tr  class="text-center">
									              		<td>${map['RNUM'] }</td>
										                <td>${map['MEMBER_ID'] }</td>
										                	<c:import url="/owner/menu2/order/orderTd.do">
										                	 	<c:param name="ordersNo" value = "${map['ORDERS_NO'] }"/>
										                	 	<c:param name="ordersDiscount" value = "${map['ORDERS_DISCOUNT'] }"/>
										               		 </c:import>
										                <td class="text-bold-500">${map['ORDERS_PAY_END_DATE']}</td>
										                <td>${map['ORDERS_PRICE']-map['ORDERS_DISCOUNT'] }</td>
										                <td>
										                	<button class="btn btRequest" value="${map['ORDERS_NO'] }" style="width:40px; height:25px; font-size:3px; padding:0px; background-color:rgb(223,108,220); color:white; border: none;"
										                				data-toggle="modal" data-target="#requestOk">접수</button>
										                </td>
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
	                                <c:import url="/owner/menu2/order/orderIng.do">
									</c:import>
	                            
	                           	</div>	
	                            
	                            
	                            
	                             	<!-- 배달중 -->
	                            <div class="tab-pane fade " id="deliveryIng" role="tabpanel" aria-labelledby="deliveryIng-tab">
	                                	<br>
	                                <c:import url="/owner/menu2/order/orderDeliveryIng.do">
									</c:import>
	                            </div>
	                            
	                            
	                            
	                            
	                            
	                            
	                            
	                            
	                            
	                            
	                        <!-- 	    배달완료	 --> 
	                            <div class="tab-pane fade" id="deliverySuccess" role="tabpanel" aria-labelledby="deliverySuccess-tab">
	                                	<br>
	                                <c:import url="/owner/menu2/order/orderSuccess.do">
									</c:import>
	                                
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





















<!-- 모달 시작 -->

                    
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
              
              
              		 <!-- 접수신청 누른후 접수할건지 물어보는 모달-->
              		
                    <div class="modal fade" id="requestOk" tabindex="-1" aria-labelledby="requestOkTitle" aria-hidden="true" style="display: none;">
	                    <div class="modal-dialog modal-dialog-centered modal-dialog-centered modal-dialog-scrollable" role="document">
	                        <div class="modal-content">
	                        <div class="modal-header">
	                            <h5 class="modal-title" id="requestOkTitle">주문 접수</h5>
	                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x"><line x1="18" y1="6" x2="6" y2="18"></line><line x1="6" y1="6" x2="18" y2="18"></line></svg>
	                            </button>
	                        </div>
	                        <div class="modal-body requestOkText">
	                            
	                        </div>
	                        <div class="modal-footer">
	                            <button type="button" class="btn btn-primary ml-1 btRequestOkModal" data-dismiss="modal">
	                            	<i class="bx bx-check d-block d-sm-none"></i>
	                           		<span class="d-none d-sm-block">접수</span>
	                            </button>
	                             <button type="button" class="btn btn-light-secondary" data-dismiss="modal">
	                           		<i class="bx bx-x d-block d-sm-none"></i>
	                            	<span class="d-none d-sm-block">취소</span>
	                            </button>
	                        </div>
	                        </div>
	                    </div>
       				</div>
              		 
              		 
              		 
              		 
              		 
              		  <!-- 배달할건지 묻는 모달-->
              		
                    <div class="modal fade" id="deliveryTime" tabindex="-1" aria-labelledby="deliveryTimeTitle" aria-hidden="true" style="display: none;">
	                    <div class="modal-dialog modal-dialog-centered modal-dialog-centered modal-dialog-scrollable" role="document">
	                        <div class="modal-content">
	                        <div class="modal-header">
	                            <h5 class="modal-title" id="deliveryTimeTitle">배달</h5>
	                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x"><line x1="18" y1="6" x2="6" y2="18"></line><line x1="6" y1="6" x2="18" y2="18"></line></svg>
	                            </button>
	                        </div>
	                        <div class="modal-body deliveryTimeText">
	                        	<div class="row">
	                        		<div class="col-12 col-md-1"></div>
	                        			<input class="deliveryTimeInput" type="hidden" value="0">
	                        			<div class="col-12 col-md-10 text-center">
		                        			<button class="btn btn-primary p-0 m-1 btdvtime" style="width:70px; height:40px;" value="20">20분</button>
		                        			<button class="btn btn-primary p-0 m-1 btdvtime" style="width:70px; height:40px;" value="30">30분</button>
		                        			<button class="btn btn-primary p-0 m-1 btdvtime" style="width:70px; height:40px;" value="40">40분</button>
		                        			<button class="btn btn-primary p-0 m-1 btdvtime" style="width:70px; height:40px;" value="50">50분</button>
		                        			<br>
		                        			<button class="btn btn-primary p-0 m-1 btdvtime" style="width:70px; height:40px;" value="60">60분</button>
		                        			<button class="btn btn-primary p-0 m-1 btdvtime" style="width:70px; height:40px;" value="70">70분</button>
		                        			<button class="btn btn-primary p-0 m-1 btdvtime" style="width:70px; height:40px;" value="80">80분</button>
		                        			<button class="btn btn-primary p-0 m-1 btdvtime" style="width:70px; height:40px;" value="90">90분</button>
	                        			<br>
	                        			<span id="warningDeliveryTime" style="color:red;"></span>
			                         	</div>
									<div class="col-12 col-md-1"></div>
								</div>
	                        </div>
	                        <div class="modal-footer">
	                            <button type="button" class="btn btn-primary ml-1 deliveryTimeOkModal" value="${ordersNo }" data-dismiss="modal">
	                            	<i class="bx bx-check d-block d-sm-none"></i>
	                           		<span class="d-none d-sm-block">확인</span>
	                            </button>
	                             <button type="button" class="btn btn-light-secondary" data-dismiss="modal">
	                           		<i class="bx bx-x d-block d-sm-none"></i>
	                            	<span class="d-none d-sm-block">취소</span>
	                            </button>
	                        </div>
	                        </div>
	                    </div>
       				</div>
              		 
              		 
              		 
              		 
              		 
              		 
              		 
              		 
              		 
              		 
              		 
              		 
              		 
              		 
              		 
              		 
              		 
              		 


 <%@include file="../../../ownerInc/jianSidebarBottom.jsp"%>