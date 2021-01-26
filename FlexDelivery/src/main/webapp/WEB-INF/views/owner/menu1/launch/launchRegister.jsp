<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/launchRegister.css" />
<script type="text/javascript"
	src="<c:url value='/resources/ownerResources/assets/js/storesregister.js'/>"></script>
<script type="text/javascript" src="../js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$(function() {
			$('#btRegi').click(function(){
					$('.infobox').each(function(idx, item){
						if($(this).val().length<1){
							alert($(this).attr('title')+ '를(을) 입력하세요');
							$(this).focus();
							event.preventDefault();
							return false;  //each 탈출
						}
						
				});
			});
					$(function() {
					$('#btRegi').click(function(){
						if(!$('#chkAgree').is(":checked")){
							alert('개인 정보 수집 이용에 동의하셔야 합니다.');
							$('#chkAgree').focus();
							event.preventDefault();
						}else{
							alert('🎉축하합니다!🎉 \n입점 등록 신청이 완료되었습니다. \n내 가게 정보로 이동합니다.');
							// 기본정보로 이동하게 ?준비중입니다 이런거 뜨게해서 
							location.href = '<c:url value="/owner/menu2/basic/basic.do"/>';
						}
				});
		});
				
			
			$('#btnZipcode').click(function(){
				open(contextPath+"/zipcode/zipcode.do", "chk",
		"width=500,height=500,left=0,top=0,location=yes,resizable=yes");
			});
			
	});
	
