<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../../adminInc/top.jsp" %>    

<!-- css start -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/bootstrap.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/simple-datatables/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/app.css">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/ownerResources/assets/images/favicon.svg" type="image/x-icon">
<!-- css end -->

<div class="container">
	<div class="row">
		<div class="col-12">
		
			<div class="card">
				<div class="card-header">
					<h4 class="card-title">선물하기 - 금액 카테고리</h4>
				</div>
				<div class="card-body" style="text-align: right;">
					<!-- 등록모달 호출하는 등록버튼 -->
					<button type="button" class="btn btn-dark round block" id="modalWriteBt"
					   data-toggle="modal" data-backdrop="false" data-target="#giftPriceWrite" >
					     등록
					</button>						
					<!-- #giftPriceWrite 모달 start -->
					<div class="modal fade text-left" id="giftPriceWrite" tabindex="-1" 
                        role="dialog" aria-labelledby="선물하기 금액권 카테고리 등록" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" role="document">
                           <div class="modal-content">
								<form name="frmGiftPriceWrite" method="post" action="<c:url value='/admin/menu6/giftPrice/write.do' />">
                                	<div class="modal-header">
	                                    <h4 class="modal-title" id="gpWrite">선물하기 - 금액 등록</h4>
	                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	                                       <i data-feather="x"></i>
	                                    </button>
	                                </div>
	                                <div class="modal-body">                                 
	                                    <div class="row">
	                                       <div class="col-12">   
	                                          <div class="table-responsive" style="text-align: center;">
	                                             <table class="table mb-0">
													<thead>
														<tr>
															<th>번호</th>
															<th colspan="3">금액</th>
														</tr>
													</thead>
	                                                <tbody>
	                                                   <tr>
	                                                   	  <td>
	                                                   	  	  <input type="text" name="gPTypeNo" value="123" readonly>
	                                                   	  </td>
	                                                      <td colspan="3"  style="text-align: center;">
	                                                      	  <input type="text" name="gPTypePrice">
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
								</form><!-- frmGiftPriceWrite등록 폼 모달 -->
							</div>
						</div>
					</div>
				</div><!-- card-body  -->
				<!-- #giftPriceWrite 모달 end -->
				<div class="card-content">			
					<table class="table table-hover mb-0" style="text-align: center;">
						<thead>
							<tr>
								<th>번호</th>
								<th colspan="3">금액</th>
								<th>비고</th>
							</tr>
						</thead>
						<tbody>
							<c:if test="${empty list }">
								<tr>
									<td colspan="5">등록된 데이터가 없습니다.</td>
								</tr>
							</c:if>
							<c:if test="${!empty list }">
								<c:forEach var="vo" items="${list}" varStatus="status">
									<tr>
										<td class="text-bold-500">${vo.gPTypeNo }</td>
										<td colspan="3">${vo.gPTypePrice } 원</td>
										<td>
											<button type="button" class="btn btn-primary round btEdit" id="modalEditBt${vo.gPTypeNo}"
		                                       data-toggle="modal" data-backdrop="false" data-target="#giftPriceEdit${vo.gPTypeNo}">
		                                       	수정</button>					                                       
	                                        <button type="button" class="round btn btn-danger" data-toggle="modal" data-backdrop="false" 
	                                          data-target="#giftPriceDelete${vo.gPTypeNo}" id="modalDeleteBt${vo.gPTypeNo}">
	                                          	삭제</button>
	                                          	
                                       		<!-- #giftPricerDelete 삭제 모달 -->
	                                       <div class="modal fade text-left" id="giftPriceDelete${vo.gPTypeNo}" tabindex="-1" role="dialog"
	                                          aria-labelledby="금액 카테고리 삭제" aria-hidden="true">
	                                          <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" role="document">
	                                             <div class="modal-content">
	                                                <form name="frmGiftPriceDel" id="frmGifrPriceDel" method="post" action="<c:url value='/admin/menu6/giftPrice/delete.do' />">
	                                                   <div class="modal-header bg-danger">
	                                                      <h5 class="modal-title white" id="myModalLabel140">금액 카테고리 삭제</h5>
	                                                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	                                                          <i data-feather="x"></i>
	                                                      </button>
	                                                   </div>
	                                                   <div class="modal-body">
	                                                      <input type="hidden" name="gPTypeNo" value="${vo.gPTypeNo }">
	                                                      <input type="hidden" name="gPTypePrice" value="${vo.gPTypePrice }">
	                                                      	금액 카테고리 [<span style="font-weight: bolder;">${vo.gPTypePrice }</span>] 원권을 삭제하시겠습니까?
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
	                                       
	                                       <!-- #giftPriceEdit 수정 모달 -->
	                                       <div class="modal fade text-left" id="giftPriceEdit${vo.gPTypeNo}" tabindex="-1" 
	                                          role="dialog" aria-labelledby="금액 카테고리 수정" aria-hidden="true">
	                                          <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" role="document">
	                                             <div class="modal-content">
	                                    			<form name="frmGiftPriceEdit" method="post" action="<c:url value='/admin/menu6/giftPrice/edit.do' />">
	                                                   <div class="modal-header">
	                                                      <h4 class="modal-title" id="myModalgiftPriceEdit">선물하기 - 금액권 수정</h4>
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
		                                                                     <td class="text-bold-500">
	                                                                           <input type="text" name="gPTypeNo" id="giftPRiceTypeNo" value="${vo.gPTypeNo }" readonly>						                                                                     
		                                                                     </td>
																			 <td colspan="3">
	                                                                           <input type="text" name="gPTypePrice" id="giftPriceTypePrice" value="${vo.gPTypePrice }">
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
	                                       </div> <!-- #giftPriceEdit 수정 모달 -->
										</td>
									</tr>
								</c:forEach>
							</c:if>	
						</tbody>
					</table>
				</div> <!--card content-->  
			</div><!-- card-->
		</div><!--col-12 end-->
	</div>
</div>

<!-- script start -->
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/feather-icons/feather.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/app.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/simple-datatables/simple-datatables.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/vendors.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/main.js"></script>
<!-- script end -->
    
<%@include file="../../adminInc/bottom.jsp" %>    