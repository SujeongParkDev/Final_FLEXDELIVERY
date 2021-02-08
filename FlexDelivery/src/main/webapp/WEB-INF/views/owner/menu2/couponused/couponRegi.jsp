
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../../ownerInc/jianSidebarTop.jsp"%>
<!-- 메뉴 버튼 -->
<br>
<div class="row mt-3">
	<div class="col-md-2 col-sm-12"></div>
	<div class="col-md-8 col-sm-12">
		<div class="text-right">
			<button id="btAll" class="btn btn-primary">전체 조회</button>
			<button id="btRegi" class="btn btn-outline-warning">쿠폰 신청</button>
		</div>
	</div>
	<div class="col-md-2 col-sm-12"></div>
</div>
<br>
<!-- 테이블 시작 -->
<div class="row" id="table-hover-row">
	<div class="col-md-1  col-sm-12"></div>
	<div class="col-12 col-md-10">
		<div class="card">
			<br>
			<div class="card-content">
				${list }
				<div class="card-body">
					<p class="card-text text-center" style="font-size: 20px;">쿠폰 내역
					</p>
					<p class="card-text text-center">전체 발급된 구폰 내역입니다.</p>
					<br>
					<br> <br>
					<br>
					<br>
					<br>
					<!--  -->
					<div class="table-responsive">
						<table class="table table-hover mb-5">
							<thead>
								<tr class="text-center">
									<th>쿠폰 번호</th>
									<th>주문 최소 금액</th>
									<th>할인 가격</th>
									<th>신청하기</th>
								</tr>
							</thead>
							<tbody>
								<!-- table 시작 -->
								<c:if test="${empty list }">
									<tr>
										<td colspan="4" class="text-center">데이터가 존재하지 않습니다.</td>
									</tr>
								</c:if>
								<c:if test="${!empty list }">
									<c:forEach var="vo" items="${list}">
										<tr class="text-center">
											<td>${vo.rCouponNo}</td>
											<td>${vo.rCouponMin }</td>
											<td>${vo.rCouponDc}</td>
											<td><button type="button"
													class="btn btn-primary round  mr-1 mb-1" data-toggle="modal" id="modalregister${vo.rCouponNo}"
													data-target="#exampleModal" >신청</button></td><!-- 왜 넘버가 모달로 안 넘어갈까...  -->
										</tr>
									</c:forEach>
								</c:if>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-2 col-sm-12"></div>
	</div>
	<!-- 테이블 끝 -->
	<!--비밀 번호 확인 모달  -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="쿠폰 등록 본인 확인 모달 " aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<div class="text-right">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="text-left">
						<h4 class="modal-title" id="exampleModalLabel">본인 확인</h4>
					</div>
				</div>
				<p>${list}</p>
				<form name="frmDelete" method="post"
					action="<c:url value='/owner/menu2/couponused/couponRegi.do'/>">
					<input type="text" id="no" name="no" value="${vo.rCouponNo}">
					<div class="modal-body">
						<div class="form-group">
							<label for="recipient-name" class="control-label">비밀번호를
								입력하세요. </label> <input type="password" class="form-control" id="pwd"
								name="pwd" />
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">나가기</button>
						<input type="submit" class="btn btn-primary" value="확인 ">
					</div>
				</form>
			</div>
		</div>
	</div>
	<script>
    $(function(){
		$('form[name=frmDelete]').submit(function(){
			if($('#pwd').val().length<1){
				alert('비밀번호를 입력하세요');
				$('#pwd').focus();
				event.preventDefault();
			}
		});
		$('#btAll').click(function(){
			location.href='<c:url value="/owner/menu2/couponused/couponUsed.do"/>';
		});
	});	
    
	</script>

	<%@include file="../../../ownerInc/jianSidebarBottom.jsp"%>