<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../../ownerInc/top.jsp"%>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/launchNext.css" />

<script type="text/javascript" src="../js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
</script>
<div id="root">
	<div class="Frame medium">
		<div class="frame-container pl-0 pt-0">
			<div class="frame-wrap">
				<div class="frame-body">
					<div id="ols-landing-page" class="my-5 mx-2 mt-sm-4">
						<a class="d-block pb-4 pb-sm-3 ml-0" href="/"> <!-- <img
							src="#"
							style="width: 146px; height: 22px;"> --> FLEXDELIVERY 주문 페이지
						</a>
						<div class="Card rounded ">
						<img
							src="file://Users/nagyeom/Desktop/KakaoTalk_Photo_2021-02-01-15-05-45.png"
															width="200" class="rounded float-right">
							<div class="card-header">
								<h3>FLEXDELIVERY 입점 🏩</h3>
							</div>
							<div class="card-description " style="position: relative;">
								입점 · 정산에 필요한 가게 정보들을 <br class="d-none d-sm-block">등록하고 광고를
								시작해보세요!
							</div>
							<div class="form-group ">
								<h5 class="form-label">
									<i class="fas fa-paperclip"></i>
									<div class="d-flex align-items-center">미리 준비해주세요!</div>
								</h5>
								<div class="inline-values flex-1 mt-1">
									<ul class="bullet-ul">
										<li>사업자등록증</li>
										<li>영업신고증</li>
										<li>정산받을 계좌의 통장사본</li>
										<li>가격을 포함한 메뉴판 이미지</li>
									</ul>
								</div>
							</div>
							<div class="form-group ">
								<h5 class="form-label">
									<i class="fas fa-paperclip"></i>
									<div class="d-flex align-items-center">입점 과정 미리보기</div>
								</h5>
								<div class="inline-values flex-1 mt-1">
									<ul class="bullet-ul number mb-half">
										<li>사전 설문</li>
										<li>가게, 사업자 정보 등록</li>
										<li>승인 절차 후 광고 시작</li>
									</ul>
									<ul class="bullet-ul small muted">
										<li>심사기간은 평균 2~3일 소요됩니다.</li>
									</ul>
								</div>
							</div>
							<div style="touch-action: none;">
								<div class="Tip mt-2">
									<div class="tip-content">
										<div class="tip-content-wrapper ">
											<div class="title">
												<div>
													<i class="fas fa-phone-alt"></i> 전화상담 채널 오픈!
												</div>
											</div>
											<div class="children-wrapper">
												<div>
													전화상담을 통해서도 입점 신청이 가능합니다.<br>사전 설문 후, 신청 방법 옵션에서
													선택해주세요.
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="text-right my-3">
								<button type="button" class="button medium primary" id=""
									data-toggle="modal" data-target="#exampleModal"
									data-whatever="@getbootstrap">입점 시작하기</button>

							</div>
						</div>
					</div>
				</div>
			</div>


			<div></div>
			<div class="Toast-container"></div>






	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">


<%@include file="launchRegister.jsp"%>

			</div>
		</div>
	</div>
		</div>
	</div>




	<%@include file="../../../ownerInc/bottom.jsp"%>