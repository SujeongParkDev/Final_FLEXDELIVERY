<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<%@include file="../../ownerInc/jianSidebarTop.jsp"%>
     
<div class="main-content container-fluid">

	

	<!-- 카드로 공지사항 만들기 -->
	<!-- QQQ. 선택해주세요 공지사항 시안 1 ,  2 1은 일반 카드 2는 아코디언 형식 -->
	<!-- 1번 카드형식 -->
	<%--  <div class="row">
		 <div class="col-12 col-md-1" ></div>
		 <div class="col-12 col-md-10" >
		 <div class="card">
	          <div class="card-content">
	              <div class="card-body">
	              	   <div class="row" >
	              			<div class="col-12 col-md-2" ></div>
	              			<div class="col-12 col-md-8" >
	                  			<h3 class="card-title " style="margin-top:20px;">공 지 사 항</h3>
	                  		</div>
	                  		<div class="col-12 col-md-2" style="margin-top:20px;">
				                  <a href="<c:url value='/owner/menu3/notice.do'/>" style="font-size: 15px; color: gray; ">more</a>
				             </div>
				            
			                  <div class="card-text" style="padding-top:-30px;">
			                  		<br><Br>
			                  	   <div class="row">
			                  	    <div class="col-12 col-md-1" ></div>
			              				<div class="col-12 col-md-10" >
						                      <ul style="list-style: none">
						                        	<li style=" font-size:100%; height:30px; ">
						                        		<a style="text-decoration:none; color:black;"href="">
						                        			<b>[공지]</b>&nbsp;오늘부로 수수료 10% 인하합니..
						                        		</a>
						                        		<span style="float:right;">2020-01-20</span>
						                        	</li>
						                        	<li style=" font-size:100%; height:30px;  ">
						                        		<a style="text-decoration:none; color:black;"href="">
						                        			<b>[공지]</b>&nbsp;쿠폰도 할인중 
						                        		</a>
						                        		<span style="float:right;">2020-01-20</span>
						                        	</li>
						                        	<li style=" font-size:100%; height:30px;  ">
						                        		<a style="text-decoration:none; color:black;"href="">
						                        			<b>[공지]</b>&nbsp;광고도 할인할인할인 언제까지...
						                        		</a>
						                        		<span style="float:right;">2020-01-20</span>
						                        	</li>
						                        	<li style=" font-size:100%; height:30px;  ">
						                        		<a style="text-decoration:none; color:black;"href="">
						                        			<b>[공지]</b>&nbsp;마지막 구매찬스~선착순입니다. 사장님덜 
						                        		</a>
						                        		<span style="float:right;">2020-01-20</span>
						                        	</li>
						                        	<li style=" font-size:100%; height:30px;  ">
						                        		<a style="text-decoration:none; color:black;"href="">
						                        			<b>[공지] </b> &nbsp;재밋다 하하
						                        		</a>
						                        		<span style="float:right;">2020-01-20</span>
						                        	</li>
						                      </ul>
						                  </div>
						                  <div class="col-12 col-md-1" ></div>
						              </div>
			                 	 </div>
			              </div>
			          </div>
			      </div>
			  </div>
			</div>
			<div class="col-12 col-md-1" ></div>
		</div>

 --%>


			
	<!--2번아코디언형식 -->
		 <div class="row">
		 <div class="col-12 col-md-1" ></div>
		 <div class="col-12 col-md-10" >
			  <div class="card collapse-icon accordion-icon-rotate">
                   <div class="accordion" id="cardAccordion">
                           <div class="card-header" id="headingOne" data-toggle="collapse" data-target="#collapseOne"
                               aria-expanded="false" aria-controls="collapseOne" role="button">
                              <div class="row">
	                               <div class="col-12 col-md-1" ></div>
	                               <div class="col-12 col-md-9" >
	                               		<span class="collapsed collapse-title" style="font-size:20px;">공 지 사 항</span>
	                               	</div>
	                               	<div class="col-12 col-md-2" >
	                               		<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-arrow-down-short" viewBox="0 0 16 16">
	  										<path fill-rule="evenodd" d="M8 4a.5.5 0 0 1 .5.5v5.793l2.146-2.147a.5.5 0 0 1 .708.708l-3 3a.5.5 0 0 1-.708 0l-3-3a.5.5 0 1 1 .708-.708L7.5 10.293V4.5A.5.5 0 0 1 8 4z"/>
										</svg>
								    </div>
	                          </div>
                           </div>
                           <div id="collapseOne" class="collapse pt-1" aria-labelledby="headingOne"
                               data-parent="#cardAccordion">
                               <div class="card-body">
                                    <div class="row">
			                  	    <div class="col-12 col-md-1" ></div>
			              				<div class="col-12 col-md-10" >
						                      <ul style="list-style: none">
						                        	<li style=" font-size:100%; height:30px; ">
						                        		<a style="text-decoration:none; color:black;"href="">
						                        			<b>[이벤트]</b>&nbsp;오늘부로 수수료 10% 인하합니..
						                        		</a>
						                        		<span style="float:right;">2020-01-20</span>
						                        	</li>
						                        	<li style=" font-size:100%; height:30px;  ">
						                        		<a style="text-decoration:none; color:black;"href="">
						                        			<b>[이벤트]</b>&nbsp;쿠폰도 할인중 
						                        		</a>
						                        		<span style="float:right;">2020-01-20</span>
						                        	</li>
						                        	<li style=" font-size:100%; height:30px;  ">
						                        		<a style="text-decoration:none; color:black;"href="">
						                        			<b>[이벤트]</b>&nbsp;광고도 할인할인할인 언제까지...
						                        		</a>
						                        		<span style="float:right;">2020-01-20</span>
						                        	</li>
						                        	<li style=" font-size:100%; height:30px;  ">
						                        		<a style="text-decoration:none; color:black;"href="">
						                        			<b>[이벤트]</b>&nbsp;마지막 구매찬스~선착순입니다. 사장님덜 
						                        		</a>
						                        		<span style="float:right;">2020-01-20</span>
						                        	</li>
						                        	<li style=" font-size:100%; height:30px;  ">
						                        		<a style="text-decoration:none; color:black;"href="">
						                        			<b>[공지] </b> &nbsp;재밋다 하하
						                        		</a>
						                        		<span style="float:right;">2020-01-20</span>
						                        	</li>
						                      </ul>
						                  </div>
						                   <div class="col-12 col-md-10" ></div>
						                    <div class="col-12 col-md-2" >
						                      	<a href="<c:url value='/owner/menu3/notice.do'/>" style="font-size: 15px; color: gray; ">more..</a>
						                    </div>
                              		  </div>
                         		  </div>
		           			</div>
		     		</div>
		     	</div>
			<div class="col-12 col-md-1" ></div>
		</div>
		</div>	
			
			
			<!-- 차트 -->

			
			<div class="row">
				<div class="col-12 col-md-1"></div>
				   <div class="col-12 col-md-10">
					<section id="groups">
					        <div class="row match-height">
					                <div class="card-group">
					                	<div class="col-12 col-md-6"> <!-- 카드 안의 전체 크기조절 -->
						                    <div class="card"  style="width:95%; height:300px;" >
						                        <div class="card-content">
						                            <div class="card-body">
						                            	<div class="row">
						                            		<div class="col-12 col-md-4"  style="width:100px;  padding-left:10px;padding-right:0px;"> <!--  요청처리현황 제목 부분 크기조절 -->
						                            			<a href="<c:url value='/owner/menu2/temporary/tempList.do'/>">
							                                		<h6 class="card-title">주간 매출</h6>
							                                	</a>
							                               	</div>
							                                <div class="col-12 col-md-8" style="padding:0px;">
								                                <a href="<c:url value='/owner/menu2/temporary/tempList.do'/>">
									                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-compact-right" viewBox="0 0 16 16">
					  														<path fill-rule="evenodd" d="M6.776 1.553a.5.5 0 0 1 .671.223l3 6a.5.5 0 0 1 0 .448l-3 6a.5.5 0 1 1-.894-.448L9.44 8 6.553 2.224a.5.5 0 0 1 .223-.671z"/>
																	</svg>
																</a>
															</div>
															<!-- <div class="col-12 col-md-1"></div>
																<div class="col-12 col-md-3" style="color:gray;text-align: right;padding-left:20px;">
																<small>이번주</small>  
															</div>
															<div class="col-12 col-md-3" style="color:gray; text-align: right; padding-right:30px;">
																<small>지난주</small>  
															</div> -->
														</div>
						                                <p class="card-text">
						                                <!-- 주간 매출 차트 시작-->
						                        		<div>
									                       <%@include file="charts/mainChartLine.jsp"%>
														</div>			                                
						                            </div>
						                        </div>
						                    </div>
						                </div>
										<!-- 카드 내의 크기 조절 -->
						                <div class="col-12 col-md-6">
					                    <div class="card" style="width:95%; margin-left:20px; height:300px;">
					                        <div class="card-content">
					                            <div class="card-body">
					                                <div class="row">
						                            		<div class="col-12 col-md-4" style="padding-left:10px;padding-right:0px; width:130px;"><!-- 제목 부분만 -->
						                            			<a href="<c:url value='/owner/menu2/reviewOwner/reviewOwner.do'/>">
							                                		<h6 class="card-title">주간 주문수</h6>
							                                	</a>
							                               	</div>
							                                <div class="col-12 col-md-1" style="padding:0px;">
								                                <a href="<c:url value='/owner/menu2/reviewOwner/reviewOwner.do'/>">
									                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-compact-right" viewBox="0 0 16 16">
					  														<path fill-rule="evenodd" d="M6.776 1.553a.5.5 0 0 1 .671.223l3 6a.5.5 0 0 1 0 .448l-3 6a.5.5 0 1 1-.894-.448L9.44 8 6.553 2.224a.5.5 0 0 1 .223-.671z"/>
																	</svg>
																</a>
															</div>
															
															<!-- <div class="col-12 col-md-3" style="color:gray;text-align: right;padding-left:20px;">
																<small>이번주</small>  
															</div>
															<div class="col-12 col-md-3" style="color:gray; text-align: right; padding-right:30px;">
															<small>지난주</small>  </div> -->
														</div>
					                                <p class="card-text">
					                                	<br>
					                                	<!-- 주간 주문수 차트 시작-->
					                                	 <%@include file="charts/mainChartBar.jsp"%>
				                                			
				                          			  </div>
				                        		</div>
						                    </div>
						                    </div>
				                		</div>
				           			 </div>
   							</section>
   		      			  </div>
   		        		 <div class="col-12 col-md-1"></div>
   		     		</div>















	
			<!-- 차트 필요한 곳 -->



			<!-- 요청 처리 현황  -->
			<!--  리뷰 관리 -->
			
			
			<div class="row">
				<div class="col-12 col-md-1"></div>
				   <div class="col-12 col-md-10">
					<section id="groups">
					        <div class="row match-height">
					                <div class="card-group">
					                	<div class="col-12 col-md-6"> <!-- 카드 안의 전체 크기조절 -->
						                    <div class="card"  style="width:95%; height:200px;" >
						                        <div class="card-content">
						                            <div class="card-body">
						                            	<div class="row">
						                            		<div class="col-12 col-md-6"  style="width:150px;  padding-left:10px;padding-right:0px;"> <!--  요청처리현황 제목 부분 크기조절 -->
						                            			<a href="<c:url value='/owner/menu2/temporary/tempList.do'/>">
							                                		<h4 class="card-title">요청 처리 현황</h4>
							                                	</a>
							                               	</div>
							                                <div class="col-12 col-md-1" style="padding:0px;">
								                                <a href="<c:url value='/owner/menu2/temporary/tempList.do'/>">
									                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-compact-right" viewBox="0 0 16 16">
					  														<path fill-rule="evenodd" d="M6.776 1.553a.5.5 0 0 1 .671.223l3 6a.5.5 0 0 1 0 .448l-3 6a.5.5 0 1 1-.894-.448L9.44 8 6.553 2.224a.5.5 0 0 1 .223-.671z"/>
																	</svg>
																</a>
															</div>
															<div class="col-12 col-md-5" style="color:gray; text-align: right;"><small>최근 1개월</small></div> <!--  요청처리현황 제목 부분 크기조절  끝-->
														</div>
						                                <p class="card-text">
						                                
						                                
						                                	<br>
								                         	<div class="row">
								                        		<!-- 대기 , 취소, 반려, 승인 크기 조절 -->
								                         		
								                         		<div class="col-12 col-md-3" style="text-align: center;">
								                         			<button class="btn" value="대기" 
								                         					style="width:40px; height:25px; font-size:3px; padding:0px; background-color:rgb(223,108,220); color:white; border: none;">대기</button>
								                         		</div>
								                         		<div class="col-12 col-md-3" style="text-align: center;">
								                         			<button class="btn btn-success" value="취소" 
								                         					style="width:40px; height:25px; font-size:3px; padding:0px; border: none;">취소</button>
								                         		</div>
								                         		<div class="col-12 col-md-3" style="text-align: center;">
								                         			<button class="btn btn-danger" value="반려" 
								                         					style="width:40px; height:25px; font-size:3px; padding:0px; border: none;">반려</button>
								                         		</div>
								                         		<div class="col-12 col-md-3" style="text-align: center;">
								                         			<button class="btn btn-primary" value="승인" 
								                         					style="width:40px; height:25px; font-size:3px; padding:0px; border: none;">승인</button>
								                         		</div>
								                         		
								                        
								                        		<!-- 버튼에 따른 숫자 보여주기 -->
								                    
								                         		<div class="col-12 col-md-3" style="text-align: center;">
								                         			<span style="font-size:25px">0</span><small>건</small>
								                         		</div>
								                         		<div class="col-12 col-md-3" style="text-align: center;">
								                         			<span style="font-size:25px">0</span><small>건</small>
								                         		</div>
								                         		<div class="col-12 col-md-3" style="text-align: center;">
								                         			<span style="font-size:25px">0</span><small>건</small>
								                         		</div>
								                         		<div class="col-12 col-md-3" style="text-align: center;">
								                         			<span style="font-size:25px">0</span><small>건</small>
								                         		</div>
								               
								                        
								                         	</div>
						                          
						                            </div>
						                        </div>
						                    </div>
						                </div>
										<!-- 카드 내의 크기 조절 -->
						                <div class="col-12 col-md-6">
					                    <div class="card" style="width:95%; margin-left:20px; height:200px;">
					                        <div class="card-content">
					                            <div class="card-body">
					                                <div class="row">
						                            		<div class="col-12 col-md-4" style="padding-left:10px;padding-right:0px;"><!-- 제목 부분만 -->
						                            			<a href="<c:url value='/owner/menu2/reviewOwner/reviewOwner.do'/>">
							                                		<h4 class="card-title">리뷰 관리</h4>
							                                	</a>
							                               	</div>
							                                <div class="col-12 col-md-1" style="padding:0px;">
								                                <a href="<c:url value='/owner/menu2/reviewOwner/reviewOwner.do'/>">
									                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-compact-right" viewBox="0 0 16 16">
					  														<path fill-rule="evenodd" d="M6.776 1.553a.5.5 0 0 1 .671.223l3 6a.5.5 0 0 1 0 .448l-3 6a.5.5 0 1 1-.894-.448L9.44 8 6.553 2.224a.5.5 0 0 1 .223-.671z"/>
																	</svg>
																</a>
															</div>
															<div class="col-12 col-md-6" style="color:gray; text-align: right;">디플렉스점</div>
														</div>
					                                <p class="card-text">
					                                	<br>
					                                	<!-- 리뷰 내용 시작 -->
					                                			<!-- 버튼 보여주기 -->
					                                			<div class="row">
						                                			<div class="col-12 col-md-4" style="text-align: center;">
									                         			<button class="btn btn-warning" value="전체" 
									                         					style="width:40px; height:25px; font-size:3px; padding:0px; border: none;" >전체</button>
									                         		</div>
									                         		<div class="col-12 col-md-4" style="text-align: center;">
									                         			<button class="btn btn-success" value="미답변" 
									                         					style="width:40px; height:25px; font-size:3px; padding:0px; background-color:rgb(223,108,220); color:white; border: none;">미답변</button>
									                         		</div>
									                         		<div class="col-12 col-md-4" style="text-align: center;">
									                         			<button class="btn btn-danger" value="차단" 
									                         					style="width:40px; height:25px; font-size:3px; padding:0px; border: none;">차단</button>
									                         		</div>
									                         	
									                         		
									                        
									                        		<!-- 버튼에 따른 숫자 보여주기 -->
									                    
									                         		<div class="col-12 col-md-4" style="text-align: center;">
									                         			<span style="font-size:25px">0</span><small>건</small>
									                         		</div>
									                         		<div class="col-12 col-md-4" style="text-align: center;">
									                         			<span style="font-size:25px">0</span><small>건</small>
									                         		</div>
									                         		<div class="col-12 col-md-4" style="text-align: center;">
									                         			<span style="font-size:25px">0</span><small>건</small>
									                         		</div>
								                         		</div>
					                          			  </div>
					                        		</div>
							                    </div>
							                    </div>
					                		</div>
					           			 </div>
    							</section>
    		      			  </div>
    		        		 <div class="col-12 col-md-1"></div>
    		     		</div>
</div>

<!-- 


				<div class="row">
				 	<div class="col-12 col-md-1" ></div>
		            <div class="col-12 col-md-4" >
		                <div class="card">
		                    <div class="card-header">
		                        <h3 class="card-heading p-1 pl-3">월 별 주문 현황</h3>
		                    </div>
		                    <div class="card-body">
		                        <div class="row">
		                            <div class="col-md-4 col-12">
		                            
		                            </div>
		                            <div class="col-md-8 col-12"><div class="chartjs-size-monitor"><div class="chartjs-size-monitor-expand"><div class=""></div></div><div class="chartjs-size-monitor-shrink"><div class=""></div></div></div>
		                                <canvas id="bar" style="display: block; height: 187px; width: 375px;" width="562" height="280" class="chartjs-render-monitor"></canvas>
		                            </div>
		                        </div>
		                    </div>
		                </div>
		                
		            </div>
		              <div class="col-12 col-md-4" ></div>
		             <div class="col-12 col-md-1" ></div>
-->

<%@include file="../../ownerInc/jianSidebarBottom.jsp"%>
