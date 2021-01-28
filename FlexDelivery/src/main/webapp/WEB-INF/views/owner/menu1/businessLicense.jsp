<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@include file="../../ownerInc/jianSidebarTop.jsp"%>
	
	<!-- css start -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/bootstrap.css">  
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/simple-datatables/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/app.css">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/ownerResources/assets/images/favicon.svg" type="image/x-icon">
<!-- css end -->
	
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/memberResources/vendor/jquery/jquery.min.js"></script>
<script type="text/javascript" src="<c:url value='${pageContext.request.contextPath}/resources/ownerResources/assets/js/storesregister.js'/>"></script>
<script type="text/javascript">
$(function(){
	$('#wr_submit').click(function(){
		if($('#oRegisterNo').val().length<1){
			alert('사업자 번호 10자리를 입력해주세요.');
			$('#oRegisterNo').focus();
			event.preventDefault();
		}else if($('#oRegisterNo').val().length==10){
			alert('사업자 등록 신청되었습니다.\n'
					+'처리 상태는 신청 현황에서 확인하실 수 있습니다.');
		}
			});

	
	$('#oRegisterNo').keyup(function(){
		var oRegisterNo=$(this).val();
		if( oRegisterNo.length>=1 && oRegisterNo.length<=10){
			$('.error').html(oRegisterNo.length+'/10');
		}
	});
});
	
/* 	function validate_oRegisterNo(oRegisterNo){
		$('.error').html("숫자 10자리만 입력해주세요.");
	} */
</script>
<!-- 다음에 옮기기 CSS작업할때 -->
<style type="text/css">
   .error{
      color:purple;
      font-weight:bold;
   }
   .col-md-4.col-12 {
    align-items: center;
    margin: auto;
    width: 600px;
}
.row {
    margin-top: 15%;
}
</style>
	<div class="row">
		<div class="col-md-4 col-12"></div>
		<div class="col-md-4 col-12">
		     <div class="card">
		         <div class="card-header">
		           		 <h4 class="card-title">사업자등록증 등록신청</h4>
			     </div>
			     
			     <div class="card-content">
				 	  <div class="card-body">
				 	  
				            <!-- form 시작 -->
			                <form class="form form-horizontal" method="post" enctype="multipart/form-data" name="frm1"
			        action="<c:url value='/owner/menu1/businessLicense.do'/>" >
			        <input type="text" id="ownerNo"name="ownerNo" value="${ownerNo}">
			                <div class="form-body">
			                    <div class="row">
				                    <div class="col-md-4">
				                        <label>사업자등록 번호</label>
				                        <!-- 예시 : 고유번호: 104-83-00469 (대표: ㅇㅇㅇ)  (10자리) -->
				                    </div>
				                    <div class="col-md-8 form-group" >
				                        <input type="text" id="oRegisterNo" name="oRegisterNo" 
				                        class="form-control text-right" placeholder="숫자만 입력, 예시 :  1048300469"   pattern="[0-9]+" >
				                   	<span class="error"></span>
				                    </div>
				                    <div class="col-md-4">
				                        <label>사업자등록증 앞면</label>
				                    </div>
				                     <div class="col-md-8 form-group">
				                    
				                    <div class="custom-file">
				                    
				                        <input type="file" id="upfile" name="upfile"
				                         class="ustom-file-input"  accept=".jpg, .jpeg, .png, .pdf">
								  </div>
				                         <br>
									    <div class="invalid-feedback">
				                   	<ul class="bullet-ul bullet-ul small muted">
																				<li>내용을 충분히 확인할 수 있도록 깔끔하게 촬영된 이미지를 첨부해 주세요. 정보
																					확인이 어려울 경우 승인이 지연될 수 있습니다.</li>
																				<li>종사업장번호가 있는 경우 사업자등록증 뒷면은 필수입니다.</li>
																				<li>10MB 이하, JPG, PNG, PDF 형식의 파일만 등록할 수 있습니다.</li>
																			</ul>
																			</div>
				                   
				                    </div>
				                    <div class="col-sm-12 d-flex justify-content-end pt-5">
				                        <input type="submit" class="btn btn-primary mr-1 mb-1"
				                        id="wr_submit" name="wr_submit" value="신청 ">
				                        <button type="reset" class="btn btn-light-secondary mr-1 mb-1">취소</button>
				                    </div>
				                    </div>
				                    </div>
			                </form>
			                    </div>
			                </div>
			                
			   		   </div>
	              </div>
	         </div>
	    <div class="col-md-4 col-12"></div>
	    
	    <!-- script start -->
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/feather-icons/feather.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/app.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/simple-datatables/simple-datatables.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/vendors.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/main.js"></script>

<!-- script end -->

<%@include file="../../ownerInc/jianSidebarBottom.jsp"%>


