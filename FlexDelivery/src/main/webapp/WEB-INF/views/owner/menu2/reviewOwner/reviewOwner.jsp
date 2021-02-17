<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../../ownerInc/jianSidebarTop.jsp"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!-- 리뷰 상이드바 안눌리는거 ??  -->
<style>
	textarea, input {
		border: 1px solid rgb(212,212,212);
		border-radius: 5px;
	}

</style>
<!-- 이미지 경로 맞으면 미답변 차단에 붙이기 !!  -->
<div class="row mt-3">
	<div class="col-md-6 col-sm-12"></div>
	<div class="col-md-5 col-sm-12" style="padding-left: 105px;">
		<div class="btn-group btn-group-justified" role="group" aria-label="...">
			<div class="btn-group" role="group">
				<button type="button" class="btn btn-outline-primary" id="btAll">전체(${fn:length(allList)})</button>
			</div>
			<div class="btn-group" role="group">
				<button type="button" class="btn btn-primary" id="btnocmt">미답변(${fn:length(nocmtList)}) </button>
			</div>
			<div class="btn-group" role="group">
				<button type="button" class="btn btn-primary" id="btBlock">차단(${fn:length(blockList)}) </button>
			</div>
		</div>
		<div class="col-md-2 col-sm-12"></div>
	</div>
</div>
<!--  -->
<div class="row" id="table-hover-row">
	<div class="col-md-2 col-sm-12"></div>
	<div class="col-md-8 col-sm-12">
		<div class="card">
			<br>
			<div class="card-content">
				<div class="card-body" id="allreview">
					<p class="card-text text-center" style="font-size: 20px; font: bold;">리뷰 관리</p>
					<p class="card-text text-center">소중한 고객님의 리뷰에 댓글을 달아보세요 !</p>
					<%@include file="reviewChart.jsp"%>
					<br> <br>
					<div class="card-content">
						<div class="card-body text-center">
							<form name="frmPage" method="post" name="frm1" action="<c:url value='/owner/menu2/reviewOwner/reviewOwnerList.do'/>">
								<div class="row">
									<div class="col-md-4 col-12"></div>
									<div class="col-md-6 col-12 ">
										<%@include file="../../../owner/datePicker/datePicker.jsp"%>
										<input type="hidden" name="currentPage" value="1">
									</div>
								<div class="col-md-2 col-12">
									<input type="submit" style="background-color: #0d6efd; color: white;" value="조회" id="searchDate">
								</div>
							</div>
								</form>
							<br>
							<div class="AllDiv">
								<c:if test="${empty allList }">
									<div class="row">
										<div class="ccol-md-8">데이터가 존재하지 않습니다.</div>
									</div>
								</c:if>
								<c:if test="${!empty allList }">
									<c:forEach var="map" items="${allList }">
										<hr>
										<br>
										<div class="review-list">
											<div class="row ">
												<div class="col-md-3">
													<h4 class="card-title">${map['MEMBER_ID']}</h4>
												</div>
													<div class="col-md-6"></div>
													<div class="col-md-3">
													<div class="text-right">
														<button type="button" class="btn btn-outline-warning small" onclick="btSingo(${map['REVIEW_NO']})" >신고</button>
													</div>
												</div>
												<div class="row">
													<div class="col-md-3">${map['REVIEW_RATING'] }점</div>
													<div class="col-md-1"></div>
													<div class="col-md-5 text-left">${map['MENU_NAME']}
													<c:if test="${!empty map['M_OPTION_NAME']}">
													  + ${map['M_OPTION_NAME']}
													 </c:if>
													 </div>
												</div>
											</div>
											<div class="row ">
												<div class="col-md-3">
													<fmt:formatDate value="${map['REVIEW_REGDATE']}" pattern="yyyy-MM-dd" />
												</div>
												<div class="col-md-6 text-left">${map['REVIEW_CONTENT']}</div>
											  	<div class="col-md-3">
											  	<!-- 
											 		 <img src="<c:url value='/resources/imgs/pancake.jpg'/>" alt="${map['MENU_NAME']}" class="card-img-top" style="margin-bottom: 40px;">
											  	 -->
														 <div class="single-blog-thumbnail">
														<c:if test="${fn:substring(map['REVIEW_FILENAME'], 0,4)=='http' }">
															<img src="${map['REVIEW_FILENAME']}" class="card-img-top" style="margin-bottom: 40px;" alt="${map['MENU_NAME']}">
														</c:if>
														<c:if test="${fn:substring(map['REVIEW_FILENAME'], 0,4)!='http' and (!empty map['REVIEW_FILENAME']) }">
															<img src="<c:url value='/resources/imgs/ReviewImages/${map["REVIEW_FILENAME"]}'/>" alt="${map['MENU_NAME']}" class="card-img-top" style="margin-bottom: 40px;">
														</c:if>
													</div>
											 	 </div>
											</div>
										<br>
										<br>
										<div class="table-responsive">
											<div class="row">
												<div class="col-xs-12 col-sm-6 col-md-8"></div>
												<div class="col-xs-6 col-md-4"></div>
												${map['R_COMMENT_CONTENT']}
											</div>
											<!-- CEO comment start !! -->
											<c:if test="${!empty map['R_COMMENT_CONTENT']}">
												<div class="CEO-comment" style="background-color: rgba(208, 201, 208, 0.12); color: #333;">
													<form class="frm2" method="post" action="<c:url value='/owner/menu2/reviewOwner/edit.do'/>">
														<input type="hidden" id="reviewNo" name="reviewNo" value="${map['REVIEW_NO'] }"> 
														<input type="hidden" id="storeNo" name="storeNo" value="1">
														<div class="reply" style="padding: 7%;">
															<div class="row">
																<div class="col-md-3">
																	<h4>사장님&nbsp;</h4>
																</div>
																<div class="col-md-6 text-left">${map['MEMBER_ID'] }님,</div>
																<div class="col-md-1"></div>
															</div>
															<div class="row">
																<div class="col-md-3">
																	<fmt:formatDate value="${map['R_COMMENT_REGDATE'] }" pattern="yyyy-MM-dd" />
																</div>
																<div class="listDiv col-md-7 text-left text-left">${map['R_COMMENT_CONTENT'] }</div>
																<div class="result" id="resultDiv"></div>
															</div>
															<div class="row">
																<div class=".col-xs-12 .col-sm-6 .col-md-8"></div>
																<div class="text-right" style="margin-bottom: 10px;">
																	<div class="button-group button-group-row align-right ">
																		<br> <br>
																		<button type="button" class="button small danger inGroup" onclick="btDel(${map['REVIEW_NO']})" style="background-color: #0d6efd; color: white;">삭제 </button>
																		<button type="submit" class="button small danger inGroup" onclick="Edit_form(${map['REVIEW_NO']})" style="background-color: r #0d6efd; color: white;">수정 </button>
																	</div>
																</div>
															</div>
													</form>
													</div>
												</div>
												<div class="col-md-2 col-sm-12"></div>
												<br>
											</c:if>
											<!-- 댓글이 없는 경우 활성화  -->
											<c:if test="${empty map['R_COMMENT_CONTENT']}">
												<div class="card-body">
													<form id="frm1" method="post" action="<c:url value='/owner/menu2/reviewOwner/reviewOwner.do'/>">
														<input type="hidden" id="reviewNo" name="reviewNo" value="${map['REVIEW_NO'] }"> 
														<input type="hidden" id="storeNo" name="storeNo" value="1">
														<label for="content"></label>
														<!--입력폼 디자인 고르기 회의할때 textarea input type -->
														<div style="border: 2px solid lightgray;" class="">
															<textarea class="form-control form-control-lg comment" name="rCommentContent" style="width: 80%; border:none;" placeholder="사장님 ! 댓글을 등록해주세요."></textarea>
															<input class="button  btn btn-primary" type="submit" style="margin-bottom:50px;" value="댓글작성">
														</div>
													</form>
												</div>
											</c:if>
											<br> <br>
									</c:forEach>
								</c:if>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="col-md-2 col-sm-12"></div>
