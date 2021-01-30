<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../../ownerInc/jianSidebarTop.jsp"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
	href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/reviewOwner.css" />
<style type="text/css">
A
</style>
<!-- CSS end -->
<div class="container position-relative">
	<div class="row">
		<div class="col-md-8 pt-3">

			<div>
				<div class="ShopSelect mb-4 mb-sm-0">
					<select><option value="13195815">피자피자 잠실점</option></select>
					<section class="title">
						<h3>
							피자피자 잠실점 <i class="icon icon-arrow-down"></i>
						</h3>
						<p class="text-sub mt-1">피자 · FLEXDELIVERY · W950612</p>
					</section>
				</div>
				<div id="review-page">
					<div class="Card rounded mt-sm-3 mx-sm-2">
						<div class="card-body pt-sm-2">
							<h5 class="mb-sm-2">최근 리뷰 ${fn:length(reviewList) }개</h5>
							<div class="average-wrap">
								<div class="star-point">
									<div class="total-point">
										<h3>평균별점</h3>
										<p class="month-info">
											최근 6개월 <span class="hide-sm">기준</span>
										</p>
										<p class="total">4.9</p>
									</div>

									<!--  -->
									<!--  -->
									<!--  -->

								</div>

								<%@include file="reviewChart.jsp"%>

								<!--  -->
								<!--  -->
								<!--  -->
							</div>
						</div>
					</div>
					<div class="search-date-wrap">
						<div class="date-picker-wrap">
							<div class="DateRangePicker ">
								<span class="date-wrap">2020. 07. 24.
									<div class="DayPickerInput">
										<input placeholder="From" value="2020. 07. 24.">
									</div>
								</span><span class="date-range">~</span><span class="date-wrap">2021.
									01. 19.
									<div class="DayPickerInput">
										<input placeholder="To" value="2021. 01. 19.">
									</div>
								</span>
								<button class="icon icon-calendar" type="button"></button>
							</div>
						</div>
						<!-- 조회기간 include
					<form name="frmDate" method="post" 
	action="<c:url value='/owner/menu2/reviewOwner/reviewOwner.do'/>" >
	<input type="hidden" name="currentPage" value="1">
					<input type="submit" class="button medium" value="조회 ">
					</form>
					<p class="desc">조회 가능한 최대 기간은 6개월 입니다</p>
				</div>
	 -->



						<div class="row">
							<div class="col-md-5 col-12"></div>
							<div class="col-md-5 col-12 ">
								<form name="frmPage" method="post" name="frmDate"
									action="<c:url value='/owner/menu2/reviewOwner/reviewOwner.do'/>">
									<%@include file="../../../owner/datePicker/SJdatePickerTest.jsp"%>
									<input type="hidden" name="currentPage" value="1">
								</form>
							</div>
							<div class="col-md-2 col-12">
								<input type="submit"
									style="background-color: rgb(223, 108, 220); color: white;"
									value="조회">
							</div>
							<c:if test="${!empty reviewList }">
								<p style="padding: 15px 0 0 0">${dateSearchVO.startDay } ~
									${dateSearchVO.endDay }까지의 주문 내역 총 ${pagingInfo.totalRecord }건입니다.</p>
							</c:if>
						</div>

					</div>
					<div class="radio-group mx-sm-2 mb-3">
						<label class="radio-button">
							<input type="radio" value="" checked="" id="ck1" value="1">
								<p class="label">전체(${fn:length(reviewList) })</p>
							</label>
								<label class="radio-button">
									<input type="radio" value="" id="ck2" value="2">
									<p class="label">미답변(0)</p>
								</label>
								<label class="radio-button">
								<inputtype="radio" value="" id="ck3" value="3">
								<p class="label">차단(0)</p>
							</label>
					</div>

					<div class="review-wrap">
						<div class="review-list">
							<div class="visible">
								<div class="card">
									<c:if test="${!empty reviewList }">
										<c:forEach var="map" items="${reviewList }">
											<!--  var="optionMap" items="${optionList}"  -->

											<div class="card-content" id="llistDiv">
												<div class="card-body">
													<div>
														<h4 class="card-title">${map['MEMBER_ID']}</h4>
														<img
															src="data:image/jpeg;base64,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"
															width="200" align="absmiddle" class="rounded float-right">
													</div>
													<p class="card-text">
														<span><fmt:formatDate
																value="${map['REVIEW_REGDATE']}" pattern="yyyy-MM-dd" /></span><br>
														<span style="color: purple;">${map['MENU_NAME']} +
															${map['M_OPTION_NAME']}</span><br> <span>${map['REVIEW_RATING'] }점
														</span><br>
														<br>
														<br> <span>${map['REVIEW_CONTENT']}</span>

													</p>
													<small class="text-muted"></small>
												</div>
											</div>



											<!-- 댓글이 없는 경우 활성화  -->
											<c:if test="${empty map['R_COMMENT_CONTENT']}">

												<div class="ceo-comment-write-wrap">
													<h3>파라미터</h3>
													<p id="result"></p>
													<hr>
													<form id="frm1">

														<!-- hidden  -->
														<input type="hidden" id="reviewNo" name="reviewNo"
															value="2"> <input type="hidden" id="storeNo"
															name="storeNo" value="1"> <label for="content"></label>
														<textarea class="form-control form-control-lg"
															id="content" name="rCommentContent"
															placeholder="댓글을 등록해주세요"></textarea>
														<input type="text">
														<button class="button medium" type="submit">Button</button>

													</form>
												</div>
											</c:if>
											<br>
											<br>

										</c:forEach>

									</c:if>
								</div>
								<!-- list -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br> <br>

	<!-- 페이지 시작-->
	<div class="card-body">
		<nav aria-label="Page navigation example">
			<ul class="pagination pagination-primary justify-content-center">
				<!-- 페이지 번호 추가 -->
				<!-- 이전 블럭으로 이동 -->
				<c:if test="${pagingInfo.firstPage>1 }">
					<li class="page-item"><a class="page-link" href="#"
						aria-label="Previous"
						onclick="pageFunc(${pagingInfo.firstPage-1})"> <span
							aria-hidden="true">&laquo;</span>
					</a></li>
				</c:if>

				<!-- [1][2][3][4][5][6][7][8][9][10] -->
				<c:forEach var="i" begin="${pagingInfo.firstPage}"
					end="${pagingInfo.lastPage}">
					<c:if test="${i==pagingInfo.currentPage }">
						<li class="page-item active"><a class="page-link" href="#">${i}</a></li>
					</c:if>
					<c:if test="${i!=pagingInfo.currentPage }">
						<li class="page-item"><a class="page-link" href="#"
							onclick="pageFunc(${i})">${i}</a></li>
					</c:if>
				</c:forEach>

				<c:if test="${pagingInfo.lastPage < pagingInfo.totalPage }">
					<li class="page-item"><a class="page-link" href="#"
						aria-label="Previous" onclick="pageFunc(${pagingInfo.lastPage+1})">
							<span aria-hidden="true">&raquo;</span>
					</a></li>
				</c:if>
			</ul>
		</nav>

	</div>
	<br> <br>

	<!-- two  -->
	<div class="card-content" id="llistDiv">
		<span>testtesttest</span>
	</div>


	<!-- CEO comment start !! -->
	<c:if test="${!empty map['R_COMMENT_CONTENT']}">
		<div class="ceo-comment">
			<p class="comment-cont">
				사장님<span class="date">오늘</span>
			</p>
			<p class="card-text">
				${map['MEMBER_ID'] }님, <br> ${map['R_COMMENT_CONTENT'] } <br>
			</p>
			<div class="button-group button-group-row align-right ">
				<button type="button" class="button small danger inGroup">삭제</button>
				<button type="button" class="button small secondary inGroup">수정</button>
			</div>
		</div>
	</c:if>

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/memberResources/vendor/jquery/jquery.min.js"></script>
	<script type="text/javascript">
	$(function(){
	$('#frm1').submit(function(){
		$('#p1').append($.param($(this).serializeArray()));
		//=> $.param() : 객체를 쿼리 문자열로 바꾼다
		alert($(this).serializeArray());
		
		var params = $("#frm1").serialize();
		
		$.ajax({
			url:"<c:url value='/owner/menu2/reviewOwner/reviewOwnerWrite.do'/>",
			type:"post",
			data: params, //입력양식의 내용을 객체로 만든다
			dataType:"json",
			contentType: 'application/x-www-form-urlencoded; charset=utf-8',
			success:function(res){
				//alert(res);
		
				var output=res.message+ "<br>";
				str+="댓글  : " + res.vo.reviewNo+ "<br>";
				str+="댓글  : " + res.vo.CommentContent+ "<br>";
				str+="댓글작성일   : " + res.vo.rCommentRegdate+ "<br>";
				
				$('#llistDiv').append(str);
			},
			error:function(xhr, status, error){
				alert("error! : " + error);
			}				
		});//ajax
		
				$('#content').val("");
		
		event.preventDefault();
	});
	
	// 미답변 차단 라디오 버튼으로 구분 

	$('#radio').click(function(){
		if($('#ck1').val()==1){
			
		}else if($('#ck2').val()==2){
			$('#llistDiv').hide()
			$('#llistDiv2').show()
		}else if($('#ck3').val()==3){
			
		}
		
	});
	
});//

$(function(){
	$('form[name=frmDate]').submit(function(){
		if($('#startDay').val().length<1){
			alert('시작일을 입력하세요');
			$('#startDay').focus();
			event.preventDefault();
		}else if($('#endDay').val().length<1){
			alert('종료일을 입력하세요');
			$('#endDay').focus();
			event.preventDefault();
		}
	});
	
});
function pageFunc(curPage){
	$('form[name=frmDate]').find('input[name=currentPage]').val(curPage);	
	$('form[name=frmDate]').submit();
}



	</script>
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
	<!--  bottom  -->
	<%@include file="../../../ownerInc/jianSidebarBottom.jsp"%>