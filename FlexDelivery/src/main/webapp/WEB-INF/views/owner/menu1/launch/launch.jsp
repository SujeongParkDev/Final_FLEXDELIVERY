<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../../ownerInc/top.jsp"%>

<style>
.jumbotron {
	padding: 12rem 2rem;
	background:
		url(https://ceo-cdn.baemin.com/cdn/ceo-selfservice/src/images/ols/main_banner.jpg?ver=a7772e4…)
		no-repeat 50%;
}

h1 {
	color: white;
}

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

<div class="container">
	<div class="jumbotron">
		<h1>FLEXDELIVERY 입점하고<br />
			 <strong>가게매출<img src="https://ceo-cdn.baemin.com/cdn/ceo-selfservice/src/images/ols/icon_calc.png?ver=42f9afb5d8c17e79d0659cea66351d9f" />
				을 올리세요!
			</strong>
		</h1>
		<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal1" data-whatever="@mdo">사업자 등록 신청 </button>
		<input type="submit" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal2" data-whatever="@getbootstrap" data-dismiss="#exampleModal1" value="FLEXD 입점 신청">
	</div>
	<div class="row marketing">
		<div class="col-lg-6">
			<h4>
				<i class="fas fa-paperclip"></i> 미리 준비해주세요!
			</h4>
			<div class="inline-values flex-1 mt-1">
				<ul class="bullet-ul">
					<li>&nbsp;사업자등록증</li>
					<li>&nbsp;영업신고증</li>
					<li>&nbsp;가게 로고 이미지</li>
					<li>&nbsp;가격을 포함한 메뉴판 이미지</li>
				</ul>
			</div>
		</div>
		<div class="col-lg-6">
			<h4>
				<i class="fas fa-paperclip"></i> 입점 과정 미리보기
			</h4>
			<div class="inline-values flex-1 mt-1">
				<ul class="bullet-ul">
					<li>&nbsp;사업자등록증 등록</li>
					<li>&nbsp;입점 신청서 작성</li>
					<li>&nbsp;가게 기본 정보 등록</li>
					<li>&nbsp;승인 절차 후 광고 시작</li>
				</ul>
			</div>
			<ul class="bullet-ul small muted">
				<li>심사기간은 평균 2~3일 소요됩니다.</li>
			</ul>
		</div>
	</div>
</div>
<br>
<br>
<br>
<br>
<!-- 사업자 등록 폼 시작  -->
<div class="modal fade" id="exampleModal1" name="registerModal"
	tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
	aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<div class="text-left">
					<h4 class="modal-title" id="exampleModalLabel">사업자 등록증 신청</h4>
				</div>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<br>
			</div>
			<div class="progress">
				<div class="progress-bar" role="progressbar" aria-valuenow="30"
					aria-valuemin="0" aria-valuemax="100" style="width: 3px;">
					<span class="sr-only"></span>
				</div>
			</div>
			<br> <br>
			<div class="modal-body">
				<form class="form form-horizontal" method="POST"
					enctype="multipart/form-data" name="frm1" id="frm1"
					action="<c:url value='/owner/menu1/launch/launchWrite.do'/>">
					<div class="form-group">
						<label for="recipient-name" class="control-label">사업자등록 번호</label>
						<input type="text" id="oRegisterNo" name="oRegisterNo"
							class="col-md-8 form-group"
							placeholder="숫자만 입력, 예시 :  1048300469" pattern="[0-9]+">
						<span class="count"></span>
					</div>
					<div class="form-group">
						<div class="d-flex justify-content-center">
							<span class="error"></span>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label">사업자등록증 앞면</label>
					</div>
					<div class="form-file">
						<input type="file" id="upfile" name="upfile"
							class="ustom-file-input" accept=".jpg, .jpeg, .png, .pdf">
						<div class="invalid-feedback">
							<br> 
							<span style="margin-left: 60px;"> 
								<small>내용을 충분히 확인할 수 있도록 깔끔하게 촬영된 이미지를 첨부해 주세요. 정보 확인이 어려울 경우 승인이 지연될 수
									있습니다. <br> 종사업장번호가 있는 경우 사업자등록증 뒷면은 필수입니다.<br> 
									10MB 이하, JPG, PNG, PDF 형식의 파일만 등록할 수 있습니다.
							</small>
							</span>
						</div>
					</div>
			</div>
			<br>
			<div id="preview" class="text-center"></div>
			<div class="modal-footer">
				<input type="submit" class="btn btn-primary mr-1 mb-1" id="wr_submit" name="wr_submit" value="등록하기 "> 
				<input type="submit" class="button medium primary" id="wr_submit" ame="wr_submit" data-toggle="modal" data-target="#exampleModal2"
					data-whatever="@getbootstrap" data-dismiss="#exampleModal1">입점 신청 
			</div>
			</form>
		</div>
	</div>


</div>
<!-- 사업자 등록 폼 끝  -->
<!--  -->
<!-- 입점 신청 폼  -->
<div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<div class="text-left">
					<h4 class="modal-title" id="exampleModalLabel">입점 신청</h4>
				</div>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<br>
			</div>
			<div class="modal-body">
				<form class="dialog on lg " name="frm1" id="frm1" method="post" enctype="multipart/form-data"
					action="<c:url value='/owner/menu1/launch/launchRegister.do'/>">
					<h5 class="form-label">
						<div class="text-left">
							<h3 class="mt-2 mb-1">
								<strong>${sessionScope.ownerName }</strong> 님, 맞춤 안내를 위해<br>
								몇 가지 물어볼게요 : )
							</h3>
							<br>
							<p>
								😊 아래 내용을 자세하게 적어주세요.<br> 입점에 필요한 정보를 상세하게 적어주시면 <br>
								상담하는데 많은 도움이 됩니다.
							</p>
						</div>
					</h5>
					<br>

					<div class="form-group">
						<label for="recipient-name" class="control-label">
							<h5>✔ 점포명</h5>
						</label> 
						<input type="text" class="form-control" id="recipient-name" placeholder="20자 이내로 등록해주세요." 
						name="storeName" id="storeName" minlength="1" title="점포명">
					</div>
					<div class="form-group">
						<label for="recipient-name" class="control-label">
							<h5>✔ 점포 로고 이미지</h5>
						</label> 
						<input type="file" placeholder="최대 (2M)" required="" class="infobox form-control-lg" id="upfile" name="upfile" minlength="1" title="점포 로고 이미지">
					</div>
					<div class="form-group">
						<label for="recipient-name" class="control-label">
						<h5>✔ 점포명</h5></label> <input type="text" class="form-control" id="recipient-name"
							placeholder="20자 이내로 등록해주세요." name="storeName" id="storeName" minlength="1" title="점포명">
					</div>
					<div id="preview" class="text-center"></div>
					<div class="form-group">
						<label for="recipient-name" class="control-label">
							<h5>✔ 점포 주소</h5>
						</label>
						 <input type="Button" value="우편번호 찾기" id="btnZipcode" title="새창열림"><br /> 
						 <input type="text" placeholder="우편번호" ReadOnly title="주소" class="form-control" name="OwnerZipcode" id="OwnerZipcode"
							aria-describedby="numberHelp" style="background-color: #fafaf9;">
						<input type="text" placeholder="점포 상세 주소를 적어주세요. " class="infobox"
							name="storeAddressDetail" id="storeAddressDetail" minlength="1" title="점포 상세주소">
					</div>
					<div class="form-group">
						<label for="recipient-name" class="control-label">
							<h5>✔ 지역 코드 번호</h5>
						</label> 
						<select required="required" style="min-width: 140px;" class="form-control form-control-lg" id="locationNo" name="locationNo">
							<option value="" disabled="">대분류</option>
							<c:forEach var="voLo" items="${location }">
								<option value="${voLo.locationNo}" id="locationNo" name="locationNo">${voLo.locationName }</option>
							</c:forEach>
						</select>
					</div>
					<div class="form-group">
						<label for="recipient-name" class="control-label">
							<h5>✔ 대분류 카테고리</h5>
						</label> 
						<select required="required" style="min-width: 140px;" class="form-control form-control-lg" id="lCategoryNo" name="lCategoryNo">
							<option value="" disabled="">대분류</option>
							<c:forEach var="vo" items="${large }">
								<option value="${vo.lCategoryNo}" id="lCategoryNo" name="lCategoryNo">${vo.lCategoryName }</option>
							</c:forEach>
						</select>
					</div>
					<div class="form-group">
						<label for="message-text" class="control-label">
						<h5>✔ 상담 시 요청사항</h5></label>
						<textarea class="form-control" id="message-text" placeholder="300자 이내로 등록해주세요." name="storeContent" id="storeContent"></textarea>
					</div>
					<div class="form-group">
						<label class="checkbox-inline"> 
						<input type="checkbox" id="inlineCheckbox1" value="option1"> 개인 정보 수집 이용에 동의합니다.
						</label>
						<ul class="bullet-ul small muted">
							<li>개인정보 수집 이용에 동의하지 않을 수 있으며 동의하지 않는 경우 상담 신청이 제한됩니다.</li>
							<li>입점 상담을 위해 연락처를 수집 이용하며, 수집한 개인정보는 <strong class="h6">상담
									종료 후 파기</strong>됩니다.
							</li>
						</ul>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary" id="btRegi" data-dismiss="modal" name="modalWrite" onclick="form.submit()">등록 제출</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<!-- 입점 신청 끝  -->



