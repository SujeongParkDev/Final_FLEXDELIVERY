
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../../ownerInc/jianSidebarTop.jsp"%>
<br>
<div class="row mt-3">
	<div class="col-md-2 col-sm-12"></div>
	<div class="col-md-9 col-sm-12">
		<div class="text-right">
			<button id="btAll" class="btn btn-primary">사용중인 쿠폰</button>
			<button id="btExpire" class="btn btn-primary">쿠폰 발급 내역</button>
			<button id="btRegi" class="btn btn-warning">쿠폰 신청</button>
		</div>
	</div>
</div>
<br>
<form name="frmList" method="post" action="<c:url value='/owner/menu2/couponused/couponUsed.do'/>">
	<div class="row" id="table-hover-row">
		<div class="col-md-1  col-sm-12"></div>
		<div class="col-12 col-md-10">
			<div class="card">
				<br><br><br>
				<div class="card-content">
					<div class="card-body">
						<p class="card-text text-center" style="font-size: 20px;">쿠폰 내역</p>
						<p class="card-text text-center">전체 사용중인 쿠폰 내역입니다.</p>
						<br> <br> <br> <br>
						<div class="row">
							<div class="col-md-2 col-12">
								<div class="col-md-10 col-sm-12"></div>
							</div>
						</div>
						<div class="table-responsive delck">
							<table class="table table-hover mb-5 deltable">
								<colgroup>
									<col style="width: 15%" />
									<col style="width: 15%" />
									<col style="width: 15%" />
									<col style="width: 20%" />
									<col style="width: 20%" />
									<col style="width: 20%" />
								</colgroup>
								<thead>
									<tr class="text-center">
									<th scope="col">쿠폰 번호 </th>
										<th scope="col">최소 금액</th>
										<th scope="col">할인 금액</th>
										<th scope="col">시작일</th>
										<th scope="col">종료일</th>
										<th scope="col">상태</th>
									</tr>
								</thead>
								<tbody>
									<!-- table 시작 -->
									<c:if test="${empty list }">
										<tr>
											<td colspan="6" class="text-center">데이터가 존재하지 않습니다.</td>
										</tr>
									</c:if>
									<c:set var="k" value="0" />
									<c:if test="${!empty list }">
										<c:forEach var="map" items="${list}">
											<tr class="text-center">
												<td>${map['R_COUPON_NO'] }</td>
												<td>${map['R_COUPON_MIN'] }</td>
												<td>${map['R_COUPON_DC'] }</td>
												<td>${fn:substring(map['S_C_START_DATE'], 0, 10)}</td>
												<td>${fn:substring(map['S_C_END_DATE'] , 0,10)}</td>
												<c:if test="${map['S_C_SERVICE'] == 'Y' }">
													<td>
														<span class="badge bg-success">사용중 </span>
														<span class="badge bg-light"><a href="#none" OnClick="btDelete(${map['S_C_BOX_NO']})" style="color:white;" >발급중지 </a></span>
													</td>
												</c:if>
												<c:if test="${map['S_C_SERVICE'] == 'N'}">
													<td>
														<span class="badge bg-danger">사용중지 </span>
														<span class="badge bg-light"><a href="#none" OnClick="btUpdate(${map['S_C_BOX_NO']})" style="color:white;" >재발급</a></span>
													</td>
												</c:if>
											</tr>
											<c:set var="k" value="${k+1 }" />
										</c:forEach>
									</c:if>
								</tbody>
							</table>
						</div>
						<!-- 테이블 끝 -->
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-2 col-sm-12"></div>
	</div>
</form>
<br>
<br>
<br>
<script type="text/javascript">
	$(function(){
		$('#btRegi').click(function(){
			location.href='<c:url value="/owner/menu2/couponused/couponRegi.do"/>';
		});
		$('#btExpire').click(function(){
			location.href='<c:url value="/owner/menu2/couponused/couponExpire.do"/>';
		});
		$('#btAll').click(function(){
			location.href='<c:url value="/owner/menu2/couponused/couponUsed.do"/>';
		});
	});

	function pageFunc(curPage){
		$('form[name=frmDate]').find('input[name=currentPage]').val(curPage);	
		$('form[name=frmDate]').submit();
	}

	function btDelete(scBoxNo){
		if(!confirm('쿠폰을 사용불가하게 변경하시겠습니까? ')){
			event.preventDefault();
		}else{
			location.href='<c:url value="/owner/menu2/couponused/deleteMulti.do?scBoxNo="/>'+scBoxNo;
			event.preventDefault();
		}
	}

	function btUpdate(scBoxNo){
		if(!confirm('쿠폰을 사용가능하게 변경하시겠습니까? ')){
			event.preventDefault();
		}else{
			location.href='<c:url value="/owner/menu2/couponused/updateCoupon.do?scBoxNo="/>'+scBoxNo;
			event.preventDefault();
		}
		
	}
	
</script>
<%@include file="../../../ownerInc/jianSidebarBottom.jsp"%>
