<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%@include file="../../../ownerInc/jianSidebarTop.jsp"%> 
 <%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
						<h5 class="mb-sm-2">
							최근 리뷰 ${fn:length(reviewList) }개
						</h5>
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
							
			<%@include file="reviewChart.jsp" %>
						
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
					<form name="frmDate" method="post" 
	action="<c:url value='/shop/order/orderList.do'/>" >
	<!-- 조회기간 include
	 -->
		
	<input type="hidden" name="currentPage" value="1">
					<input type="submit" class="button medium" value="조회 ">
					</form>
					<p class="desc">조회 가능한 최대 기간은 6개월 입니다</p>
				</div>
				
				
				<div class="radio-group mx-sm-2 mb-3">
					<label class="radio-button"><input type="radio" value=""
						checked="" id="ck1" value="1">
					<p class="label">전체(${fn:length(reviewList) })</p></label><label class="radio-button"><input
						type="radio" value="" id="ck2" value="2">
					<p class="label">미답변(0)</p></label><label class="radio-button"><input
						type="radio" value="" id="ck3" value="3">
					<p class="label">차단(0)</p></label>
				</div>

				
				</div>
				
				<div class="review-wrap">
					<div class="review-list">
					<div class="visible">.
						<div class="Card ">
								<c:if test="${!empty reviewList }">
					<c:forEach var="map" items="${reviewList }">
					<!--  var="optionMap" items="${optionList}"  -->
					
						<!-- revewList include -->
							<div class="user-info">
								<div class="rating-stars-wrap">
							
									<p class="nick">${map['MEMBER_ID']}</p>
							
							<!-- 3자리 뒤에 **표
								<c:if test="${fn:length(map['MEMBER_ID'])>=3}">
									${fn:substring(map['MEMBER_ID'], 2,10) }*
								</c:if>
							 -->
									<div class="rating-stars">
										<span style="width: 100%;"></span>${map['REVIEW_RATING'] }점 
									</div>
									<span class="date"><fmt:formatDate value="${map['REVIEW_REGDATE']}" pattern="yyyy-MM-dd"/></span>
								</div>
								<div class="coupon-info"></div>
							</div>
							<div class="review-cont">
								<ul class="review-menus">
									<li class="">${map['MENU_NAME']} + ${map['M_OPTION_NAME']}<i class="icon icon-good"></i><span
										class="menu-item-review"></span></li>
								</ul>
								<ul class="review-photos">
								<img src
					="<c:url value='/resources/imgs/${map["REVIEW_FILENAME"] }'/>" 
							alt="${map['REVIEW_FILENAME']}" width="40" 
							align="absmiddle">
								</ul>
								<p class="card-text">${map['REVIEW_CONTENT']}</p>
								</div>
								
								<!-- CEO comment start !! -->
								<c:if test="${!empty map['R_COMMENT_CONTENT']}">
								<div class="ceo-comment">
									<p class="comment-cont">
										사장님<span class="date">오늘</span>
									</p>
									<p class="card-text">
										${map['MEMBER_ID'] }님,
										<br>
										${map['R_COMMENT_CONTENT'] }
										<br>
									</p>
									<div class="button-group button-group-row align-right ">
										<button type="button" class="button small danger inGroup">삭제</button>
										<button type="button" class="button small secondary inGroup">수정</button>
									</div>
								</div>
								<br>
								<br>
								</c:if>
							</c:forEach>
	
								<c:if test="${!empty  reviewList }">
								
								<!-- 댓글이 없는 경우 활성화  -->
								<div class="ceo-comment-write-wrap">
									 <h3>파라미터</h3>
	 							<p id="p1"></p>
										 <hr>
								<form id="frm1">
								<div class="form-group">
								<!-- hidden  -->
								<input type="hidden" id="reviewNo" name="reviewNo" />
								<input type="hidden" id="storeNo" name="storeNo" />
								<label for="content"></label>
								<textarea class="form-control" rows="3" id="content" name="rCommentContent" placeholder="댓글을 등록해주세요"></textarea>
									<button class="button medium" type="submit">Button</button>
									</div>
									</form>
								</div>
								</c:if>
								</c:if>
							</div><!-- list -->
									</div>
								
						</div>
					</div>
				</div>
			</div>
			</div>
			        </div>
           
			
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/memberResources/vendor/jquery/jquery.min.js"></script>
	<script type="text/javascript">
	$(function(){
	$('#frm1').submit(function(){
		$('#p1').append($.param($(this).serializeArray()));
		//=> $.param() : 객체를 쿼리 문자열로 바꾼다
		alert($(this).serializeArray());
		
		$.ajax({
			url:"<c:url value='/owner/menu2/reviewOwner/reviewOwnerWrite.do'/>",
			type:"post",
			data:$(this).serializeArray(), //입력양식의 내용을 객체로 만든다
			dataType:"json",
			contentType: 'application/x-www-form-urlencoded; charset=utf-8',
			success:function(res){
				alert(res);
				//var str=res.message+ "<br>";
				//str+="메모 : " + res.data.content;
				
				//$('#result').html(str);
			},
			error:function(xhr, status, error){
				alert("error! : " + error);
			}				
		});//ajax
		
				//$('#content').val("");
		
		event.preventDefault();
	});
	
	// 미답변 차단 라디오 버튼으로 구분 

	$('#radio').click(function(){
		if($('#ck1').val()==1){
			
		}else if($('#ck2').val()==2){
			$.ajax({
				url:"<c:url value='/owner/menu2/reviewOwner/reviewOwnerOP1.do'/>",
				type:"post",
				data:$(this).serializeArray(), //입력양식의 내용을 객체로 만든다
				dataType:"json",
				contentType: 'application/x-www-form-urlencoded; charset=utf-8',
				success:function(res){
					alert(res);
					//var str=res.message+ "<br>";
					//str+="메모 : " + res.data.content;
					
					//$('#result').html(str);
				},
				error:function(xhr, status, error){
					alert("error! : " + error);
				}				
			});//ajax
		}else if($('#ck3').val()==3){
			
		}
		
	});
	
});//



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

