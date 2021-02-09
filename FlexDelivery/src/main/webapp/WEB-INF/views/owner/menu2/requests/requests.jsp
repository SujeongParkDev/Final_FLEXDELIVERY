<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../../ownerInc/jianSidebarTop.jsp"%>
<style>
input {
	border: 1px solid rgb(212, 212, 212);
	border-radius: 5px;
	height: 35px;
}
</style>
<!-- 버튼 4개 쓸까 말까 ? ? 깔끔하게 지우는게 낫겟지 ?-->
<br>
<!-- 셀렉 옵션 선택 내용 -->
<div class="row" id="basic-table">
	<div class="col-md-2 col-sm-12"></div>
	<div class="col-12 col-md-8">
		<div class="card">
			<br>
			<div class="card-content">
				<div class="card-body">
					<p class="card-text text-center" style="font-size: 20px;">요청 처리 현황</p>
					<p class="card-text text-center">승인 대기 상태일 경우 상세보기에서 확인 후 취소하실 수 있습니다.</p>
					<br> <br>
					<div class="row">
						<!-- 데이터 피커  -->
						<div class="col-md-8 col-12"></div>
						<div class="col-md-4 col-sm-12">
							<select class="form-select groupChoice p-2 " valaue="신청 리스트 선택 " name="menuGroup" id="menuGroupSelect" style="overflow: auto;">
								<option class="m-3 text-center" style="font-size: 17px;" selected value="0">승인 목록 선택</option>
								<option value="1">사업자 등록 신청</option>
								<option value="2">입점 등록 신청</option>
								<option value="3">광고 신청 내역 </option>
								<option value="4">점포 정보 변경 신청</option>
							</select> <br>
						</div>
						<div class="col-md-4 col-sm-12"></div>
					</div>
					<div class="table-responsive">
						<table class="table">
							<thead>
								<tr class="text-center" style="font-size: 13px;">
									<th style="width: 30%;">승인 목록</th>
									<th style="width: 22%;">신청 일자</th>
									<th style="width: 22%;">승인 상태</th>
									<th style="width: 22%;">상세 보기</th>
									<th style="width: 4%;" class="pl-3"></th>
								</tr>
							</thead>
							<tbody id="optionTable">
								<!--  -->
								<div class="opsiton1" id="tempDiv">
								<c:if test="${!empty selectTemp }">
									<c:forEach var="tempVo" items="${selectTemp }">
										<tr class="text-center">
											<td>점포 정보 변경 신청</td>
											<td>${fn:substring(tempVo['T_REGDATE'], 0,10) }</td>
											<td class="text-bold-500">
											<c:if test="${tempVo['A_AGREE_NO'] == 1 }">
													<span class="badge bg-light">승인대기</span>
												</c:if> 
												<c:if test="${tempVo['A_AGREE_NO'] == 2 }">
													<span class="badge bg-danger">신청취소</span>
												</c:if> 
												<c:if test="${tempVo['A_AGREE_NO'] == 3 }">
													<span class="badge bg-success">승인완료</span>
												</c:if> 
												<c:if test="${tempVo['A_AGREE_NO']  == 4 }">
													<span class="badge bg-danger">승인반려</span>
												</c:if>
												<c:if test="${tempVo['A_AGREE_NO']  == 5 }">
													<span class="badge bg-danger">변경대기</span>
												</c:if>
												<c:if test="${tempVo['A_AGREE_NO']  == 6 }">
													<span class="badge bg-success">변경완료</span>
												</c:if>
												<c:if test="${tempVo['A_AGREE_NO']  == 7 }">
													<span class="badge bg-danger">변경반려</span>
												</c:if>
												<c:if test="${tempVo['A_AGREE_NO']  == 8 }">
													<span class="badge bg-danger">변경반려</span>
												</c:if>
												</td>
											<td class="p-0">
												<button class="buttons badge bg-dark" onclick="gotempVo(${tempVo['T_NO']})">상세 보기</button></td>
											<td></td>
										</tr>
									</c:forEach>
								</c:if>
								</div>
								<!--  -->
								<!-- 광고 디폴트 N이 안들어와서 어떻게 해줘야할까  PropertyNotFoundException: -->
								<c:if test="${!empty selectAd }">
									<c:forEach var="adVo" items="${selectAd }">
										<tr class="text-center">
											<td>광고 신청 내역 </td>
											<td>${fn:substring(adVo['STOREAD_REGDATE'] , 0,10) }</td>
											<td class="text-bold-500">
												<c:if test="${adVo['AD_PAY_FLAG'] == 'N' }">
													<span class="badge bg-light">승인대기</span>
												</c:if> 
												<c:if test="${adVo['AD_PAY_FLAG'] == 'Y' }">
													<span class="badge bg-success">승인완료</span>
												</c:if></td>
											<td class="p-0">
												<button class="buttons badge bg-dark" onclick="goAD(${adVo['STOREAD_NO']})">상세 보기</button></td>
											<td></td>
										</tr>
									</c:forEach>
								</c:if>
								<!--  -->
								<c:if test="${!empty selectStore }">
									<c:forEach var="stVo" items="${selectStore }">
										<tr class="text-center">
											<td>입점 등록 신청</td>
											<td>${fn:substring(stVo['STORE_REGDATE'] , 0,10) }</td>
											<td class="text-bold-500">
												<c:if test="${stVo['A_AGREE_NO'] == 1 }">
													<span class="badge bg-light">승인대기</span>
												</c:if>
												 <c:if test="${stVo['A_AGREE_NO']== 2 }">
													<span class="badge bg-danger">신청취소</span>
												</c:if>
												 <c:if test="${stVo['A_AGREE_NO']== 3 }">
													<span class="badge bg-success">승인완료</span>
												</c:if> 
												<c:if test="${stVo['A_AGREE_NO'] == 4 }">
													<span class="badge bg-danger">승인반려</span>
												</c:if></td>
											<td class="p-0">
												<button class="buttons badge bg-dark" onclick="goStores(${stVo['STORE_NO']})">상세 보기</button></td>
											<td></td>
										</tr>
									</c:forEach>
								</c:if>
								<!--  -->
								<c:if test="${!empty RegiList }">
									<c:forEach var="regiVo" items="${RegiList }">
										<tr class="text-center">
											<td>사업자 등록 신청</td>
											<td>${fn:substring(regiVo['OWNERREGISTER_REGDATE'] , 0,10) }</td>
											<td class="text-bold-500">
												<c:if test="${regiVo['A_AGREE_NO'] == 1 }">
													<span class="badge bg-light">승인대기</span>
												</c:if>
												 <c:if test="${regiVo['A_AGREE_NO']== 2 }">
													<span class="badge bg-danger">신청취소</span>
												</c:if>
												 <c:if test="${regiVo['A_AGREE_NO']== 3 }">
													<span class="badge bg-success">승인완료</span>
												</c:if>
												 <c:if test="${regiVo['A_AGREE_NO'] == 4 }">
													<span class="badge bg-danger">승인반려</span>
												</c:if></td>
											<td class="p-0">
												<button class="buttons badge bg-dark" onclick="goDetail(${regiVo['O_REGISTER_NO']})">상세 보기</button></td>
											<td></td>
										</tr>
									</c:forEach>
								</c:if>
								<!--  -->
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-md-2 col-sm-12"></div>
</div>