<script type="text/javascript">
	// 사업자 등록증 
	$(function() {
		$('#wr_submit').click(function() {
			if ($('#oRegisterNo').val().length < 1) {
				alert('사업자 번호 10자리를 입력해주세요.');
				$('#oRegisterNo').focus();
				event.preventDefault();
				return false;
			} else if ($('#oRegisterNo').val().length > 10) {
				alert('사업자 번호가 10자리를 초과했습니다.');
				$('#oRegisterNo').focus();
				event.preventDefault();
				return false;
			} else if ($('#upfile').val().length < 1) {
				alert('사업자 등록증을 첨부해주세요.');
				$('#upfile').focus();
				event.preventDefault();
				return false;
			}
		});

		$('#oRegisterNo').keyup(function() {
			var oRegisterNo = $(this).val();

			$('.count').html(oRegisterNo.length + '/10');
			if (oRegisterNo.length == 10) {
				$.ajax({
					url : "<c:url value='/owner/menu1/AjaxRegisterNo.do'/>",
					type : "get",
					data : {
						oRegisterNo : oRegisterNo
					},
					success : function(res) {
						var msg = "", chkYn = "";
						if (res) { //이미 존재
							msg = "이미 등록된 사업자 등록 번호입니다. ";
							chkYn = "N";
						} else { //사용 가능							
							msg = "등록 가능한 사업자 번호입니다. ";
							chkYn = "Y";
						}

						$('.error').html(msg);
						$('#chkoRegisterNo').val(chkYn);
					},
					error : function(xhr, status, error) {
						alert('숫자 10자리만 입력해주세요. ' + error);
					}
				});
			} else {
				$('#chkoRegisterNo').val('N');
			}

		});//keyup

	});

	$(function() {
		$('#upfile').on('change', function() {
			readInputFile(this);
		});
	});

	function readInputFile(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				$('#preview').html(
						"<img src=" + e.target.result
								+ "  style='width:60%; margin-left:10px;' >");
			}
			reader.readAsDataURL(input.files[0]);
		}
	}
	$(function() {
		$('#next').click(function() {
			$(this).close();
		});
	});

	//입점 신청 
	$(function() {
		var chk = 0;
		$('#btRegi').click(function() {
			$('.infobox').each(function(idx, item) {
				if ($(this).val().length < 1) {
					alert($(this).attr('title') + '를(을) 입력하세요');
					$(this).focus();
					event.preventDefault();
					return false; //each 탈출
				} else {
					chk = 1;
					event.preventDefault();
				}
			}); //each
			if (chk == 1) {
				if (!$('#chkAgree').is(":checked")) {
					alert('개인 정보 수집 이용에 동의하셔야 합니다.');
					$('#chkAgree').focus();
					event.preventDefault();
					return false;
				}
			}
		});

		$('#upfile').on('change', function() {
			readInputFile(this);
		});

		var contextPath = "/fd";

		$('#btnZipcode')
				.click(
						function() {
							open(
									contextPath
											+ "/owner/menu1/launch/zipcode.do",
									"chk",
									"width=500,height=500,left=0,top=0,location=yes,resizable=yes");
						});

	});

	$(function() {
		$('#upfile').on('change', function() {
			readInputFile(this);
		});
	});

	function readInputFile(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				$('#preview').html(
						"<img src=" + e.target.result
								+ "  style='width:90%; margin-left:20px;' >");
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
<%@ include file="../../../ownerInc/bottom.jsp"%>
