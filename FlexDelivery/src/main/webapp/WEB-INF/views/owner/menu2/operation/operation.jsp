<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<%@include file="../../../ownerInc/jianSidebarTop.jsp"%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.6.9/core.min.js"></script>

<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/operation.css" />
<link rel="stylesheet" href="https://ceo-cdn.baemin.com/cdn/ceo-selfservice/css/ceo-selfservice.css?ts=20210119110213">


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
						피자알파 서면점 <i class="icon icon-arrow-down"></i>
					</h3>
					<p class="text-sub mt-1">피자 · 배달의민족 · W13195815</p>
				</section>
			</div>
			<div>
				<div class="tabs TabNav">
					<ul>
						<li><a aria-current="page" class="active"
                     href="<c:url value='/owner/menu2/basic/basic.do'/>">기본정보</a></li>
                  <li><a href="<c:url value='/owner/menu2/operation/operation.do'/>">운영정보</a></li>
					</ul>
				</div>
				<form class="form-card">
					<div>
						<div class="Card ">
							<div class="card-header">
								<h3>영업시간</h3>
								<div class="card-menu " style="opacity: 0.99;">
									<button type="button" class="button change-button medium text">
										<i class="icon icon-pencil"></i> 변경
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
				<form class="form-card">
					<div>
						<div class="Card ">
							<div class="card-header">
								<h3>휴게시간</h3>
								<div class="card-menu " style="opacity: 0.99;">
									<button type="button" class="button change-button medium text">
										<i class="icon icon-pencil"></i> 변경
									</button>
								</div>
							</div>
							<div class="form-group ">
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
								<h3>휴무일</h3>
								<div class="card-menu " style="opacity: 0.99;">
									<button type="button" class="button change-button medium text">
										<i class="icon icon-pencil"></i> 변경
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
										<i class="icon icon-pencil"></i> 변경
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
