<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../../../ownerInc/jianSidebarTop.jsp"%>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.6.9/core.min.js"></script>

<!-- <script type="text/javascript">
	$(function() {
		$('#btLogo').click(function() {
			location.href = '<c:url value="/owner/menu2/basic/basicLogo.do"/>';
		});
	});
</script> -->


<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/basic.css" />
<link rel="stylesheet"
	href="https://ceo-cdn.baemin.com/cdn/ceo-selfservice/css/ceo-selfservice.css?ts=20210119110213">
<link rel="stylesheet"
	href="path/to/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://kit.fontawesome.com/e42a7f130f.js"
	crossorigin="anonymous"></script>


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
						<li><a aria-current="page" class="active"
							href="<c:url value='/owner/menu2/basic/basic.do'/>">기본정보</a></li>
						<li><a
							href="<c:url value='/owner/menu2/operation/operation.do'/>">운영정보</a></li>
					</ul>
				</div>
				<form class="form-card">
					<div>
						<div class="Card ">
							<div class="card-header">
								<h3>가게 정보</h3>
							</div>
							<div class="form-group ">
								<h5 class="form-label">로고</h5>
								<div class="card-columns ">
									<div class="mr-2 mb-2 shop-logo">
										<img
											src="https://img-cdn.baemin.com/cache/shop/logo/2020/7/6/10903606_logoc_13195815.jpg">
									</div>
									<div class="box-wrapper flex-1 small">
										로고 변경은
										<button type="button" class="button p-0 text text" method="post" enctype="multipart/form-data">
											로고변경요청</button>
										에서 하실 수 있습니다.
										<ul class="bullet-ul small muted">
											<li>영업일 기준 최대 5일 이내 처리됩니다.</li>
										</ul>
									</div>
								</div>
							</div>
							<div class="form-group ">
								<h5 class="form-label">가게 이름</h5>
								<div class="inline-values flex-1 mb-1">피자알파 서면점</div>
								<ul class="bullet-ul small muted">
									<li>변경이 필요한 경우 고객센터로 문의해주세요.</li>
								</ul>
							</div>
							<div class="form-group ">
								<h5 class="form-label">가게 번호</h5>
								<div class="inline-values flex-1 ">13195815</div>
							</div>
							<div class="form-group ">
								<h5 class="form-label">실제 위치</h5>
								<div class="inline-values flex-1 mb-1">(47360) 부산광역시 부산진구
									범천동 886-12 1층 피자알파(범천동)</div>
								<ul class="bullet-ul mt-0 small muted">
									<li>위 정보의 변경이 필요한 경우 고객센터로 문의해 주세요.</li>
								</ul>
								<button type="button" class="button mt-2 p-0 text text">노출위치
									변경</button>
							</div>
						</div>
					</div>
				</form>
				<form class="form-card">
					<div>
						<div class="Card ">
							<div class="card-header">
								<h3>가게 상태</h3>
								<div class="card-menu " style="opacity: 0.99;">
									<button type="button" class="button change-button medium text">
										<i class="fas fa-pencil-alt"></i> 변경
									</button>
								</div>
							</div>
							<div class="form-group no-divider" style="min-height: auto;">
								<div class="form-control-wrap form-control-inline">
									<div class="form-control ">
										<div class="inline-values flex-1 ">
											<span class="inline-value ">영업</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</form>

				<form class="form-card form-card-active">
					<div>
						<div class="Card ">
							<div class="card-header">
								<h3>가게 상태</h3>
								<div class="card-menu " style="opacity: 1;">
									<button type="button" class="button mr-1 small secondary">취소</button>
									<button type="submit" class="button small primary">적용</button>
								</div>
							</div>
							<div class="form-group no-divider" style="min-height: auto;">
								<div class="form-control-wrap">
									<div class="form-control ">
										<select><option value="OPEN">영업</option>
											<option value="STOP">노출정지</option></select>
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
								<h3>가게 전화번호</h3>
								<div class="card-menu " style="opacity: 0.99;">
									<button type="button" class="button change-button medium text">
										<i class="fas fa-pencil-alt"></i> 변경
									</button>
								</div>
							</div>
							<div class="form-group telephone-list">
								<h5 class="form-label">대표번호</h5>
								<div class="form-control-wrap">
									<div class="form-control ">
										<div class="inline-values flex-1 telephone">
											051-633-5433<span class="text-sub">&nbsp;&nbsp;050-6457-5605</span>
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
								<h3>가게 영상・사진</h3>
								<div class="card-menu " style="opacity: 0.99;">
									<button type="button" class="button change-button medium text">
										<i class="fas fa-pencil-alt"></i> 변경
									</button>
								</div>
							</div>
							<div class="form-group p-0">
								<div class="text-disabled h5 px-sm-2 pt-sm-2 pb-sm-2 px-4 pt-4">등록된
									내용이 없습니다.</div>
							</div>
						</div>
					</div>
				</form>
				<form class="form-card">
					<div>
						<div class="Card ">
							<div class="card-header">
								<h3>가게 소개</h3>
								<div class="card-menu " style="opacity: 0.99;">
									<button type="button" class="button change-button medium text">
										<i class="fas fa-pencil-alt"></i> 변경
									</button>
								</div>
							</div>
							<div class="form-group no-divider" style="min-height: auto;">
								<div class="form-control-wrap form-control-inline">
									<div class="form-control ">
										<div class="inline-values flex-1 ">
											<span class="inline-value ">♡피자알파는 흑미도우를 사용합니다.<br>♡(건강한
												담백함과 숙성도우의 쫄깃함)<br>♡자연산 최고급 치즈를 사용합니다.<br> <br>하나
												☆ 박리다매♡<br>피자는 절대 허접하지 않습니다.<br>드셔보시고 판단 해주세요.<br>이
												불경기에 비싼 피자 부담스럽습니다.<br>어려움을 고객님과 함께 하겠습니다.<br> <br>둘
												☆ 재료선정과 맛♡<br>피자알파만의 색깔로 아낌없는 재료와 푸짐한 가성비 그리고 어디서도 맛볼 수
												없는 맛<br>저렴한 가격에도 최상의 맛과 퀄리티로 고객님들에게 만족시켜드릴 수 있도록
												노력하겠습니다.<br>아무리 금액이 저렴해도 맛이 없다면 고객님들의 선택을 받을 수 없습니다.<br>
												<br>셋 ☆ 초심♡<br>처음 가게 오픈해서 처음 주문 받았던 그 감사한 마음을
												"절대"잊지 않고 항상 고객님들의 말씀을 새겨듣는 매장으로 거듭나겠습니다.
											</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</form>


				<form class="form-card form-card-active">
					<div>
						<div class="Card ">
							<div class="card-header">
								<h3>가게 소개</h3>
								<div class="card-menu " style="opacity: 1;">
									<button type="button" class="button mr-1 small secondary">취소</button>
									<button type="submit" class="button small primary">적용</button>
								</div>
							</div>
							<div class="form-group no-divider" style="min-height: auto;">
								<div class="form-control-wrap">
									<div class="form-control ">
										<div class="textarea-container ">
											<textarea data-component="[object Object]" class="" rows="13"
												maxlength="500" placeholder="">♡피자알파는 흑미도우를 사용합니다.
