<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../../ownerInc/top.jsp"%>

	<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/launchRegister.css" />
<script type="text/javascript" src="<c:url value='/resources/ownerResources/assets/js/storesregister.js'/>"></script>
<script type="text/javascript">
	$(function() {
		$('#btRegi').click(function() {
			
		});
		
		var radioVal = $('input[name="radio"]:checked').val();
		if(radioVal==1){
			
		}
		
			$('#btRegi').click(function(){
				if(!$('#chkAgree').is(":checked")){
					alert('개인 정보 수집 이용에 동의하셔야 합니다.');
					$('#chkAgree').focus();
					event.preventDefault();
				}else{
					location.href = '<c:url value="/owner/menu1/launchRegister_ok.do"/>';
				}
		});
	});
	
	
</script>
<div id="root">
	<div class="Frame medium">
		<div class="frame-container pl-0 pt-0">
			<div class="frame-wrap">
				<div class="frame-body">
					<div id="ols-landing-page" class="my-5 mx-2 mt-sm-4">
						<a class="d-block pb-4 pb-sm-3 ml-0" href="/">FLEXDELIVERY 주문페이지로 이동</a>
						<div class="Card rounded ">
							<div class="card-header">
								<h3>FLEXDELIVERY 입점 🏩 </h3>
							</div>
					
					<!-- 폼 시작 -->
						<form class="dialog on lg ">
							<div class="header">
								<div class="header-hint"></div>
							</div>
							<div class="wrap StepDialog">
								<a class="content-begin"></a>
								<div class="content">
									<div class="Steps ">
									
										<div class="steps-content">
											<h3 class="mt-2 mb-1">
												<strong>dlthwjd</strong>님, 맞춤 안내를 위해<br>몇 가지 물어볼게요 : )
											</h3>
											<div class="card-description h6 pb-2">답변은 전화 상담 목적으로만
												사용됩니다.</div>
											<div class="form-group border-top">
												<h5 class="form-label">✔ 현재 매장을 운영중이신가요?</h5>
												<div class="form-control-wrap">
													<div class="form-control  mt-3">
														<label class="radio-button"><input type="radio"
															value="1" name="bt1">
														<p class="label">네. 현재 매장을 운영중입니다.</p></label>
													</div>
												</div>
												<div class="form-control-wrap">
													<div class="form-control ">
														<label class="radio-button"><input type="radio"
															value="2" name="bt1">
														<p class="label">아니요. 매장 오픈 준비중입니다.</p></label>
													</div>
												</div>
											</div>
											<div class="form-group ">
												<h5 class="form-label">
													<div class="text-wrap">
														😊 아래 내용을 자세하게 적어주세요.<br>
														입점에 필요한 정보를 상세하게 적어주시면 <br>
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
																<input type="text" placeholder="20자 이내로 등록해주세요."
																	required="" pattern="" minlength="1">
															</div>
														</div>
													</div>
												</div>
											</div>
												        
												     		<div class="form-group ">
												<h5 class="form-label">✔ 점포소개</h5>
												<div class="form-control-wrap border 1px solid #ced4da">
													<div class="form-control only-one-input">
														<div class="input-label-container" style="width: inherit;">
															<div class="input-container left">
																<input type="text" placeholder="100자 이내로 등록해주세요."
																	required="" pattern="" minlength="1">
															</div>
														</div>
													</div>
												</div>
											</div>
											
												<div class="form-group ">
												<h5 class="form-label">✔ 점포 로고 이미지 (최대 2M)</h5>
												<div class="form-control-wrap ">
													<div class="form-control only-one-input">
														<div class="input-label-container" style="width: inherit;">
															<div class="input-container left">
																<input type="file" placeholder="최대 (2M)"
																	required="" pattern="" minlength="">
															</div>
														</div>
													</div>
												</div>
											</div>
											
													<div class="form-control ">
												            	<div class="form-group ">
																	<h5 class="form-label">✔ 대분류 카테고리</h5>
																<div class="form-control-wrap border 1px solid #ced4da">
															<div class="form-control ">
														<select required="" style="min-width: 140px;"><option
																value="" disabled="">대분류</option>
																<option value="1">한식</option>
																<option value="2">중식</option>
															<option value="3">양식</option>
															<option value="4">일식</option>
															<option value="5">아시안</option>
															<option value="6">디저트</option>
															</select>
															</div>
														</div>
													</div>
												</div>
											</div>
											
											
												        	<div class="form-control ">
												            	<div class="form-group ">
																	<h5 class="form-label">✔ 최소 주문 금액을 선택해주세요.</h5>
																<div class="form-control-wrap border 1px solid #ced4da">
															<div class="form-control ">
														<select required="" style="min-width: 140px;"><option
																value="" disabled="">최소 주문 금액</option>
															<option value="9">9,000원 이상</option>
															<option value="10">10,000원 이상</option>
															<option value="11">11,000원 이상</option>
															<option value="12">12,000원 이상</option>
															<option value="13">13,000원 이상</option>
															<option value="14">14,000원 이상</option>
															<option value="15">15,000원 이상</option>
															<option value="16">16,000원 이상</option>
															<option value="17">17,000원 이상</option>
															<option value="18">18,000원 이상</option>
															<option value="19">19,000원 이상</option>
															<option value="20">20,000원 이상</option></select>
															</div>
														</div>
													</div>
												</div>
											</div>
											
												<div class="form-control ">
												            	<div class="form-group ">
																	<h5 class="form-label">✔ 점포오픈시간</h5>
																<div class="form-control-wrap border 1px solid #ced4da">
															<div class="form-control ">
														<select required="" style="min-width: 140px;"><option
																value="" disabled="">오픈시간</option>
																<option value="7">7시</option>
																<option value="8">8시</option>
															<option value="9">9시</option>
															<option value="10">10시</option>
															<option value="11">11시</option>
															<option value="12">12시</option>
															<option value="13">13시</option>
															<option value="14">14시</option>
															<option value="15">15시</option>
															<option value="16">16시</option>
															<option value="17">17시</option>
															<option value="18">18시</option>
															<option value="19">19시</option>
															<option value="20">20시</option></select>
															</div>
														</div>
													</div>
												</div>
											</div>
											
													<div class="form-control ">
												            	<div class="form-group ">
																	<h5 class="form-label">✔ 점포마감시간</h5>
																<div class="form-control-wrap border 1px solid #ced4da">
															<div class="form-control ">
														<select required="" style="min-width: 140px;"><option
																value="" disabled="">마감시간</option>
																<option value="7">7시</option>
																<option value="8">8시</option>
															<option value="9">9시</option>
															<option value="10">10시</option>
															<option value="11">11시</option>
															<option value="12">12시</option>
															<option value="13">13시</option>
															<option value="14">14시</option>
															<option value="15">15시</option>
															<option value="16">16시</option>
															<option value="17">17시</option>
															<option value="18">18시</option>
															<option value="19">19시</option>
															<option value="20">20시</option></select>
															</div>
														</div>
													</div>
												</div>
											</div>
											
															<div class="form-control ">
												            	<div class="form-group ">
																
												<ul class="bullet-ul small muted">
													<li>상담 현황에 따라 상담시간은 변동될 수 있습니다.</li>
												</ul>
											
											</div>
											
											<div class="form-group ">
												<h5 class="form-label">✔ 전화 받을 연락처를 확인해주세요.</h5>
												<div class="form-control-wrap border 1px solid #ced4da">
													<div class="form-control only-one-input">
														<div class="input-label-container" style="width: inherit;">
															<div class="input-container left">
																<input type="number" placeholder="8~12자리 숫자만 입력해주세요."
																	required="" pattern="[0-9]{8,12}" minlength="8"
																	maxlength="12" >
															</div>
														</div>
													</div>
												</div>
											</div>
											
											<div class="form-group ">
												<div class="form-control-wrap">
													<div class="form-control ">
														<input
															type="checkbox" id="chkAgree" value="agree"
															><span class="checkbox">개인 정보 수집 이용에 동의합니다.</span>
														<p class="label text-disabled"></p></label>
													</div>
												</div>
												<ul class="bullet-ul small muted">
													<li>개인정보 수집 이용에 동의하지 않을 수 있으며 동의하지 않는 경우 상담 신청이 제한됩니다.</li>
													<li>입점 상담을 위해 연락처를 수집 이용하며, 수집한 개인정보는 <strong
														class="h6">상담 종료 후 파기</strong>됩니다.
													</li>
												</ul>
						<div class="text-right my-3">
							<button type="button" class="button medium primary" id="btRegi">등록 제출
								</button>
						</div>
											</div>
										</div>
										</div>
										<!--  -->
										</div>
									</div>
								</div>
							</div>
						</div>
						</form>
					<!--  -->
					<!--  -->
					</div>
		<div class="Toast-container"></div>
	


<%@include file="../../../ownerInc/bottom.jsp"%>
