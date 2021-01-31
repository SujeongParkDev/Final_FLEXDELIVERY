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
	                <h3 class="section-title text-uppercase">자주 묻는 질문</h3>
	                <p class="text-subtitle text-muted">플렉스 딜리버리에 궁금한 점이 있으신가요?</p>
	                <hr>
                </div>
                
                <div class="card-content">
                	<div class="card-body">
	                	<!-- 등록모달 호출하는 등록버튼 -->
						<button type="button" class="btn btn-dark" id="modalWriteBt"
						   data-toggle="modal" data-backdrop="false" data-target="#faqCategoryWrite" >
						     카테고리 등록
						</button>						
                	</div>
                	
								<!-- #faqWrite 모달 start -->
								<div class="modal fade text-left" id="faqCategoryWrite" tabindex="-1" 
			                        role="dialog" aria-labelledby="FAQ 카테고리 등록" aria-hidden="true">
			                        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" role="document">
			                           <div class="modal-content">
											<form name="frmFAQCategoryWrite" method="post" action="<c:url value='/admin/menu5/faq/category/write.do' />">
			                                	<div class="modal-header">
				                                    <h4 class="modal-title" id="faqWrite">자주 하는 질문 - 카테고리 등록</h4>
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
			                                                   	  	<td>카테고리 이름</td>
				                                                      <td colspan="2"  style="text-align: center;">
				                                                      	<input type="text" name="fCategoryName">
				                                                      	<input type="hidden" name="fCategoryNo" value="1">
				                                                      	<input type="hidden" name="authorityNo" value="6">
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
				                                    <button type="button" class="btn btn-dark ml-1" data-dismiss="modal" name="modalWrite"
				                                     id="modalWrite" onclick="form.submit()">
				                                       <i class="bx bx-check d-block d-sm-none"></i>
				                                       <span class="d-none d-sm-block">등록</span>
				                                    </button>
				                                 </div>
			                              	</form><!-- frmFaqCategoryWrite등록 폼 모달 -->
			                            </div>
			                         </div>
			                     </div>            
								<!-- #faqCategoryWrite 모달 end -->
								
					<!-- 태그 목록 start -->
			        <div class="sidebar-widget-area">
			            <div class="widget-content">
			                <ul class="tags">
			                    <li><a href="#">주문</a></li>
			                    <li><a href="#">결제</a></li>
			                    <li><a href="#">로그인</a></li>
			                    <li><a href="#">광고</a></li>
			                    <li><a href="#">매출 관리</a></li>
			                    <li><a href="#">입점</a></li>
			                    <li><a href="#">기타</a></li>
			                </ul>
			                <span class="badge bg-transparent">4</span>
			            </div>
			        </div>
			        <!-- 태그 목록 end -->
					<div class="accordion" id="accordionExample">
					  <div class="card">
					    <div class="card-header" id="headingOne">
					      <h2 class="mb-0">
					        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
					          Q. 배달이 시작되면 점포 측에서 직접 배달시작 버튼을 눌러야 하는 건가요?
					        </button>
					      </h2>
					    </div>
					
					    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
					      <div class="card-body">
					      	  네, 직접 눌러주셔야 합니다. 배달시작 버튼을 누른 후에 배달 완료 버튼을 누를 수 있으며, 배달 시작 버튼을 눌렀을 때 현재 주문 상태가 '조리중'에서 '배달중'으로 바뀌게 됩니다. 
					      	  이렇게 바뀐 정보는 점포의 주문 내역에 반영되어 노출되며, 고객님의 주문 내역에 반영되어 주문한 음식이 현재 어떤 상태인지를 알립니다. 모쪼록 바쁘신 와중에도 정확한 정보 전달을 위해 빠짐없이 버튼을 눌러주시길 부탁드립니다. 
					      </div>
					    </div>
					  </div>
					  <div class="card">
					    <div class="card-header" id="headingTwo">
					      <h2 class="mb-0">
					        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
					          Q. 주문 상태가 조리중일 때 고객이 주문취소 요청을 할 수 있나요?
					        </button>
					      </h2>
					    </div>
					    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
					      <div class="card-body">
					      	플렉스 딜리버리 측에서는 '배달중' 상태가 되기 전까지 주문취소가 가능합니다. '주문접수' 상태일 때는 고객과 점포 측에, '조리중' 일 때에는 점포 측에 주문취소 권한이 있습니다.
					      	
			 		      </div>
					    </div>
					  </div>
					  <div class="card">
					    <div class="card-header" id="headingThree">
					      <h2 class="mb-0">
					        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
					          Q. 유료광고 가입 취소는 어떻게 하나요? 
					        </button>
					      </h2>
					    </div>
					  </div>
					</div>
				</div><!-- card-content -->
				
			</div><!-- card -->
		</div>
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