<script type="text/javascript">
function goDetail(no){
	var windowW = 500;  // 창의 가로 길이
    var windowH = 500;  // 창의 세로 길이
    var left = Math.ceil((window.screen.width - windowW)/2);
    var top = Math.ceil((window.screen.height - windowH)/2);
    
   
$(function(){
  var url="<c:url value='/owner/menu2/requests/tempRegi.do?no='/>"+no;
  
	window.open(url,"승인 목록 상세 정보","l top="+top+", left="+left+", height="+windowH+", width="+windowW,"scroll-x="+no);
	event.preventDefault();
	
});
}//detail
function goStores(no){
	var windowW = 500;  // 창의 가로 길이
    var windowH = 700;  // 창의 세로 길이
    var left = Math.ceil((window.screen.width - windowW)/2);
    var top = Math.ceil((window.screen.height - windowH)/2);
    
    // 정상 작동이프 제거하면 됨 
$(function(){
  	  var url="<c:url value='/owner/menu2/requests/Store.do?no='/>"+no;
	window.open(url,"승인 목록 상세 정보","l top="+top+", left="+left+", height="+windowH+", width="+windowW,"scroll-x="+no);
	event.preventDefault();
	
});
}//detail

function goTemp(no){
	var windowW = 500;  // 창의 가로 길이
    var windowH = 700;  // 창의 세로 길이
    var left = Math.ceil((window.screen.width - windowW)/2);
    var top = Math.ceil((window.screen.height - windowH)/2);
    
    // 정상 작동이프 제거하면 됨 
$(function(){
  	  var url="<c:url value='/owner/menu2/requests/tempStore.do?no='/>"+no;
	window.open(url,"승인 목록 상세 정보","l top="+top+", left="+left+", height="+windowH+", width="+windowW,"scroll-x="+no);
	event.preventDefault();
	
});
}//detail

