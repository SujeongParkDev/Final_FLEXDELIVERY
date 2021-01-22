<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../../adminInc/top.jsp" %>    
	
<!-- script start -->
<script>
$(function(){
	/* $('#lcategoryWrite').click(function(){
		window.open("<c:url value='/admin/menu6/largecategory/write.do' />", "음식 대분류 등록", "width=460, height=500, scrollbars=0, toolbar=0, menubar=no");
		opener.location.reload();
		self.close();
	}); */
	
	
	/* $('#lcategoryEdit').click(function(){
		window.open("<c:url value='/admin/menu6/largecategory/edit.do' />", "음식 대분류 수정", "width=460, height=500, scrollbars=0, toolbar=0, menubar=no");
		
	}); */

	
	/* 등록이든 닫기든 모달 닫힐 때 무조건 닫힘 */
	/* $('#backdrop').on('hidden.bs.modal', function () {
		 alert("제발");
		 window.parent.location.reload();
	}); */
	
	/* $('#modalWrite').click(function () {
		 //location.href='<c:url value="/admin/menu6/largecategory/write.do"/>'; 
		 $('form[name=frmLCategoryWrite]').submit();
		 alert("등록 성공");
		 window.parent.location.reload();
	}); */

	/* $('#modalDel').click(function () {
		 alert("삭제하였습니다.");
		 window.parent.location.reload();
	}); */
	
	$('#upfile').on('change', function(){
	    readInputFile(this);
	});
	
	/* $('#upfile').on('change', function(){
	     if(input.files && input.files[0]) {
	        var reader = new FileReader();
	        reader.onload = function (e) {
	            $('#preview').html("<img src="+ e.target.result +">");
	        }
	        reader.readAsDataURL(input.files[0]);
	    } 
	    file = $('#upfile').prop("files")[0];
           blobURL = window.URL.createObjectURL(file);
           $('#upfile_preview img').attr('src', blobURL);
           $('#upfile_preview').slideDown(); //업로드한 이미지 미리보기 
           $(this).slideUp(); //파일 양식 감춤
	    
		
	}); */
	
});

/* 	var sel_file;
	    
function readInputFile(e){
	var files=e.target.files;
	var filesArr=Array/prototype.slice.call(files);
	
	filesArr.forEach(function(f){
       	if (!f.type.match("image.*")){
       		alert("확장자는 이미지 확장자만 가능합니다.");
       		return;
       	}
       	
       	sel_file=f;

       	var reader = new FileReader();
        reader.onload = function (e) {
            $('#previewImg').attr("src", e.target.result);
        }
        
        reader.readAsDataURL(f);
		
	});
} */
function readInputFile(input) {
    if(input.files && input.files[0]) {
        var reader = new FileReader();
	    reader.onload = function (e) {
            $('#preview').html("<img src="+ e.target.result +">");
        }
        reader.readAsDataURL(input.files[0]);
    }  
} 
 
/* function edit(){
	$('form[name=frmLCategoryEdit]').submit();
	alert("수정 성공");
	window.parent.location.reload();
} */


