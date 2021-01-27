<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../../../ownerInc/jianSidebarTop.jsp"%>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.6.9/core.min.js"></script>
<script src="https://kit.fontawesome.com/e42a7f130f.js"
	crossorigin="anonymous"></script>


<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/operation.css" />
<link rel="stylesheet"
	href="https://ceo-cdn.baemin.com/cdn/ceo-selfservice/css/ceo-selfservice.css?ts=20210119110213">


<div class="frame-wrap">
	<div class="frame-body">
		<button class="top-button  hide">
			<i class="icon icon-top"></i>
		</button>
		<div>
			<div class="ShopSelect mb-4 mb-sm-0">
				<select><option value="13195815">피자알파 서면점</option></select>
				<section class="title">
					<h3>
						피자알파 서면점 <i class="fas fa-angle-down"></i>
					</h3>
					<p class="text-sub mt-1">피자 · 배달의민족 · W13195815</p>
				</section>
			</div>
			<div>
				<div class="tabs TabNav">
					<ul>
						<li><a href="<c:url value='/owner/menu2/basic/basic.do'/>">기본정보</a></li>
						<li><a aria-current="page" class="active"
							href="<c:url value='/owner/menu2/operation/operation.do'/>">운영정보</a></li>
					</ul>
				</div>
				<form class="form-card">
					<div>
						<div class="Card ">
							<div class="card-header">
								<h3>영업시간</h3>
								<div class="card-menu " style="opacity: 0.99;">
									<button type="button" class="button change-button medium text">
										<i class="fas fa-pencil-alt"></i> 변경
									</button>
								</div>
							</div>
							<div class="form-group ">
								<h5 class="form-label">매일</h5>
								<div class="inline-values flex-1 ">
									<time>오전 11:00 ~ 다음 날 오전 03:00</time>
								</div>
							</div>
						</div>
					</div>
				</form>

				<form class="form-card form-card-active">
					<div>
						<div class="Card ">
							<div class="card-header">
								<h3>영업시간</h3>
								<div class="card-menu " style="opacity: 1;">
									<button type="button" class="button mr-1 small secondary">취소</button>
									<button type="submit" class="button small primary">적용</button>
								</div>
							</div>
							<div class="form-group no-divider">
								<div class="radio-group ">
									<label class="radio-button"><input type="radio"
										value="" checked="">
									<p class="label">평일/주말 동일</p></label><label class="radio-button"><input
										type="radio" value="">
									<p class="label">평일/주말 별도</p></label>
								</div>
							</div>
							<div class="form-group ">
								<div class="form-control-wrap">
									<div class="form-control ">
										<h5 class="form-label">매일</h5>
										<label class="switch-button"><input type="checkbox"
											value=""><span class="label">24시간</span><span
											class="checkbox"></span></label>
									</div>
								</div>
								<div class="card-columns ">
									<div class="form-control-wrap">
										<div class="form-control ">
											<h5 class="form-label form-sub-label">시작</h5>
											<select class="_31CECf9nJyK91ez9apcKQB"><option
													value="0">밤 12시</option>
												<option value="1">오전 1시</option>
												<option value="2">오전 2시</option>
												<option value="3">오전 3시</option>
												<option value="4">오전 4시</option>
												<option value="5">오전 5시</option>
												<option value="6">오전 6시</option>
												<option value="7">오전 7시</option>
												<option value="8">오전 8시</option>
												<option value="9">오전 9시</option>
												<option value="10">오전 10시</option>
												<option value="11">오전 11시</option>
												<option value="12">낮 12시</option>
												<option value="13">오후 1시</option>
												<option value="14">오후 2시</option>
												<option value="15">오후 3시</option>
												<option value="16">오후 4시</option>
												<option value="17">오후 5시</option>
												<option value="18">오후 6시</option>
												<option value="19">오후 7시</option>
												<option value="20">오후 8시</option>
												<option value="21">오후 9시</option>
												<option value="22">오후 10시</option>
												<option value="23">오후 11시</option></select><select
												class="_1HdZOQKzdMFA822bBz8vnt"><option value="0">0분</option>
												<option value="5">5분</option>
												<option value="10">10분</option>
												<option value="15">15분</option>
												<option value="20">20분</option>
												<option value="25">25분</option>
												<option value="30">30분</option>
												<option value="35">35분</option>
												<option value="40">40분</option>
												<option value="45">45분</option>
												<option value="50">50분</option>
												<option value="55">55분</option></select>
										</div>
									</div>
									<div class="form-control-wrap">
										<div class="form-control ">
											<h5 class="form-label form-sub-label">종료</h5>
											<select class="_31CECf9nJyK91ez9apcKQB"><option
													value="12">낮 12시</option>
												<option value="13">오후 1시</option>
												<option value="14">오후 2시</option>
												<option value="15">오후 3시</option>
												<option value="16">오후 4시</option>
												<option value="17">오후 5시</option>
												<option value="18">오후 6시</option>
												<option value="19">오후 7시</option>
												<option value="20">오후 8시</option>
												<option value="21">오후 9시</option>
												<option value="22">오후 10시</option>
												<option value="23">오후 11시</option>
												<option value="24">밤 12시 (다음 날)</option>
												<option value="25">오전 1시 (다음 날)</option>
												<option value="26">오전 2시 (다음 날)</option>
												<option value="27">오전 3시 (다음 날)</option>
												<option value="28">오전 4시 (다음 날)</option>
												<option value="29">오전 5시 (다음 날)</option>
												<option value="30">오전 6시 (다음 날)</option>
												<option value="31">오전 7시 (다음 날)</option>
												<option value="32">오전 8시 (다음 날)</option>
												<option value="33">오전 9시 (다음 날)</option>
												<option value="34">오전 10시 (다음 날)</option></select><select
												class="_1HdZOQKzdMFA822bBz8vnt"><option value="0">0분</option>
												<option value="5">5분</option>
												<option value="10">10분</option>
												<option value="15">15분</option>
												<option value="20">20분</option>
												<option value="25">25분</option>
												<option value="30">30분</option>
												<option value="35">35분</option>
												<option value="40">40분</option>
												<option value="45">45분</option>
												<option value="50">50분</option>
												<option value="55">55분</option></select>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</form>

				<form class="form-card">
					<div>
						<div class="Card ">
							<div class="card-header">
								<h3>휴무일</h3>
								<div class="card-menu " style="opacity: 0.99;">
									<button type="button" class="button change-button medium text">
										<i class="fas fa-pencil-alt"></i> 변경
									</button>
								</div>
							</div>
							<div class="form-group ">
								<h5 class="form-label">
									공휴일<small class="hint cursor-pointer "><i
										class="icon icon-help"></i></small>
								</h5>
								<div class="inline-values flex-1 ">
									<span class="text-disabled">설정안함</span>
								</div>
							</div>
							<div class="form-group ">
								<h5 class="form-label">정기휴무</h5>
								<div class="inline-values flex-1 ">
									<span class="text-disabled">설정안함</span>
								</div>
							</div>
							<div class="form-group ">
								<h5 class="form-label">임시휴무</h5>
								<div class="inline-values flex-1 ">
									<span class="text-disabled">설정안함</span>
								</div>
							</div>
						</div>
					</div>
				</form>
				<form class="form-card">
					<div>
						<div class="Card ">
							<div class="card-header">
								<h3>
									휴무일 안내
									<div class="tooltip-wrapper" style="margin-left: 8px;">
										<span class="tooltip-label"><button type="button">
												<i class="icon icon-help"></i>
											</button></span>
										<div class="tooltip-content-wrapper hide  start">
											<p class="tooltip-content">휴무일 안내는 변경 즉시 배달의민족 앱에 반영됩니다.
												정보 수정 시 주의하시기 바랍니다.</p>
											<button>
												<i class="icon icon-x"></i>
											</button>
										</div>
									</div>
								</h3>
								<div class="card-menu " style="opacity: 0.99;">
									<button type="button" class="button change-button medium text">
										<i class="fas fa-pencil-alt"></i> 변경
									</button>
								</div>
							</div>
							<div class="form-group no-divider">
								<div class="form-control-wrap form-control-inline">
									<div class="form-control ">
										<div class="inline-values flex-1 ">
											<span class="inline-value "><span
												class="text-disabled">설정안함</span></span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</form>
				<form class="form-card">
					<div>
						<div class="Card ">
							<div class="card-header">
								<h3>영업임시중지</h3>
							</div>
							<div class="form-group ">
								<div class="form-control-wrap">
									<div class="form-control ">
										<div class="inline-values flex-1 ">
											<span class="text-disabled">설정안함</span>
										</div>
									</div>
								</div>
								<div class="box-wrapper">
									영업임시중지에 대한 자세한 설정은 <a
										href="/self-service/shops/13195815/suspend"
										style="font-weight: bold;">영업임시중지</a> 메뉴에서 가능합니다.
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<div class="frame-promo">
		<div class="tip-container"></div>
	</div>
</div>


<%@include file="../../../ownerInc/jianSidebarBottom.jsp"%>
