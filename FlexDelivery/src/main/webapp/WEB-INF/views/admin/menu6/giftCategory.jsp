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
					<h4 class="card-title">선물하기 - 카테고리</h4>
					<hr>
				</div>
				<div class="card-body" style="text-align: right;">
					<!-- 등록모달 호출하는 등록버튼 -->
					<button type="button" class="btn btn-dark round block" id="modalWriteBt"
					   data-toggle="modal" data-backdrop="false" data-target="#giftProductWrite" >
					     등록
					</button>
					<p></p>						
					<!-- #giftProductWrite 모달 start -->
					<div class="modal fade text-left" id="giftProductWrite" tabindex="-1" 
                        role="dialog" aria-labelledby="선물하기  상품등록" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" role="document">
                           <div class="modal-content">
								<form name="frmGiftProductWrite" method="post" action="<c:url value='/admin/menu6/giftProduct/write.do' />">
                                	<div class="modal-header">
	                                    <h4 class="modal-title">선물하기 - 카테고리 등록</h4>
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
	                                                   	  <input type="hidden" name="gCategoryNo" value="123" readonly>
	                                                   	  <td>카테고리 이름</td>
	                                                      <td colspan="2"  style="text-align: center;">
	                                                      	  <input type="text" name="gCategoryName">
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
								</form><!-- frmGiftCategoryWrite등록 폼 모달 -->
							</div>
						</div>
					</div>
				</div><!-- card-body  -->
				<!-- #giftCategoryWrite 모달 end -->
				<div class="card-body">
				<div class="card-content">			
					<table class="table table-hover mb-0" style="text-align: center;">
						<thead>
							<tr>
								<th>번호</th>
								<th colspan="3">이름</th>
								<th>등록 메뉴 수</th>
								<th>비고</th>
							</tr>
						</thead>
						<tbody>
							<c:if test="${empty list }">
								<tr>
									<td colspan="6">등록된 데이터가 없습니다.</td>
								</tr>
							</c:if>
							<c:if test="${!empty list }">
								<c:forEach var="vo" items="${list}" varStatus="status">
									<tr>
										<td class="text-bold-500">${vo.gCategoryNo }</td>
										<td colspan="3">${vo.gCategoryName }</td>
										<td>${vo.cCount }</td>
										<td>
											<button type="button" class="btn btn-primary round btEdit" id="modalEditBt${vo.gCategoryNo}"
		                                       data-toggle="modal" data-backdrop="false" data-target="#giftCategoryEdit${vo.gCategoryNo}">
		                                       	수정</button>					                                       
	                                        <button type="button" class="round btn btn-danger" data-toggle="modal" data-backdrop="false" 
	                                          data-target="#giftCategoryDelete${vo.gCategoryNo}" id="modalDeleteBt${vo.gCategoryNo}">
	                                          	삭제</button>
	                                          	
                                       		<!-- #giftCategoryDelete 삭제 모달 -->
	                                       <div class="modal fade text-left" id="giftCategoryDelete${vo.gCategoryNo}" tabindex="-1" role="dialog"
	                                          aria-labelledby="선물 카테고리 삭제" aria-hidden="true">
	                                          <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" role="document">
	                                             <div class="modal-content">
	                                                <form name="frmGiftCategoryDel" id="frmGiftCategoryDel" method="post" action="<c:url value='/admin/menu6/giftCategory/delete.do' />">
	                                                   <div class="modal-header bg-danger">
	                                                      <h5 class="modal-title white" id="myModalLabel140">선물 카테고리 삭제</h5>
	                                                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	                                                          <i data-feather="x"></i>
	                                                      </button>
	                                                   </div>
	                                                   <div class="modal-body">
	                                                      <input type="hidden" name="gCategoryNo" value="${vo.gCategoryNo }">
	                                                      <input type="hidden" name="gCategoryName" value="${vo.gCategoryName }">
	                                                      	[<span style="font-weight: bolder;">${vo.gCategoryName }</span>] 카테고리를 삭제하시겠습니까?
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
	                                       </div> <!-- #giftCategoryDelete 삭제 모달 end-->
	                                       
	                                       <!-- #giftCategoryEdit 수정 모달 -->
	                                       <div class="modal fade text-left" id="giftCategoryEdit${vo.gCategoryNo}" tabindex="-1" 
	                                          role="dialog" aria-labelledby="선물 카테고리 수정" aria-hidden="true">
	                                          <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" role="document">
	                                             <div class="modal-content">
	                                    			<form name="frmGiftCategoryEdit" method="post" action="<c:url value='/admin/menu6/giftCategory/edit.do' />">
	                                                   <div class="modal-header">
	                                                      <h4 class="modal-title" id="myModalgiftCategoryEdit">선물하기 - 카테고리 수정</h4>
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
	                                                                         <input type="hidden" name="gCategoryNo" id="giftCategoryNo" value="${vo.gCategoryNo }" readonly>						                                                                     
		                                                                     <td>카테고리 이름</td>
																			 <td colspan="2">
	                                                                           <input type="text" name="gCategoryName" id="giftCategoryName" value="${vo.gCategoryName }">
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
	                                       </div> <!-- #giftCategoryEdit 수정 모달 -->
										</td>
									</tr>
								</c:forEach>
							</c:if>	
						</tbody>
					</table>
				</div> <!--card content-->  
				</div>
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