♡(건강한 담백함과 숙성도우의 쫄깃함)
♡자연산 최고급 치즈를 사용합니다.

하나 ☆ 박리다매♡
피자는 절대 허접하지 않습니다.
드셔보시고 판단 해주세요.
이 불경기에 비싼 피자 부담스럽습니다.
어려움을 고객님과 함께 하겠습니다.

둘 ☆ 재료선정과 맛♡
피자알파만의 색깔로 아낌없는 재료와 푸짐한 가성비 그리고 어디서도 맛볼 수 없는 맛
저렴한 가격에도 최상의 맛과 퀄리티로 고객님들에게 만족시켜드릴 수 있도록 노력하겠습니다.
아무리 금액이 저렴해도 맛이 없다면 고객님들의 선택을 받을 수 없습니다.

셋 ☆ 초심♡
처음 가게 오픈해서 처음 주문 받았던 그 감사한 마음을 "절대"잊지 않고 항상 고객님들의 말씀을 새겨듣는 매장으로 거듭나겠습니다.</textarea>
											<span class="text-count">118</span>
										</div>
									</div>
								</div>
								<ul class="bullet-ul small muted">
									<li>가게소개는 변경 즉시 배달의민족 앱에 반영됩니다. 정보 수정 시 주의 하시기 바랍니다.</li>
									<li>배달의민족은 플랫폼 서비스로서, 공정한 경쟁을 해치거나 고객의 선택에 혼선을 주는 키워드와 문구를
										입력할 수 없도록 합니다. 게시 영역의 목적에 맞게 활용해 주시길 바랍니다.</li>
								</ul>
							</div>
						</div>
					</div>
				</form>

				<form class="form-card">
					<div>
						<div class="Card ">
							<div class="card-header">
								<h3>
									찾아가는 길 안내 <small class="hint cursor-pointer "><i
										class="icon icon-help"></i></small>
								</h3>
								<div class="card-menu " style="opacity: 0.99;">
									<button type="button" class="button change-button medium text">
										<i class="fas fa-pencil-alt"></i> 변경
									</button>
								</div>
							</div>
							<div class="form-group no-divider" style="min-height: auto;">
								<div class="inline-values flex-1 ">
									<span class="text-disabled">주문 고객이 우리 가게를 쉽게 찾을 수 있습니다.
										지금 사용해보세요.</span>
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

