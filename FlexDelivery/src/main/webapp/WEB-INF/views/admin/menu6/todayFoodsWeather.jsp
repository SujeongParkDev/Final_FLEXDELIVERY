<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../../adminInc/top.jsp" %>    
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	
<!-- css start -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/bootstrap.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/simple-datatables/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/app.css">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/ownerResources/assets/images/favicon.svg" type="image/x-icon">
<!-- css end -->

<div class="container">
	<div class="row">
		<!-- Hoverable rows start -->
		<div class="row" id="table-hover-row">
			<div class="col-12">
				<div class="card">
					<div class="card-header">
						<h4 class="card-title">오늘 뭐 먹지? - 날씨별 추천</h4>
						<hr>
					</div>
					<div class="card-content">
						<div class="card-body" style="text-align: right;">
							<!-- 등록모달 호출하는 등록버튼 -->
							<button type="button" class="btn btn-dark round block" id="modalWriteBt"
							   data-toggle="modal" data-backdrop="false" data-target="#weatherWrite" >
							     등록
							</button>						
								<!-- #weatherWrite 모달 start -->
								<div class="modal fade text-left" id="weatherWrite" tabindex="-1" 
			                        role="dialog" aria-labelledby="날씨 카테고리 등록" aria-hidden="true">
			                        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" role="document">
			                           <div class="modal-content">
											<form name="frmWeatherWrite" method="post" action="<c:url value='/admin/menu6/todayFoodsWeather.do' />">
			                                	<div class="modal-header">
				                                    <h4 class="modal-title" id="largeWrite">오늘 뭐 먹지 - 날씨 등록</h4>
				                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				                                       <i data-feather="x"></i>
				                                    </button>
				                                </div>
			                                <div class="modal-body">                                 
			                                    <div class="row">
			                                       <div class="col-12">   
			                                          <div class="table-responsive" style="text-align: center;">
			                                             <table class="table mb-0">
															<!-- <thead>
																<tr>
																	<th>번호</th>
																	<th colspan="3">이름</th>
																</tr>
															</thead> -->
			                                                <tbody>
			                                                   <tr>
			                                                   	  <input type="hidden" name="weatherNo" value="123" readonly>
			                                                   	  	  <%-- <fmt:formatNumber value="12345.678" pattern="#,###"/> --%>
			                                                   	  
			                                                   	  <td>날씨 이름</td>
			                                                      <td colspan="2"  style="text-align: center;">
			                                                      	  <input type="text" name="weatherName">
			                                                         <!-- <div>
			                                                            <input type="file" id="upfile" name="upfile" class="btn btn-outline-light" accept=".gif, .jpg, .png" />             
			                                                         </div> -->
			                                                      </td>
			                                                   </tr>
			                                                </tbody>
			                                             </table>                      
			                                          </div>
			                                       </div>
			                                    </div>        
			                                 </div>
			                                 <div class="modal-footer">
			                                    <button type="button" class="btn btn-outline-dark" data-dismiss="modal">
			                                       <i class="bx bx-x d-block d-sm-none"></i>
			                                       <span class="d-none d-sm-block">닫기</span>
			                                    </button>
			                                    <button type="button" class="btn btn-dark ml-1" data-dismiss="modal" name="modalWrite" id="modalWrite" onclick="form.submit()">
			                                       <i class="bx bx-check d-block d-sm-none"></i>
			                                       <span class="d-none d-sm-block">등록</span>
			                                    </button>
			                                 </div>
			                              </form><!-- frmWeatherWrite등록 폼 모달 -->
			                           </div>
			                        </div>
			                     </div>
			                  </div><!-- card-body  -->
								<!-- #weatherWrite 모달 end -->

						<!--</div><!--card  content-->
							<div class="card-body">
							<c:if test="${empty list }">
			                     <div class="row">
			                        <div class="col-12">
			                           <!-- <div class="card text-center bg-lighten-2">
			                              <div class="card-content d-flex">
			                                 <div class="card-body">
			                                    <h2 class="card-title white">등록된 날씨 카테고리가 없습니다.</h2>
			                                    <br><br><br>
			                                 </div>
			                              </div>
			                           </div> -->
			                           <div class="table-responsive">
											<table class="table table-hover mb-0" style="text-align: center;">
												<thead>
													<tr>
														<th>번호</th>
														<th colspan="3">날씨</th>
														<th>등록 메뉴 수 </th>
														<th>비고</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td colspan="6">등록된 날씨 카테고리가 없습니다.</td>
													</tr>
												</tbody>
											</table>
										</div>
			                        </div>
			                     </div>
		                 	 </c:if> 		
		                 	 <c:if test="${!empty list }">
		                 	 	<div class="row">	                 
									<div class="table-responsive">
										<table class="table table-hover mb-0" style="text-align: center;">
											<thead>
												<tr>
													<th>번호</th>
													<th colspan="3">날씨</th>
													<th>등록 메뉴 수 </th>
													<th>비고</th>
												</tr>
											</thead>
											<c:forEach var="vo" items="${list}" varStatus="status">
											
												<tbody>
													<tr>
														<td class="text-bold-500">${vo.weatherNo }</td>
														<td colspan="3">${vo.weatherName }</td>
														
														<td><span class="badge bg-warning">${vo.wCount }</span></td>
														<td>
															<button type="button" class="btn btn-primary round btEdit" id="modalEditBt${vo.weatherNo}"
						                                       data-toggle="modal" data-backdrop="false" data-target="#weatherEdit${vo.weatherNo}">
						                                       	수정</button>					                                       
					                                        <button type="button" class="round btn btn-danger" data-toggle="modal" data-backdrop="false" 
					                                          data-target="#weatherDelete${vo.weatherNo}" id="modalDeleteBt${vo.weatherNo}">
					                                          	삭제</button>
														
															<!-- #weatherDelete 삭제 모달 -->
					                                       <div class="modal fade text-left" id="weatherDelete${vo.weatherNo}" tabindex="-1" role="dialog"
					                                          aria-labelledby="날씨 카테고리 삭제" aria-hidden="true">
					                                          <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" role="document">
					                                             <div class="modal-content">
					                                                <form name="frmWeatherDel" id="frmWeatherDel" method="post" action="<c:url value='/admin/menu6/todayFoodsWeather/delete.do' />">
					                                                   <div class="modal-header bg-danger">
					                                                      <h5 class="modal-title white" id="myModalLabel140">날씨 카테고리 삭제</h5>
					                                                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
					                                                          <i data-feather="x"></i>
					                                                      </button>
					                                                   </div>
					                                                   <div class="modal-body">
					                                                      <input type="hidden" name="weatherNo" value="${vo.weatherNo }">
					                                                      <input type="hidden" name="weatherName" value="${vo.weatherName }">
					                                                      	날씨 카테고리 [<span style="font-weight: bolder;">${vo.weatherName }</span>] 를 삭제하시겠습니까?
					                                                   </div>
					                                                   <div class="modal-footer">
					                                                      <button type="button" class="btn btn-light-secondary" data-dismiss="modal" id="modalDelCancel">
					                                                         <i class="bx bx-x d-block d-sm-none"></i>
					                                                         <span class="d-none d-sm-block">취소</span>
					                                                      </button>
					                                                      
					                                                      <button type="button" class="btn btn-danger ml-1" data-dismiss="modal" id="modalDel" onclick="form.submit()">
					                                                         <i class="bx bx-check d-block d-sm-none"></i>
					                                                         <span class="d-none d-sm-block">삭제</span>
					                                                      </button>
					                                                   </div>
					                                                </form>
					                                             </div>
					                                          </div>
					                                       </div> <!-- #weatherDelete 삭제 모달 end-->
					                                       
					                                       <!-- #weatherEdit 수정 모달 -->
					                                       <div class="modal fade text-left" id="weatherEdit${vo.weatherNo}" tabindex="-1" 
					                                          role="dialog" aria-labelledby="날씨 카테고리 수정" aria-hidden="true">
					                                          <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" role="document">
					                                             <div class="modal-content">
					                                    			<form name="frmWeatherEdit" method="post" action="<c:url value='/admin/menu6/todayFoodsWeather/edit.do' />">
					                                                   <div class="modal-header">
					                                                      <h4 class="modal-title" id="myModalWeatherEdit">오늘 뭐 먹지 - 날씨 카테고리 수정</h4>
					                                                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
					                                                         <i data-feather="x"></i>
					                                                      </button>
					                                                   </div>
					                                                   <div class="modal-body">
					                                                   <!-- Hoverable rows start -->
					                                                      <div class="row" id="table-hover-row">
					                                                         <div class="col-12">   
					                                                            <div class="table-responsive" style="text-align: center;">
					                                                               <table class="table mb-0">
					                                                                  <tbody>
					                                                                     <tr>
						                                                                    
				                                                                           <input type="hidden" name="weatherNo" id="EditWeatherNo" value="${vo.weatherNo }" readonly>						                                                                     
						                                                                     <td>날씨 이름</td>
																							 <td colspan="2">
					                                                                           <input type="text" name="weatherName" id="EditWeatherName" value="${vo.weatherName }">
																							 </td>					                                                                    
					                                                                     </tr>					                                                                    
					                                                                  </tbody>
					                                                               </table>                      
					                                                            </div>
					                                                         </div>
					                                                      </div>
					                                                   </div><!--modal body end-->
					                                                   <div class="modal-footer">
					                                                      <button type="button" class="btn btn-outline-dark" data-dismiss="modal">
					                                                         <i class="bx bx-x d-block d-sm-none"></i>
					                                                         <span class="d-none d-sm-block">닫기</span>
					                                                      </button>
					                                                      <button type="button" class="btn btn-dark ml-1" data-dismiss="modal" name="modalEdit" id="modalEdit" onclick="form.submit()">
					                                                         <i class="bx bx-check d-block d-sm-none"></i>
					                                                         <span class="d-none d-sm-block">수정</span>
					                                                      </button>
					                                                   </div>
					                                                </form>
					                                             </div>
					                                          </div>
					                                       </div> <!-- #weatherEdit 수정 모달 -->
														</td>
													</tr>
												</tbody>
											</c:forEach>
										</table>
									</div> <!--table responsive end-->
								</div><!-- row -->
							</c:if>
						</div>
					</div><!--card content end-->
				</div><!--card end-->
			</div> <!-- col-12 -->
		</div><!-- Hoverable rows end -->
	</div><!-- outer row -->
</div><!-- container -->


<!-- script start -->
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/feather-icons/feather.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/app.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/simple-datatables/simple-datatables.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/vendors.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/main.js"></script>

<!-- script end -->

<%@include file="../../adminInc/bottom.jsp" %>    
    