</script>
<div class="modal-body">
	<div class="modal-title">
		<div class="header-close">
			<button type="button" class="btn btn-default" data-dismiss="modal">나가기
			</button>
		</div>
		<div class="header-title">
			<h3>사업자 정보</h3>

		</div>
		<div class="header-hint"></div>
	</div>


	<!-- 폼 시작 -->
	<form class="dialog on lg " name="dialog" id="dialog" method="post"
		enctype="multipart/form-data">
		<!-- hidden으로 변경할 것  -->
		<input type="text" name="oRegisterNo" id="oRegisterNo"
			value="${param.oRegisterNo}" />

		<h3 class="mt-2 mb-1">
			<strong>${sessionScope.ownerName }</strong>님, 맞춤 안내를 위해<br>몇 가지
			물어볼게요 : )
		</h3>
		<div class="form-group border-top">
			<h5 class="form-label">✔ 현재 매장을 운영중이신가요?</h5>
			<div class="form-control-wrap">
				<div class="form-control  mt-3">
					<label class="radio-button"><input type="radio" value="1"
						name="bt1">
						<p class="label">네. 현재 매장을 운영중입니다.</p></label>
				</div>
			</div>
			<div class="form-control-wrap">
				<div class="form-control ">
					<label class="radio-button"><input type="radio" value="2"
						name="bt1">
						<p class="label">아니요. 매장 오픈 준비중입니다.</p></label>
				</div>
			</div>
		</div>
		<hr>
		<h5 class="form-label">
			<div class="text-wrap">
				😊 아래 내용을 자세하게 적어주세요.<br> 입점에 필요한 정보를 상세하게 적어주시면 <br>
				상담하는데 많은 도움이 됩니다.
			</div>
		</h5>
		<div class="form-control-wrap">

			<div class="form-group ">
				<h5 class="form-label">✔ 점포명</h5>
				<div class="form-control-wrap border 1px solid #ced4da">
					<div class="form-control only-one-input">
						<div class="input-label-container" style="width: inherit;">
							<div class="input-container left">
								<input type="text" placeholder="20자 이내로 등록해주세요." class="infobox"
									name="storeName" id="storeName" minlength="1" title="점포명">
							</div>
						</div>
					</div>
				</div>

				<h5 class="form-label">✔ 점포 로고 이미지</h5>
				<div class="form-control-wrap ">
					<div class="form-control only-one-input">
						<div class="input-label-container" style="width: inherit;">
							<div class="input-container left">
								<input type="file" placeholder="최대 (2M)" required="" class="infobox"
									id="upfile" name="upfile" minlength="1" title="점포 로고 이미지">
							</div>
						</div>
					</div>
				</div>


				<!-- 나중에 지도 api적용 예정임다  -->
				<h5 class="form-label">✔ 점포 주소</h5>
							<input type="Button" value="우편번호 찾기" id="btnZipcode" title="새창열림"><br />
				<div class="form-control-wrap border 1px solid #ced4da">
					<div class="form-control only-one-input">
						<div class="input-label-container" style="width: inherit;">
							<div class="input-container left">
      						  <span class="sp1">&nbsp;</span>
								<input type="text" placeholder="20자 이내로 등록해주세요." class="infobox"
									name="storeAddress" id="storeAddress" minlength="1" title="점포주소">
							</div>
						</div>
					</div>
				</div>
				<!--상세주소  -->
				<div class="form-control-wrap border 1px solid #ced4da">
					<div class="form-control only-one-input">
						<div class="input-label-container" style="width: inherit;">
							<div class="input-container left">
								<input type="text" placeholder="점포 상세 주소를 적어주세요. " class="infobox"
									name="storeAddressDetail" id="storeAddressDetail" minlength="1" title="점포 상세주소">
							</div>
						</div>
					</div>
				</div>

				<!--  -->
				<!-- 옵션 만들어지면 리스트로 뽑을것임 -->
				<!-- 지역코드번호가 내가선택하는건가?? 아니면 사업장에서 배달가능한 지역?? 알아서 ??  -->
				<h5 class="form-label">✔ 지역 코드 번호</h5>
				<div class="form-control-wrap border 1px solid #ced4da">
					<select required="required" style="min-width: 140px;" class="form-control "><option
							value="" disabled="">대분류</option>
						<option value="1">송파구</option>
						<option value="2">강남구</option>
						<option value="3">금천구</option>
						<option value="4">가산구</option>
						<option value="5">마포구</option>
						<option value="6">강동구</option>
					</select>
				</div>


				<h5 class="form-label">✔ 대분류 카테고리</h5>
				<div class="form-control-wrap border 1px solid #ced4da">
					<select required="required" style="min-width: 140px;" class="form-control "><option
							value="" disabled="">대분류</option>
						<option value="1">한식</option>
						<option value="2">중식</option>
						<option value="3">양식</option>
						<option value="4">일식</option>
						<option value="5">아시안</option>
						<option value="6">디저트</option>
					</select>
				</div>




				<div class="form-control ">
					<ul class="bullet-ul small muted">
						<li>상담 현황에 따라 상담시간은 변동될 수 있습니다.</li>
					</ul>

					<h5 class="form-label">✔ 전화 받을 연락처를 확인해주세요.</h5>
					<div class="form-control-wrap border 1px solid #ced4da">
						<div class="form-control only-one-input">
							<div class="input-label-container" style="width: inherit;">
								<div class="input-container left">
									<input type="number" placeholder="8~12자리 숫자만 입력해주세요."
										required="" pattern="[0-9]{8,12}" minlength="8" maxlength="12">
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="form-control-wrap">
					<div class="form-control ">
						<input type="checkbox" id="chkAgree" value="agree"><span
							class="checkbox">개인 정보 수집 이용에 동의합니다.</span>
						<p class="label text-disabled"></p>
						</label>
					</div>
					<div class="form-control ">
						<ul class="bullet-ul small muted">
							<li>개인정보 수집 이용에 동의하지 않을 수 있으며 동의하지 않는 경우 상담 신청이 제한됩니다.</li>
							<li>입점 상담을 위해 연락처를 수집 이용하며, 수집한 개인정보는 <strong class="h6">상담
									종료 후 파기</strong>됩니다.
							</li>
						</ul>
						<div class="modal-footer">
							<div class="text-right my-3">
								<button type="button" class="button medium primary" id="btRegi">등록
									제출</button>

							</div>
						</div>
					</div>
				</div>
			</div>

			<!--  -->
	</form>
</div>