function goAD(no){
	var windowW = 500;  // 창의 가로 길이
    var windowH = 500;  // 창의 세로 길이
    var left = Math.ceil((window.screen.width - windowW)/2);
    var top = Math.ceil((window.screen.height - windowH)/2);
    
    // 정상 작동이프 제거하면 됨 
$(function(){
  	  var url="<c:url value='/owner/menu2/requests/tempAD.do?no='/>"+no;
	window.open(url,"승인 목록 상세 정보","l top="+top+", left="+left+", height="+windowH+", width="+windowW,"scroll-x="+no);
	event.preventDefault();
	
});
}//detail

/*
 * 

	//그룹을 클릭하면 등록 버튼과 메뉴 셀렉트가 보인다.
	$(function() {
		$('.groupChoice').change(function() {
			$('#btOptionWrite').css('display', 'block');
				$.ajax({
					url : "<c:url value='/owner/menu2/requests/selectRegi.do'/>",
						data : "no" + $(this).val(),
						dataType : "json",
						type : "GET",
						success : function(res) {
						//alert(res);
						//alert(res.length);
						if (res.length > 0) {
							var str = "";
							str += "<option value='0'>메뉴 선택</option><br>";
							$.each(res,function(idx,item) {
												str += "<option value='"+item.menuNo+"' class='menuClick'>"
														+ item.menuName
														+ "</option><br>";
											});
							$('#menuSelect').html(str);
						}
					},
					error : function(xhr, status, error) {
						alert("error!! : " + error);
					}
				});

	});

	});

	//메뉴 등록을 누르면 모달창이 뜬다.
	$(function() {
		$('#detailRegi').click(function() {
			$.ajax({
					url : "<c:url value='/owner/menu2/requests/detailRegi.do'/>",
					data : "oRegisterNo="+ $('#regiNo').val(),
					dataType : "json",
					type : "GET",
					success : function(res) {
						//alert(res);
						//alert(res.length);

						var str = "";
						str += "<label>그룹이름</label>&nbsp;";
						str += "<input type='text' readonly='readonly' class='form-control text-right' 'name='oRegisterNo' value='"+res.oRegisterNo+"'>";
						//str += "<img src='"+${pageContext.request.contextPath}+"/resources/imgs/OwnerRegisterImages/"+res.oRegisterFileName+"'/>' alt='"+res.oRegisterFileName+"' style='height:250px; width:80%;'  class='thumbnail'>"
						str += "<input type='text' readonly='readonly' class='form-control text-right' name='oRegisterFileName' value='"+res.oRegisterFileName+"'>&nbsp;&nbsp;";
						str += "<label>메뉴 이름</label>&nbsp;";
						str += "<input type='text' readonly='readonly' class='form-control text-right' name='menuName' value='"+res.ownerregisterRegdate+"'>";

						$('.groupMenuInput').html(str);
						},
						error : function(xhr, status, error) {
							alert("error!! : " + error);
							}
						});
					event.preventDefault();

		});

	});
	 */
</script>
<%@include file="../../../ownerInc/jianSidebarBottom.jsp"%>

