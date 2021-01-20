

<!-- 기능 테스트용 오너 페이지와 전혀 관계 xxxxxxx -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- top 시작-->
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/menuGroup.css">

<%@include file="../../../ownerInc/jianSidebarTop.jsp"%>
<!-- top 끝 -->

 
	<div class="row" id="basic-table">
	  <div class="col-md-2 col-sm-12"></div>
	  <div class="col-12 col-md-8">
	    <div class="card">
	      <br>
	      <div class="card-header">
	        <h4 class="card-title text-center" >메뉴 그룹</h4>
	      </div>
	      <div class="card-content">
	        <div class="card-body">
	          <p class="card-text text-center">메뉴그룹을 클릭하여 메뉴 선택으로 넘어가시거나 
	          						오른쪽의 버튼을 눌러 수정 및 삭제를 해주세요</p>
	          <div class="table-responsive">
	            <table class="table">
	              <thead>
	                <tr class="text-center">
	                  <th style="width:60%;">메뉴 그룹</th>
	                  <th style="width:30%;">수정/삭제</th>
	                   <th style="width:10%;"></th>
	                </tr>
	              </thead>
	              <tbody>
	                <tr class="text-center">
	                  <td class="text-bold-500"><a href="#"><strong>호랭이 돈까스</strong></a></td>
	                  <td>  
	                  		<button class="btn btn-outline-dark p-2" >수정</button>
	                  		<button class="btn btn-outline-dark p-2" >삭제</button>
	                  </td>
	                  <td></td>
	                  
	                </tr>
	                <tr class="text-center">
	                  <td class="text-bold-500"><a href="#"><strong>호랭이 치킨</strong></a></td>
	                    <td>  
	                  		<button class="btn btn-outline-dark p-2" >수정</button>
	                  		<button class="btn btn-outline-dark p-2" >삭제</button>
	                  </td>
	                  <td></td>
	                </tr>
	                <tr class="text-center">
	                  <td class="text-bold-500"><a href="#"><strong>호랭이 피자</strong></a></td>
	                    <td>  
	                  		<button class="btn btn-outline-dark p-2" >수정</button>
	                  		<button class="btn btn-outline-dark p-2" >삭제</button>
	                  </td>
	                  <td></td>
	                </tr>
	              </tbody>
	            </table>
	          </div>
	        </div>
	      </div>
	    </div>
	  </div>
	  <div class="col-md-2 col-sm-12"></div>
	</div> 

		<!-- <div class="row">
			 <div class="col-md-2 col-sm-12"></div>
			 <div class="col-12 col-md-8">
			 <div class="card">
				      <br>
				      <div class="card-header">
				      <div class="card-content">
				        <div class="card-body">
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
												<li><a href="/self-service/shops/13195815/menuGroups">메뉴편집</a></li>
												<li><a href="/self-service/shops/13195815/optionGroups"
													aria-current="page" class="active">옵션편집</a></li>
												<li><a href="/self-service/shops/13195815/representative">대표메뉴</a></li>
												<li><a href="/self-service/shops/13195815/intro">주문안내 ∙
														원산지</a></li>
											</ul>
										</div>
										<div class="m-sm-2 mb-2 "></div>
										<div class="m-sm-2 mb-2">
											<div class="mb-2 d-flex align-items-center justify-content-between">
												<div class="d-flex align-items-center pr-2"
													style="min-height: 40px; overflow: hidden;">
													<div class="_2o-ofT-zCakVpXgrfmhNTb">
														<span class="_32rJCKYEaCfWeciuicSr48"><a
															class="_2SiA9Ijd5AAIvIPbxsfvWS"
															href="/self-service/shops/13195815/optionGroups">옵션그룹</a><i
															class="icon icon-expand-right _3fZIL4TD7BNCBl8KsRy6Wm"></i></span><span
															class="_2D8352-Bc91pdWDH0IxzwL">추가선택</span>
													</div>
												</div>
												<button type="button" class="button flex-shrink-0 small primary">옵션
													추가</button>
											</div>
										</div>
										<div class="m-sm-2 mb-2">
											<div class="box-wrapper">
												<div class="Badge mr-1">
													<div class="text-badge default">옵션 수</div>
												</div>
												최대 2개 선택 가능
												<button type="button" class="button py-0 px-2 text text">변경</button>
											</div>
											<div class="box-wrapper">
												<div class="mb-1">
													<div class="Badge mr-1 flex-shrink-0">
														<div class="text-badge default">연결메뉴</div>
													</div>
													수정사항이 다음 메뉴에 동시 적용됩니다.
												</div>
												<div class="text-xsmall text-sub">
													<div>®토핑 1등 ®배달비일부무료® 페퍼로니피자, 슈퍼 콤비네이션 피자, 하와이언피자, 리얼 딥 고구마
														피자, 달달 소불고기 피자, 비프쉬림프피자, 핫치킨쉬림프피자, 쿼드라피자, 황금</div>
													<div>
														더보기<i class="icon icon-arrow-down ml-1"></i>
													</div>
												</div>
											</div>
										</div>
										<div class="Card ">
											<ul class="List   ">
												<li class="ListItem hover-off"><div class="ListItem-inner">
														<div class="ListItem-wrapper">
															<div class="ListItem-header">
																<div class="flex-1">
																	<div class="ListItem-title">
																		<h4 class="flex-1" style="word-break: break-all;">
																			<span class="ml-half">치즈크러스트(맛돌이!강추~!!!)</span>
																		</h4>
																	</div>
																	<div class="ListItem-description" style="max-width: 80%;">
																		<ul class="bullet-ul">
																			<li>3,000 원</li>
																		</ul>
																	</div>
																</div>
															</div>
															<div class="ListItem-info"></div>
														</div>
														<div class="ListItem-action">
															<button class="py-2 pl-2 pr-1 mr-m-1 text-sub" type="button"
																style="font-size: 24px;">
																<i class="icon icon-dots"></i>
															</button>
														</div>
													</div></li>
												<li class="ListItem hover-off"><div class="ListItem-inner">
														<div class="ListItem-wrapper">
															<div class="ListItem-header">
																<div class="flex-1">
																	<div class="ListItem-title">
																		<h4 class="flex-1" style="word-break: break-all;">
																			<span class="ml-half">고구마크러스트</span>
																		</h4>
																	</div>
																	<div class="ListItem-description" style="max-width: 80%;">
																		<ul class="bullet-ul">
																			<li>3,000 원</li>
																		</ul>
																	</div>
																</div>
															</div>
															<div class="ListItem-info"></div>
														</div>
														<div class="ListItem-action">
															<button class="py-2 pl-2 pr-1 mr-m-1 text-sub" type="button"
																style="font-size: 24px;">
																<i class="icon icon-dots"></i>
															</button>
														</div>
													</div></li>
												<li class="ListItem hover-off"><div class="ListItem-inner">
														<div class="ListItem-wrapper">
															<div class="ListItem-header">
																<div class="flex-1">
																	<div class="ListItem-title">
																		<h4 class="flex-1" style="word-break: break-all;">
																			<span class="ml-half">크림치즈크러스트</span>
																		</h4>
																	</div>
																	<div class="ListItem-description" style="max-width: 80%;">
																		<ul class="bullet-ul">
																			<li>3,000 원</li>
																		</ul>
																	</div>
																</div>
															</div>
															<div class="ListItem-info"></div>
														</div>
														<div class="ListItem-action">
															<button class="py-2 pl-2 pr-1 mr-m-1 text-sub" type="button"
																style="font-size: 24px;">
																<i class="icon icon-dots"></i>
															</button>
														</div>
													</div></li>
												<li class="ListItem hover-off"><div class="ListItem-inner">
														<div class="ListItem-wrapper">
															<div class="ListItem-header">
																<div class="flex-1">
																	<div class="ListItem-title">
																		<h4 class="flex-1" style="word-break: break-all;">
																			<span class="ml-half">리치골드</span>
																		</h4>
																	</div>
																	<div class="ListItem-description" style="max-width: 80%;">
																		<ul class="bullet-ul">
																			<li>4,000 원</li>
																		</ul>
																	</div>
																</div>
															</div>
															<div class="ListItem-info"></div>
														</div>
														<div class="ListItem-action">
															<button class="py-2 pl-2 pr-1 mr-m-1 text-sub" type="button"
																style="font-size: 24px;">
																<i class="icon icon-dots"></i>
															</button>
														</div>
													</div></li>
												<li class="ListItem hover-off"><div class="ListItem-inner">
														<div class="ListItem-wrapper">
															<div class="ListItem-header">
																<div class="flex-1">
																	<div class="ListItem-title">
																		<h4 class="flex-1" style="word-break: break-all;">
																			<span class="ml-half">치즈추가</span>
																		</h4>
																	</div>
																	<div class="ListItem-description" style="max-width: 80%;">
																		<ul class="bullet-ul">
																			<li>3,000 원</li>
																		</ul>
																	</div>
																</div>
															</div>
															<div class="ListItem-info"></div>
														</div>
														<div class="ListItem-action">
															<button class="py-2 pl-2 pr-1 mr-m-1 text-sub" type="button"
																style="font-size: 24px;">
																<i class="icon icon-dots"></i>
															</button>
														</div>
													</div></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<div class="frame-promo">
								<div class="tip-container"></div>
							</div>
						</div>
						</div>
					</div>
				</div>
			</div>
			</div>
			<div class="col-md-2 col-sm-12"></div>
		</div> -->
<!-- bottom 시작-->
<%@include file="../../../ownerInc/jianSidebarBottom.jsp"%>

