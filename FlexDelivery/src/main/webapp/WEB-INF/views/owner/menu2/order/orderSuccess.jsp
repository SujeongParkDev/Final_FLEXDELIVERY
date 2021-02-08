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
			success:function(map){
				var str="";
				console.log(map);
				
       				str+="<div class='text-center' style='height:15px;'><bR><h6>회원 정보</h6><br></div>";
       				str+="<table><thead><tr><td style='width:40%;'></td><br><td style='width:60%;'></td></tr></thead>";
       				str+="<tbody><tr class='text-center'><br><th>회원 아이디</th><td>"+map.oMap['MEMBER_ID']+"</td></tr>";
       				str+="<tbody><tr class='text-center'><th>회원 이름</th><br><td>"+map.oMap['MEMBER_NAME']+"</td></tr>";
       				str+="<tbody><tr class='text-center'><th>회원 주소</th><td>"+map.oMap['ORDERS_ADDRESS']+"</td></tr>";
       				str+="<tbody><tr class='text-center'><br><th>회원 요청사항</th><td>"+map.oMap['ORDERS_MESSAGE']+"</td></tr></tbody></table><div class='mt-3 mb-2'><hr></div>";
       				str+="<br><div class='text-center' style='height:15px;'><h6>메뉴 / 옵션</h6></div><br>";
       				str+="<table><thead><tr><td style='width:40%;'></td><td style='width:60%;'></td></tr></thead>";
					str+="<tbody>";
       				if(map.dList.length==0){
					   str+="<tr class='text-center'><td colspan='2'>주문 데이터가 존재하지 않습니다.</td></tr>";         		
            		}else{
            			 var price = 0;
	            		$.each(map.dList, function(idx, item){
	            			if(item['M_OPTION_NO']==0){
	            				str+="<tr class='text-center'><th><b>"+item['MENU_NAME']+"</b></th>";
	            				str+="<td>"+item['O_DETAIL_QTY']+"개 / "+(item['O_DETAIL_QTY']*item['MENU_PRICE'])+"원</td></tr>";
	            				price+=(item['O_DETAIL_QTY']*item['MENU_PRICE']);
	            			}else{
	            				str+="<tr class='text-center' style='font-size:10px;'><td class='pl-4'>ㄴ["+item['M_OPTION_NAME']+"]</td><td>"+item['O_DETAIL_QTY']+"개 / "+(item['O_DETAIL_QTY']*item['M_OPTION_PRICE'])+"원</td></tr>";
	            				price+=(item['O_DETAIL_QTY']*item['M_OPTION_PRICE']);
	            			}
            		});
            		str+="</tbody><br></table><br><div class='mt-3'><hr></div>";
            		
            		str+="<div class='text-center' style='height:15px;'><h6>가격</h6></div><table><br><tbody>";
            		str+="<tr class='text-center'><td>가격 : "+price+"원</td></tr>";
            		if(ordersDiscount>0){
            			str+="<tr class='text-center'><td> - 할인 : "+ordersDiscount+"원</td></tr>";
            			price-=ordersDiscount;
            		}
            		str+="<tr class='text-center'><td> + 배달팁 : 3000원<br></tr>";
            		price+=3000;
            		str+="<tr class='text-center'><td> 총 : "+price+"</td></tr></tbody></table>";
            		
            	}
            	$('#detailStart').html(str);
				
				
				
			},
			error:function(xhr, status, error){
				alert("error!! : " + error);
			}
		}); 
  };	

</script>
	<br><br><br>
	 <div class="row">
  		<div class="col-md-1 col-sm-12"></div>
  		<div class="col-md-10 col-sm-12">
	  		 <div class="text-right">
               	 <button id="btRequestTop" class="btn btn-primary btOrderChange" style="background-color: rgb(33, 158, 188); border-color: rgb(33, 158, 188); " >주문신청</button>
               	 <button id="btOrderTop" class="btn btn-primary btOrderChange" style="background-color: rgb(33, 158, 188); border-color: rgb(33, 158, 188); ">조리중</button>
               	 <button id="btOrderIngTop" class="btn btn-primary btOrderChange " style="background-color: rgb(33, 158, 188); border-color: rgb(33, 158, 188); ">배달중</button>
               	 <button id="btOrderSuccessTop" class="btn btn-primary btOrderChange" style="background-color: rgb(33, 158, 188); border-color: rgb(33, 158, 188); " >배달완료</button>
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
	                <p class="card-title mb-5 mt-3" style="font-size:30px; color:#ffb703;"><b>😊배달 완료😊</b></p>
	            </div>
	            <div class="card-body">
	                <div class="row">
							 <form name="frmDeliverySuccess" method="post"  action="<c:url value='/owner/menu2/order/orderSuccess.do'/>" >
								<input type="hidden" name="currentPage" value="1">
							</form>
															
															
							                         <!-- table hover -->
							        <div class="table-responsive">
							          <table class="table table mb-5">
							            <thead>
							              <tr class="text-center" style="background-color:rgb(2, 48, 71); color:white;">
							              	<th style="width:20%;">번호</th>
							              	<th style="width:10%;">회원</th>
							                <!-- 다급한거 이미지 -->
							                <th style="width:40%;">주문내역</th>
							                <th style="width:10%;">금액</th>
							                <th style="width:20%;">완료시간</th>
							            
							               
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
										                	<c:import url="/owner/menu2/order/orderTd.do">
										                	 	<c:param name="ordersNo" value = "${map['ORDERS_NO'] }"/>
										                	 	<c:param name="ordersDiscount" value = "${map['ORDERS_DISCOUNT'] }"/>
										                	
										               		 </c:import>
										                <td>${map['ORDERS_PRICE']-map['ORDERS_DISCOUNT'] }</td>
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
		                        	
								  	<div class="row" id="detailStart">
								  	 	
								    </div>             
		                          <!-- 내용 -->
		                        </div>
		                        <div class="modal-footer justify-content-center mt-3">
		                        	<button type="button" class="btn btn-primary ml-1" data-dismiss="modal">
		                           		 <i class="bx bx-check d-block d-sm-none"></i>
		                           		 <span class="d-none d-sm-block">확인</span>
		                            </button>
		                        </div>
	                        </div>
	                    </div>
                    </div>
              	      
 <%@include file="../../../ownerInc/jianSidebarBottom.jsp"%>				 