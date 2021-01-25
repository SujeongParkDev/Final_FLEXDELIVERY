<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../../ownerInc/jianSidebarTop.jsp"%>

<!-- CSS start -->
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
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/oneToOne.css" />
<!-- CSS end -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/memberResources/vendor/jquery/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$('form[name=frmDelete]').submit(function(){
			if(!confirm('취소하시겠습니까?')){
				event.preventDefault();
			}
		});
		/*
		
		var type="";
		if($(this).attr('id')=='btStores'){
			type="stores";
		}else if($(this).attr('id')=='btAd'){
			type="adver";				
		}else if($(this).attr('id')=='btRegi'){
			type="btRegi";
		}
		
		$('form[name=frmDelete]').prop('action', 
				'<c:url value="/owner/menu2/tempDelete.do?mode='+type+'" />');
		$('form[name=frmDelete]').submit();
		
		
		*/
			
			
	
	});	
</script>

<div class="container">
	<div class="row">
		<div class="main-content container-fluid">
			<div class="page-title">
				<div class="row">
					<div class="col-12 col-md-6 order-md-1 order-last">
						<h3>나의 신청 내역</h3>
						<p class="text-subtitle text-muted">승인 신청 목록입니다.</p>
					</div>
				</div>
			</div>
			<section class="section">
				<div class="card">
					<div class="card-header">
						<!--  -->
					</div>
					<div class="card-body">
						<ul class="nav nav-tabs">
							<li class="nav-item"><a class="nav-link active"
								data-toggle="tab" href="#asd">승인 신청 목록 <span
									class="badge bg-transparent">3</span></a></li>

						</ul>

						<div class="tab-pane fade show active" id="asd">
							<br>
							<!-- Hoverable rows start -->
							<div class="row" id="table-hover-row">
								<div class="col-12">
									<div class="card">
										<div class="card-content">
											<!-- table hover -->
											<div class="table-responsive">
												<table class="table table-hover mb-0">
													<thead>
														<tr>
															<th>번호</th>
															<th colspan="3">신청서 종류</th>
															<th></th>
															<th>신청 일시</th>
															<th>상태</th>
															<th>취소하기</th>
														</tr>
													</thead>
													<tbody>
														<!-- 반복문 시작 -->
														<c:if test="${empty tempList }">
															<tr class="align_center">
																<td colspan="4">신청 내역이 없습니다.</td>
															</tr>
														</c:if>
														<form name="frmDelete" method="post" >
																<input type="hidden" name="no" value="${param.no}">
	
														<c:if test="${!empty tempList }">
															<!--반복 시작 -->
															<c:forEach var="map" items="${tempList }">
																<c:set var="i" value="${i+1 }" />
																<tr>
																	<td class="text-bold-500">${i }</td>
																	<c:choose>
																		<c:when
																			test="${empty  map['STORE_NO'] && !empty map['OWNERREGISTER_REGDATE']
																			}">
																			<td colspan="3">입점 신청</td>
																			<td></td>
																			<td><fmt:formatDate value="${map['STORE_REGDATE'] }" pattern="yyyy-MM-dd"/></td>
																			<c:if test="${!empty map['STORE_REGDATE'] }  ">
																				<td><span class="badge bg-green"> 승인 완료
																				</span></td>
																				<td><span class="badge bg-dark"></span></td>
																			</c:if>
																		</c:when>
																		<c:when
																			test="${!empty  map['STORE_NO'] && !empty map['OWNERREGISTER_REGDATE']}">
																			<td colspan="3">광고 신청</td>
																			<td></td>
																			<td><fmt:formatDate value="${map['STOREAD_REGDATE'] }" pattern="yyyy-MM-dd"/></td>
																			<c:if test="${map['AD_PAY_FLAG']=='Y' }">
																				<td><span class="badge bg-green"> 승인 완료
																				</span></td>
																				<td><span class="badge bg-dark"></span></td>
																			</c:if>
																			<c:if test="${map['AD_PAY_FLAG']=='N' }">
																			 <td><span class="badge bg-danger"> 승인 대기
																			</span></td>
																		<td><span class="badge bg-dark">
																		<input type="hidden" value="${map['STOREAD_NO'] }">
																		<input type="submit" id="btAd" name="" value="cancle"></span></td>
																			</c:if>
																		</c:when>
																		<c:otherwise>
																			<td colspan="3">사업자등록 신청</td>
																			<td></td>
															<td><fmt:formatDate value="${map['OWNERREGISTER_REGDATE'] }" pattern="yyyy-MM-dd"/></td>
																			<c:if test="${ map['A_AGREE_NO']==3 }">
																				<td><span class="badge bg-green"> 승인 완료
																				</span></td>
																				<td><span class="badge bg-dark"></span></td>
																			</c:if>
																		
																		</c:otherwise>
																	</c:choose>
																	<c:if
																		test="${(map['STORE_REGDATE']==null
																			|| map['OWNERREGISTER_REGDATE']==null 
																			|| map['STOREAD_REGDATE']==null 
																			 ) && map['AD_PAY_FLAG']=='N' }">
																			
																	</c:if>
																		
																</tr>
															</c:forEach>
														</c:if>
																		</form>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>
	</div>
</div>

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
<%@include file="../../../ownerInc/jianSidebarBottom.jsp"%>