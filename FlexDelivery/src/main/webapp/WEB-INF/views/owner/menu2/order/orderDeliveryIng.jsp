<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="../../../ownerInc/jianSidebarTop.jsp"%>

	
		
<script type="text/javascript">



	$(function(){
		$('.btOrderChange').click(function(){
			
			var url='<c:url value="/owner/menu2/order/orderMain.do"/>';
			
			if($(this).attr('id')=='btRequestTop'){
				url='<c:url value="/owner/menu2/order/orderMain.do"/>';
			}else if($(this).attr('id')=='btOrderTop'){
				url='<c:url value="/owner/menu2/order/orderIng.do"/>';				
			}else if($(this).attr('id')=='btOrderIngTop'){
				url='<c:url value="/owner/menu2/order/orderDeliveryIng.do"/>';
			}else if($(this).attr('id')=='btOrderSuccessTop'){
				url='<c:url value="/owner/menu2/order/orderSuccess.do"/>';
			}
			
			location.href=url;
		});
		
	});  

	
	
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

</script>

<br><br>
	<div class="text-center">
		<h3>주문현황</h3>
	</div>
	><br><br>
	 <div class="row">
  		<div class="col-md-2 col-sm-12"></div>
  		<div class="col-md-9 col-sm-12">
	  		 <div class="text-right">
               	 <button id="btRequestTop" class="btn btn-primary btOrderChange" >주문신청</button>
               	 <button id="btOrderTop" class="btn btn-primary btOrderChange" >조리중</button>
               	 <button id="btOrderIngTop" class="btn btn-primary btOrderChange " >배달중</button>
               	 <button id="btOrderSuccessTop" class="btn btn-primary btOrderChange" >배달완료</button>
              	 </div>
           </div>
           <div class="col-md-1 col-sm-12"></div>
  	</div>
  	
  	
	
	<div class="row ml-5 mr-5 mt-3">
	  	
			<div class="card">
	            <div class="card-header  text-center">
	            	<br>
	            	<br>
	            	<br>
	                <h4 class="card-title">배달중</h4>
	            </div>
	            <div class="card-body">
	                <div class="row">
	                    
						<form name="frmDeliveryIng" method="post"   action="<c:url value='/owner/menu2/order/orderDeliveryIng.do'/>" >
							<input type="hidden" name="currentPage" value="1">
						</form>
														
														
						                         <!-- table hover -->
						        <div class="table-responsive">
						          <table class="table table mb-5">
						            <thead>
						              <tr class="text-center">
						              	<th style="width:10%;">번호</th>
						              	<th style="width:10%;">회원</th>
						                <!-- 다급한거 이미지 -->
						                <th style="width:25%;">주문내역</th>
						                <th style="width:15%;">결제금액</th>
						                <th style="width:20%;">배달시간</th>
						                <th style="width:20%;">완료시간</th>
						               
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
									                	 	<c:param name="type" value = "${type }"/>
									               		 </c:import>
									                <td>${map['ORDERS_PRICE']-map['ORDERS_DISCOUNT'] }</td>
									                <td class="text-bold-500">${map['ORDERS_DURATION']}</td>
									                <td class="text-bold-500">${map['DELIVERYSUCCESS']}</td>
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