</script>
<!-- script end -->
	
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
						<h3 class="card-title">음식메뉴 - 대분류 카테고리 관리</h3>
					</div>
					<div class="card-content">       
						<!-- <button class="btn btn-dark round" id="lcategoryWrite" name="lcategoryWrite">등록(오프너)</button> -->

						<!-- modal start -->
						<div class="card-body" style="text-align: right;">
							<!-- Button trigger for Disabled Backdrop -->
							<button type="button" class="btn btn-dark round block" id="modalWriteBt"
								data-toggle="modal" data-backdrop="false" data-target="#largeWrite" >
	 							등록
							</button>
							<!--Disabled Backdrop Modal -->
							<div class="modal fade text-left" id="largeWrite" tabindex="-1" 
								role="dialog" aria-labelledby="대분류 카테고리 등록" aria-hidden="true">
								<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" role="document">
									<div class="modal-content">
					<!-- 등록폼+등록모달 --><form name="frmLCategoryWrite" method="post" action="<c:url value='/admin/menu6/largeCategory.do' />" enctype="multipart/form-data">
											<div class="modal-header">
												<h4 class="modal-title" id="largeWrite">음식메뉴 - 대분류 카테고리 등록</h4>
												<button type="button" class="close" data-dismiss="modal" aria-label="Close">
													<i data-feather="x"></i>
												</button>
											</div>
											<div class="modal-body">											
												<!-- Hoverable rows start -->
												<div class="row" id="table-hover-row">
													<div class="col-12">   
														<!-- table head dark -->
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
																		<td colspan="1"><span>대분류 이름</span></td>
																		<td colspan="2">
																			<input type="text" name="lCategoryName" id="lCategoryName" placeholder="이름을 입력하세요">
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
										</form><!-- frmLCategoryWrite등록 폼 모달 -->
									</div>
								</div>
							</div>
						</div><!-- card-body  -->
						<!-- modal end -->
                
						<c:if test="${empty list }">
							<div class="row">
								<div class="col-12">
									<div class="card text-center bg-lighten-2">
										<div class="card-content d-flex">
											<div class="card-body">
												<h2 class="card-title white">등록된 대분류 카테고리가 없습니다.</h2>
											</div>
										</div>
									</div>
								</div>
							</div>
						</c:if>                
                		<c:if test="${!empty list }">
							<div class="row">		            
	                			<c:forEach var="vo" items="${list }">
									<div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
										<div class="card text-center bg-lighten-2">
											<div class="card-content d-flex">
												<div class="card-body">
													<img src="<c:url value='/resources/imgs/largeCategory/${vo.lCategoryFilename }' />" alt="${vo.lCategoryFilename }" style="height: 120px" class="mb-1">
													<p class="card-text white">${vo.lCategoryNo }</p>
													<h4 class="card-title white">${vo.lCategoryName }</h4>
													<button type="button" class="btn btn-primary round" id="modalEditBt"
													data-toggle="modal" data-backdrop="false" data-target="#largeEdit">수정</button>
													<!-- <button class="btn btn-danger round white" id="lcategoryDel" name="lcategoryDel">삭제</button> -->
													
													<!-- Button trigger for warning theme modal -->
													<button type="button" class="round btn btn-danger" data-toggle="modal" data-backdrop="false" 
														data-target="#largeDelete" id="modalDeleteBt">
													  	 삭제
													</button>
								
													<!--warning theme Modal -->
													<div class="modal fade text-left" id="largeDelete" tabindex="-1" role="dialog"
														aria-labelledby="대분류 카테고리 삭제" aria-hidden="true">
														<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" role="document">
															<div class="modal-content">
																<form name="frmLCategoryDel" id="frmLCategoryDel" method="post" action="<c:url value='/admin/menu6/largeCategory/delete.do?lCategoryNo=${vo.lCategoryNo }' />">
																	<div class="modal-header bg-danger">
																		<h5 class="modal-title white" id="myModalLabel140">대분류 삭제</h5>
																		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
																		    <i data-feather="x"></i>
																		</button>
																	</div>
																	<div class="modal-body">
																		<input type="hidden" name="lCategoryNo" value="${vo.lCategoryNo }">
																		<input type="hidden" name="lCategoryName" value="${vo.lCategoryName }">
																		<input type="hidden" name="lCategoryFilename" value="${vo.lCategoryFilename }">
																		<input type="hidden" name="oldFileName" value="${vo.lCategoryFilename }">
																		대분류 카테고리 [<span style="font-weight: bolder;">${vo.lCategoryName }</span>] 를 삭제하시겠습니까?
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
													</div> <!-- warning theme Modal -->
													
													<div class="modal fade text-left" id="largeEdit" tabindex="-1" 
														role="dialog" aria-labelledby="대분류 카테고리 수정" aria-hidden="true">
														<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" role="document">
															<div class="modal-content">
												<!-- 수정 모달  --><form name="frmLCategoryEdit" method="post" action="<c:url value='/admin/menu6/largeCategory/edit.do?lCategoryNo=${vo.lCategoryNo }' />" enctype="multipart/form-data">
																	<div class="modal-header">
																		<h4 class="modal-title" id="myModalLargeEdit">음식메뉴 - 대분류 카테고리 수정</h4>
																		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
																			<i data-feather="x"></i>
																		</button>
																	</div>
																	<div class="modal-body">
																	<!-- Hoverable rows start -->
																		<div class="row" id="table-hover-row">
																			<div class="col-12">   
																				<!-- table head dark -->
																				<div class="table-responsive" style="text-align: center;">
																					<table class="table mb-0">
																						<tbody>
																							<tr>
																								<td colspan="3"  style="text-align: center;">
																									<div id="preview"><img src="/resources/imgs/largeCategory/${vo.lCategoryFilename }' />" id="previewImg"/></div>
																								</td>
																							</tr>
																							<tr>
																								<td colspan="3"  style="text-align: center;">
																									<div>
																										<input type="file" id="upfile" name="upfile" class="btn btn-outline-light" accept=".gif, .jpg, .png" value="${vo.lCategoryFilename }" />
																										<br><span>* 첨부파일을 새로 지정할 경우 기존파일은 삭제됩니다.</span>             
																									</div>
																								</td>
																							</tr>
																							<tr>
																								<td colspan="1"><span>대분류 이름</span></td>
																								<td colspan="2">
																									<input type="text" name="lCategoryName" id="lCategoryName" placeholder="이름을 입력하세요" value="${vo.lCategoryName }">
																									<input type="hidden" name="lCategoryNo" id="lCategoryNo" value="${vo.lCategoryNo }">
																									<input type="hidden" name="oldFileName" id="oldFileName" value="${vo.lCategoryFilename }">
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
													</div>
												</div><!-- card-body  -->
												<!-- modal end -->
												<!-- <button class="btn btn-danger round white" id="lcategoryDel" name="lcategoryDel">삭제</button> -->
												
											</div><!--CARD CONTENT -->
										</div>
									</div>
               				</c:forEach>
						<!-- </div>  -->
							<!-- <section id="groups"> -->
							<!-- <div class="row"> -->		            

								<!--<div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">		              
									<div class="card text-center bg-lighten-2">
										<div class="card-content d-flex">
											<div class="card-body">
												<img src="assets/images/samples/elements/ipad-pro.png" alt="element 06" height="150" class="mb-1">
												<p class="card-text white">3</p>
												<h4 class="card-title white">일식</h4>
												<button class="btn btn-primary round" id="lcategoryEdit" name="lcategoryEdit">수정</button>
												<div class="modal-warning mr-1 mb-1 d-inline-block">
													<!-- Button trigger for warning theme modal -->
													<!--<button type="button" class="round btn btn-danger" data-toggle="modal" data-target="#warning">
													  	 삭제
													</button>
								
													<!--warning theme Modal -->
													<!--<div class="modal fade text-left" id="warning" tabindex="-1" role="dialog"
														aria-labelledby="myModalLabel140" aria-hidden="true">
														<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" role="document">
															<div class="modal-content">
																<div class="modal-header bg-danger">
																	<h5 class="modal-title white" id="myModalLabel140">대분류 삭제</h5>
																	<button type="button" class="close" data-dismiss="modal" aria-label="Close">
																	    <i data-feather="x"></i>
																	</button>
																</div>
																<div class="modal-body">
																	대분류 카테고리 [ 한식  ] 를 삭제하시겠습니까?
																</div>
																<div class="modal-footer">
																	<button type="button" class="btn btn-light-secondary" data-dismiss="modal" id="modalDelCancel">
																		<i class="bx bx-x d-block d-sm-none"></i>
																		<span class="d-none d-sm-block">취소</span>
																	</button>
																	
																	<button type="button" class="btn btn-danger ml-1" data-dismiss="modal" id="modalDel">
																		<i class="bx bx-check d-block d-sm-none"></i>
																		<span class="d-none d-sm-block">삭제</span>
																	</button>
																</div>
															</div>
														</div>
													</div> <!-- warning theme Modal -->
											<!-- </div>
											</div>
										</div>
									</div>
								</div>-->
							</div> <!-- row -->
                		</c:if>						
					</div><!-- card-content end -->
				</div> <!-- card -->
			</div> <!-- col-12 -->
		</div> 
		<!-- Hoverable rows end -->
	</div> <!-- row -->
</div> <!-- container -->

				

<!-- script start -->
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/feather-icons/feather.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/app.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/simple-datatables/simple-datatables.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/vendors.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/main.js"></script>
<!-- script end -->

<%@include file="../../adminInc/bottom.jsp" %>    
    