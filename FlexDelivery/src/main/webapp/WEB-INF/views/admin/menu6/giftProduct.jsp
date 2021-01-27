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
		<div class="col-12 ">
            <div class="card">
                <div class="card-header">
	                <h4 class="section-title text-uppercase">선물하기 - 상품 목록</h4>
                </div>
                <div class="card-body" style="text-align: right;">
                     <!-- 등록모달 호출하는 등록버튼 -->
					<button type="button" class="btn btn-dark round block" id="modalWriteBt"
					   data-toggle="modal" data-backdrop="false" data-target="#giftProductWrite" >
					     등록
					</button>						
					<!-- #giftProductWrite 모달 start -->
					<div class="modal fade text-left" id="giftProductWrite" tabindex="-1" 
                        role="dialog" aria-labelledby="선물 상품 등록" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" role="document">
                           <div class="modal-content">
								<form name="frmGiftProductWrite" method="post" action="<c:url value='/admin/menu6/giftProduct/write.do' />">
                                	<div class="modal-header">
	                                    <h4 class="modal-title">선물 - 상품 등록</h4>
	                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	                                       <i data-feather="x"></i>
	                                    </button>
	                                </div>
                                	<div class="modal-body">                                 
	                                    <div class="row">
	                                       <div class="col-12">   
	                                          <div class="table-responsive" style="text-align: center;">
	                                             <table class="table mb-0">
													<tbody>
														<tr>
	                                                      <td colspan="3"  style="text-align: center;">
	                                                         <div id="preview"><img src="#" id="previewImg"/></div>
	                                                      </td>
														</tr>
														<tr>
	                                                      <td colspan="3"  style="text-align: center;">
	                                                         <div>
	                                                            <input type="file" id="upfile" name="upfile" class="btn btn-outline-light" accept=".gif, .jpg, .png" />             
	                                                         </div>
	                                                      </td>
	                                                   </tr>
														<tr>
															<td colspan="1">선물 카테고리</td>
															<td colspan="2">
																<select name="gCategoryNo">
																	<option value="0">선택하세요</option>
																	<c:forEach var="cVo" items="${cList }">
																		<option value="${cVo.gCategoryNo }">${cVo.gCategoryName }</option>
																	</c:forEach>
																</select>
															</td>
														</tr>
														<tr>
															<td colspan="1">상품 이름</td>
															<td colspan="2"><input type="text" name="gProductName"></td>
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
                              	</form><!-- frmGiftProductWrite등록 폼 모달 -->
                            </div>
                         </div>
                     </div>            
					<!-- #giftProductWrite 모달 end -->
                </div>
                <div class="card-body">
					<section id="groups">
				        <div class="row match-height">
				            <div class="col-12 mt-3 mb-1">
				            	<p class="section-title text-uppercase">카테고리 목록</p>
				            </div>
				            <div class="buttons">   
	                        	<a href="#" class="btn btn-outline-dark">전체보기</a>
				            	<c:forEach var="cVo" items="${cList }">
		                        	<a href="#" class="btn btn-outline-dark">${cVo.gCategoryName }</a>
				            	</c:forEach>                   
			               </div>
				       </div>
					</section>
					<div class="row match-height">
						<div class="col-12">
							<c:if test="${empty list }">
								<div class="card-content">
									<table class="col-12">
										<thead style="text-align: center;">
											<tr>
												<th><br><br><p>등록된 상품이 없습니다.</p><br><br></th>
											</tr>
										</thead>
									</table>
								</div>
							</c:if>
							<c:if test="${!empty list }">
								<div class="card-group">
									<div class="card">
										<div class="card-content">
											<c:forEach var="vo" items="${list}" varStatus="status">
												<img class="card-img-top img-fluid" src="${pageContext.request.contextPath}/resources/imgs/giftProduct/${vo.gProductFile}"
												 alt="Card image cap">
												<div class="card-body">
													<small class="text-muted">${vo.gCategoryName }</small>
													<span class="badge bg-dark">${vo.gProductNo }</span>
													<h4 class="card-title">${vo.gProductName }</h4>
													<small class="text-muted">수정  | 삭제</small>
													<!--수정/삭제 버튼--><!-- btn btn-primary round btEdit  --><!-- round btn btn-danger -->
													<button type="button" class="badge bg-primary" id="modalEditBt${vo.gProductNo}"
				                                       data-toggle="modal" data-backdrop="false" data-target="#giftProductEdit${vo.gProductNo}">
				                                       	수정</button>					                                       
			                                        <button type="button" class="badge bg-danger" data-toggle="modal" data-backdrop="false" 
			                                          data-target="#giftProductDelete${vo.gProductNo}" id="modalDeleteBt${vo.gProductNo}">
			                                          	삭제</button>
												
													<!-- #giftProductDelete 삭제 모달 -->
			                                       <div class="modal fade text-left" id="giftProductDelete${vo.gProductNo}" tabindex="-1" role="dialog"
			                                          aria-labelledby="선물 상품 삭제" aria-hidden="true">
			                                          <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" role="document">
			                                             <div class="modal-content">
			                                                <form name="frmGiftProductDel" id="frmgProductDel" method="post" action="<c:url value='/admin/menu6/giftProduct/delete.do' />">
			                                                   <div class="modal-header bg-danger">
			                                                      <h5 class="modal-title white" id="myModalLabel140">선물 상품 삭제</h5>
			                                                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			                                                          <i data-feather="x"></i>
			                                                      </button>
			                                                   </div>
			                                                   <div class="modal-body">
			                                                      <input type="hidden" name="gProductNo" value="${vo.gProductNo }">
			                                                      <input type="hidden" name="gProductName" value="${vo.gProductName }">
			                                                      <input type="hidden" name="gProductFilename" value="${vo.gProductFilename }">
			                                                      <input type="hidden" name="gCategoryNo" value="${vo.gCategoryNo }">
			                                                      	[<span style="font-weight: bolder;">${vo.gProductName }</span>] 상품을 삭제하시겠습니까?
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
			                                       </div> <!-- #giftProductDelete 삭제 모달 end-->
			                                       
			                                       <!-- #giftProductEdit 수정 모달 -->
			                                       <div class="modal fade text-left" id="giftProductEdit${vo.gProductNo}" tabindex="-1" 
			                                          role="dialog" aria-labelledby="선물 상품 수정" aria-hidden="true">
			                                          <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" role="document">
			                                             <div class="modal-content">
			                                    			<form name="frmGiftProductyEdit" method="post" action="<c:url value='/admin/menu6/giftProduct/edit.do' />">
			                                                   <div class="modal-header">
			                                                      <h4 class="modal-title" id="myModalGiftProductEdit">선물 상품 수정</h4>
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
							                                                      <td colspan="3"  style="text-align: center;">
		                                                                             <input type="hidden" name="gProductNo" value="${vo.gProductNo }" readonly>	 
							                                                         <div id="preview"><img src="#" id="previewImg"/></div>
							                                                      </td>
																				</tr>
																				<tr>
							                                                      <td colspan="3"  style="text-align: center;">
							                                                         <div>
							                                                            <input type="file" id="upfile" name="upfile" class="btn btn-outline-light" accept=".gif, .jpg, .png" />             
							                                                         </div>
							                                                      </td>
							                                                   </tr>
			                                                                   <tr>
																				 <td colspan="1">선물 카테고리</td>
			                                                                	 <td colspan="2">
		                                                                            <select name="gCategoryNo" id="gCategoryNo">
							                                                      		<option value="0">선택하세요</option>
							                                                      		<c:forEach var="cVo" items="${cList }">
																							<option value="${cVo.gCategoryNo}" <c:if test="${cVo.gCategoryNo}==${vo.gCategoryNo }"> selected</c:if>>${cVo.gCategoryName }</option>
																						</c:forEach> 
							                                                      	</select>
																				 </td>					                                                                    
																					 <td colspan="2">
			                                                                           <input type="text" name="mCategoryName" id="EditMCategoryName" value="${vo.mCategoryName }">
																					 </td>					                                                               
																					 <td>
																							
							                                                      	</td>   
			                                                                     </tr>
																				 <tr>
																					 <td colspan="1">상품 이름</td>
																				 	 <td colspan="2"><input type="text" name="gProductName" value="${vo.gProductName }"></td>
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
			                                       </div> <!-- #giftProductEdit 수정 모달 -->
					                                       
												</div>
											</c:forEach>
										</div>
									</div><!--card-->             
								</div><!--card-group-->
							</c:if>
						</div><!--col-12-->
					</div><!--row-match-height-->
				</div><!-- card-body -->
			</div><!-- card -->
		</div><!--col-12-->
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
    