<div>
	<div class="Dialog     on  " style="display: none;" >
		<form novalidate="" class="dialog on lg ">
			<div class="header">
				<div class="header-close">
					<button class="close" type="button">나가기</button>
				</div>
				<div class="header-title">
					<h3>가게 로고 변경</h3>
				</div>
				<div class="header-hint"></div>
			</div>
			<div class="wrap">
				<a class="content-begin"></a>
				<div class="content">
					<div class="form-group ">
						<h5 class="form-label">로고 이미지</h5>
						<div class="uploader-wrapper ">
							<span><input type="file" multiple=""
								accept=".jpg, .jpeg, .png, .pdf, .zip"
								style="position: absolute; left: -1000px; visibility: hidden;"><span><button
										type="button" class="button uploader-btn  small text">
										<i class="icon icon-plus"></i>
										<div>이미지 (0/5)</div>
									</button></span></span>
						</div>
						<ul class="bullet-ul small muted">
		                     <input type="file" id="upfile" name="upfile" class="btn text-right" accept=".gif, .jpg, .png" />
                             <br><span style="margin-left:60px;"></span>  
							<li>15MB 이하, JPG, PNG, ZIP, PDF 형식의 파일만 등록할 수 있습니다. (최대 5개까지
								첨부가능)</li>
						</ul>
					</div>
					<div class="form-group ">
						<h5 class="form-label">요청 내용</h5>
						<div class="form-control-wrap">
							<div class="form-control ">
								<div class="textarea-container ">
									<textarea data-component="[object Object]" class="" rows="3"
										required="" maxlength="500" placeholder=""></textarea>
									<span class="text-count">500</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="footer">
				<button type="submit" class="button popup primary">요청</button>
			</div>
		</form>
	</div>
</div>

<script src="https://ceo-cdn.baemin.com/cdn/ceo-selfservice/js/venders.js?ts=20210202090306"></script>
<script src="https://ceo-cdn.baemin.com/cdn/ceo-selfservice/js/ceo-selfservice.js?ts=20210202090306"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDJxgOJrxP4BZILYKGwScHT1_9ionLH7qg&amp;language=ko&amp;libraries=geometry&amp;callback=__gmapLoaded"></script>

<%@include file="../../../ownerInc/jianSidebarBottom.jsp"%>
