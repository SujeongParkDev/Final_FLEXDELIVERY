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
	
	$('#lcategoryEdit').click(function(){
		window.open("<c:url value='/admin/menu6/largecategory/edit.do' />", "음식 대분류 수정", "width=460, height=500, scrollbars=0, toolbar=0, menubar=no");
	});
	
	$('#lcategoryDel').click(function(){
		window.open("<c:url value='/admin/menu6/largecategory/edit.do' />", "음식 대분류 수정", "width=460, height=500, scrollbars=0, toolbar=0, menubar=no");
		
	});
	
	/* 등록이든 닫기든 모달 닫힐 때 무조건 닫힘 */
	/* $('#backdrop').on('hidden.bs.modal', function () {
		 alert("제발");
		 window.parent.location.reload();
	}); */
	
	$('#modalWrite').click(function () {
		 /* location.href='<c:url value="/admin/menu6/largecategory/write.do"/>'; */
		 $('form[name=frmLCategoryWrite]').submit();
		 alert("등록 성공");
		 window.parent.location.reload();
	});

	$('#modalDel').click(function () {
		 alert("삭제하였습니다.");
		 window.parent.location.reload();
	});
	
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
			      <!-- <div class="card-body">
			        
			      </div> -->        
			      <!-- <button class="btn btn-dark round" id="lcategoryWrite" name="lcategoryWrite">등록(오프너)</button> -->
			      
			      <!-- modal start -->
			      <div class="card-body" style="text-align: right;">
                    <!-- Button trigger for Disabled Backdrop -->
                    <button type="button" class="btn btn-dark round block" data-toggle="modal" data-backdrop="false"
                    data-target="#backdrop" >
                   		 등록
                    </button>

                    <!--Disabled Backdrop Modal -->
                    <div class="modal fade text-left" id="backdrop" tabindex="-1" role="dialog" aria-labelledby="myModalLabel4"
                    aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" role="document">
                        <div class="modal-content">
	                        <div class="modal-header">
	                            <h4 class="modal-title" id="myModalLabel4">음식메뉴 - 대분류 카테고리 등록</h4>
	                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	                            	<i data-feather="x"></i>
	                            </button>
	                        </div>
	                        <div class="modal-body">
	                        
	                           <!-- 폼 걸어보기  -->    
								<form name="frmLCategoryWrite" method="post" action="<c:url value='/admin/menu6/largecategory/write.do' />" enctype="multipart/form-data">
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
												            <!-- <label for="upfile" class="btn btn-outline-light">첨부파일</label> -->
												            <input type="file" id="upfile" name="upfile" class="btn btn-outline-light" accept=".gif, .jpg, .png" />             
												            <!-- <span>(최대 2M)</span> -->            
												        </div>
									                	<!-- <button class="btn btn-outline-light">파일 등록</button> -->
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
								</form>
	                           <!-- 폼 걸어보기 -->
	                           
	                        </div>
	                        <div class="modal-footer">
	                            <button type="button" class="btn btn-outline-dark" data-dismiss="modal">
		                            <i class="bx bx-x d-block d-sm-none"></i>
		                            <span class="d-none d-sm-block">닫기</span>
	                            </button>
	                            <button class="btn btn-dark ml-1" data-dismiss="modal" name="modalWrite" id="modalWrite">
		                            <i class="bx bx-check d-block d-sm-none"></i>
		                            <span class="d-none d-sm-block">등록</span>
	                            </button>
	                        </div>
                        </div>
                    </div>
                    </div>
                </div>
                <!-- modal end -->
                
			      <!-- <section id="groups"> -->
			      <div class="row">		            
		              <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
		            	<!-- <div class="col-12"> -->
                    	<!-- <div class="card-group"> -->
		                <div class="card text-center bg-lighten-2">
		                    <div class="card-content d-flex">
		                        <div class="card-body">
		                            <img src="assets/images/samples/elements/ipad-pro.png" alt="element 06" height="150"
		                                class="mb-1">
		                            <p class="card-text white">1</p>
		                            <h4 class="card-title white">한식</h4>
		                            <button class="btn btn-primary round" id="lcategoryEdit" name="lcategoryEdit">수정</button>
		                            <button class="btn btn-danger round white" id="lcategoryDel" name="lcategoryDel">삭제</button>
		                        </div>
		                    </div>
		                </div>
		              </div>
		              <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
		                <div class="card text-center bg-lighten-2">
		                    <div class="card-content d-flex">
		                        <div class="card-body">
		                            <img src="assets/images/samples/elements/ipad-pro.png" alt="element 06" height="150"
		                                class="mb-1">
		                            <p class="card-text white">2</p>
		                            <h4 class="card-title white">피자/양식</h4>
		                            <button class="btn btn-primary round" id="lcategoryEdit" name="lcategoryEdit">수정</button>
		                            <button class="btn btn-danger round white" id="lcategoryDel" name="lcategoryDel">삭제</button>
		                        </div>
		                    </div>
		                </div>
		              </div>
		              <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">		              
		                <div class="card text-center bg-lighten-2">
		                    <div class="card-content d-flex">
		                        <div class="card-body">
		                            <img src="assets/images/samples/elements/ipad-pro.png" alt="element 06" height="150"
		                                class="mb-1">
		                            <p class="card-text white">3</p>
		                            <h4 class="card-title white">일식</h4>
		                            <button class="btn btn-primary round" id="lcategoryEdit" name="lcategoryEdit">수정</button>
		                            <div class="modal-warning mr-1 mb-1 d-inline-block">
                        <!-- Button trigger for warning theme modal -->
                        <button type="button" class="round btn btn-danger" data-toggle="modal" data-target="#warning">
                           	 삭제
                        </button>

                        <!--warning theme Modal -->
                        <div class="modal fade text-left" id="warning" tabindex="-1" role="dialog"
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
                                <button type="button" class="btn btn-light-secondary" data-dismiss="modal">
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
                        </div>
                        </div>
		                        </div>
		                    </div>
		                </div>
	                 </div>
		             <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">	                 
		                <div class="card text-center bg-lighten-2">
		                    <div class="card-content d-flex">
		                        <div class="card-body">
		                            <img src="assets/images/samples/elements/ipad-pro.png" alt="element 06" height="150"
		                                class="mb-1">
		                            <p class="card-text white">4</p>
		                            <h4 class="card-title white">중식</h4>
		                            <button class="btn btn-primary round" id="lcategoryEdit" name="lcategoryEdit">수정</button>
		                            <button class="btn btn-danger round white" id="lcategoryDel" name="lcategoryDel">삭제</button>
		                        </div>
		                    </div>
		                </div>
		             </div>
		             <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
		                <div class="card text-center bg-lighten-2">
		                    <div class="card-content d-flex">
		                        <div class="card-body">
		                            <img src="assets/images/samples/elements/ipad-pro.png" alt="element 06" height="150"
		                                class="mb-1">
		                            <p class="card-text white">5</p>
		                            <h4 class="card-title white">카페/디저트</h4>
		                            <button class="btn btn-primary round" id="lcategoryEdit" name="lcategoryEdit">수정</button>
		                            <button class="btn btn-danger round white" id="lcategoryDel" name="lcategoryDel">삭제</button>
		                        </div>
		                    </div>
		                </div>
		              </div>
		              <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
		                <div class="card text-center bg-lighten-2">
		                    <div class="card-content d-flex">
		                        <div class="card-body">
		                            <img src="assets/images/samples/elements/ipad-pro.png" alt="element 06" height="150"
		                                class="mb-1">
		                            <p class="card-text white">6</p>
		                            <h4 class="card-title white">패스트푸드</h4>
		                            <button class="btn btn-primary round" id="lcategoryEdit" name="lcategoryEdit">수정</button>
		                            <button class="btn btn-danger round white" id="lcategoryDel" name="lcategoryDel">삭제</button>
		                        </div>
		                    </div>
		                </div>
		              </div>  
		              <!-- </div> --> <!-- card-group -->  
		            </div><!-- col end -->
			      </div>
			      <!-- </section> -->
			      
			      <!-- table hover -->
			      <%-- <div class="table-responsive">
			        <table class="table table-hover mb-0">
			          <thead>
			            <tr>
			              <th style="text-align: center;">번호</th>
			              <th colspan="3" style="text-align: center;">이름</th>
			
			              <th></th>
			              <th style="text-align: center;">이미지파일</th>
			              <th style="text-align: center;">비고</th>
			            </tr>
			          </thead>
			          <tbody>
			            <tr>
			              <td class="text-bold-500" style="text-align: center;">1</td>
			              <td colspan="3" style="text-align: center;">한식</td>
			              
			              <td></td>
			              <td></td>
			              <td style="text-align: center;"><a href="<c:url value='/categoryLargeEdit' />" class="btn btn-primary round" id="lcategoryEdit" name="lcategoryEdit">수정</a>
			              <a href="<c:url value='/categoryLargeDelete' />" class="btn btn-danger round" id="lcategoryDel" name="lcategoryDel">삭제</a></td>
			              </tr>
			              <tr>
			                <td class="text-bold-500" style="text-align: center;">2</td>
			                <td colspan="3" style="text-align: center;">중식</td>
			               
			                <td></td>
			                <td></td>
			                <td style="text-align: center;"><a href="#"><i
			                      class="badge-circle badge-circle-light-secondary font-medium-1" data-feather="mail"></i></a></td>
			              </tr>
			              <tr>
			                <td class="text-bold-500" style="text-align: center;">3</td>
			                <td colspan="3" style="text-align: center;">분식</td>
			                
			                <td></td>
			                <td></td>
			                <td style="text-align: center;"><a href="#"><i
			                      class="badge-circle badge-circle-light-secondary font-medium-1" data-feather="mail"></i></a></td>
			              </tr>
			              <tr>
			                <td class="text-bold-500" style="text-align: center;">4</td>
			                <td colspan="3" style="text-align: center;">일식/돈가스</td>
			                
			                <td></td>
			                <td></td>
			                <td style="text-align: center;"><a href="#"><i
			                      class="badge-circle badge-circle-light-secondary font-medium-1" data-feather="mail"></i></a></td>
			              </tr>           
			            </tbody>
			          </table>
			        </div> --%>
					<!-- Hoverable rows end -->
			      </div>
			    </div>
			</div>
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
    