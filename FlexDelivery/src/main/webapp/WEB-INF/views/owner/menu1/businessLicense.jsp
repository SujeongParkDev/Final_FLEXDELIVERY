<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../ownerInc/jianSidebarTop.jsp"%>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/memberResources/vendor/jquery/jquery.min.js"></script>
<!-- css start -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/bootstrap.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/simple-datatables/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/app.css">
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/ownerResources/assets/images/favicon.svg"
	type="image/x-icon">
<!-- css end -->

<style type="text/css">
.error, .count {
	color: #5A8DEE;
	font-weight: bold;
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
<div class="col-md-4 col-12"></div>
<div class="col-md-4 col-12"></div>
<div class="col-md-4 col-12">
	<div class="card">
		<div class="card-header">
			<h4 class="card-title">사업자등록증 등록신청</h4>
		</div>

		<div class="card-content">
			<div class="card-body">
				<form class="form form-horizontal" method="POST" enctype="multipart/form-data" name="frm1" id="frm1"
					action="<c:url value='/owner/menu1/businessLicense.do'/>">
					<input type="hidden" id="ownerNo" name="ownerNo" value="${ownerNo}">
					<div class="form-body">
						<div class="row">
							<div class="col-md-4">
								<label>사업자등록 번호</label>
							</div>
							<div class="col-md-8 form-group">
								<input type="text" id="oRegisterNo" name="oRegisterNo" class="col-md-8 form-group" placeholder="숫자만 입력, 예시 :  1048300469" pattern="[0-9]+"> 
									<span class="count"></span>
							</div>
							<div class="form-group">
								<div class="d-flex justify-content-center">
									<span class="error"></span>
								</div>
							</div>
							<div class="col-md-4">
								<label>사업자등록증 앞면</label>
							</div>
							<div class="col-md-8 form-group">
								<div class="form-file">
								<input type="file" id="upfile" name="upfile" class="ustom-file-input" accept=".jpg, .jpeg, .png, .pdf">
								<div class="invalid-feedback">
							 <br>
							 <span style="margin-left:60px;">
							 <small>내용을 충분히 확인할 수 있도록 깔끔하게 촬영된 이미지를 첨부해 주세요. 정보 확인이 어려울 경우 승인이 지연될 수 있습니다. <br>
									종사업장번호가 있는 경우 사업자등록증 뒷면은 필수입니다.<br>
									10MB 이하, JPG, PNG, PDF 형식의 파일만 등록할 수 있습니다.</small>
								</span>
							</div>
								</div>
							</div>
							</div>
							<br>
							<div id="preview" class="text-center"></div>
							<div class="col-md-8 form-group">
						</div>
						<div class="col-md-11 form-group">
						<div class="col-sm-12 d-flex justify-content-end pt-5">
							<input type="submit" class="btn btn-primary mr-1 mb-1" id="wr_submit" name="wr_submit" value="등록하기 ">
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<div class="col-md-4 col-12"></div>

<script type="text/javascript">
$(function(){
	$('#wr_submit').click(function(){
		if($('#oRegisterNo').val().length<1){
			alert('사업자 번호 10자리를 입력해주세요.');
			$('#oRegisterNo').focus();
			event.preventDefault();
			return false;
		}else if($('#oRegisterNo').val().length>10){
			alert('사업자 번호가 10자리를 초과했습니다.');
			$('#oRegisterNo').focus();
			event.preventDefault();
			return false;
		}else if($('#upfile').val().length<1){
			alert('사업자 등록증을 첨부해주세요.');
			$('#upfile').focus();
			event.preventDefault();
			return false;
 		}
});
	

	$('#oRegisterNo').keyup(function(){
		var oRegisterNo=$(this).val();
		
			$('.count').html(oRegisterNo.length+'/10');
		if(oRegisterNo.length==10){
			$.ajax({
				url:"<c:url value='/owner/menu1/AjaxRegisterNo.do'/>",
				type:"get",
				data:{
					oRegisterNo:oRegisterNo
				},
				success:function(res){
					var msg="", chkYn="";
					if(res){  //이미 존재
						msg="이미 등록된 사업자 등록 번호입니다. ";
						chkYn="N";
					}else{ //사용 가능							
						msg="등록 가능한 사업자 번호입니다. ";
						chkYn="Y";
					}
					
					$('.error').html(msg);
					$('#chkoRegisterNo').val(chkYn);
				},
				error:function(xhr, status, error){
					alert('숫자 10자리만 입력해주세요. '  +error);
				}
			});
		}else{
			$('#chkoRegisterNo').val('N');
		}
	
	});//keyup
	
});


$(function(){
   $('#upfile').on('change', function(){
       readInputFile(this);
   });
});


function readInputFile(input) {
    if(input.files && input.files[0]) {
        var reader = new FileReader();
       reader.onload = function (e) {
            $('#preview').html("<img src="+ e.target.result +"  style='width:60%; margin-left:10px;' >");
        }
        reader.readAsDataURL(input.files[0]);
    }  
} 

</script>

<!-- script start -->
<script
	src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/feather-icons/feather.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/app.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/simple-datatables/simple-datatables.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/vendors.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/main.js"></script>

<!-- script end -->

<%@include file="../../ownerInc/jianSidebarBottom.jsp"%>