<br>
<br>
<br>
<script type="text/javascript">
	function btDel(reviewNo){
		if(confirm("리뷰 답변을 삭제하시겠습니까?")) {
			location.href= "<c:url value='/owner/menu2/reviewOwner/reviewOwnerDelete.do?reviewNo='/>" + reviewNo;
			event.preventDefault();
		}else {
			return false;
		}
	}
	
	function btSingo(reviewNo){
		if(confirm("리뷰를 신고 하시겠습니까?")) {
			location.href= "<c:url value='/owner/menu2/reviewOwner/reviewOwnerSingo.do?reviewNo='/>" + reviewNo;
			event.preventDefault();
		}else {
			return false;
		}
	}
	
	//댓글 수정버튼 눌렀을 시 폼
    function Edit_form(num) {
     	$(this).parent().prev().css("display", "none");
     	console.log(this);
	$(function(){
		if($('.content').val()<1){
			 alert("댓글 내용을 입력해 주세요 ! ");
			event.preventDefault();
		}else{
	     	var params = $(".frm2").serialize();
	     	
	     	$.ajax({
				url:"<c:url value='/owner/menu2/reviewOwner/edit.do'/>",
				type:"GET",
				data: params,
				dataType:"json",
				contentType: 'application/x-www-form-urlencoded; charset=utf-8',
				success:function(res){
					//alert(res);
					var output="<textarea class='form-control form-control-lg content' name='rCommentContent'>";
						output+=res.rCommentContent+" </textarea><br>";
						output+="<button type='submit' class='button small secondary inGroup' id='btEdit' >수정하기 </button>";
					
						$('#resultDiv').append(output);
							$('#listDiv').hide();
					},
					error:function(xhr, status, error){
						alert("error! : " + error);
					}				
				});//ajax
			}
		});
	event.preventDefault();
	}
		
	
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
		});//frmDate
	
		$('form[name=frm1]').submit(function(){
			if($('.comment').val().length<1){
				alert('내용을 입력하세요');
				$('.comment').focus();
				event.preventDefault();
			}
		});//frm1
	});
	
	function pageFunc(curPage){
		$('form[name=frmDate]').find('input[name=currentPage]').val(curPage);	
		$('form[name=frmDate]').submit();
		
	}
	$(function(){
		$('#btAll').click(function(){
		location.href='<c:url value="/owner/menu2/reviewOwner/reviewOwner.do"/>';
		});
		
		$('#btnocmt').click(function(){
			location.href='<c:url value="/owner/menu2/reviewOwner/nocomment.do"/>';
		});
		
		$('#btBlock').click(function(){
			location.href='<c:url value="/owner/menu2/reviewOwner/blockcmt.do"/>';
		});
		
	});

</script>

<%@include file="../../../ownerInc/jianSidebarBottom.jsp"%>