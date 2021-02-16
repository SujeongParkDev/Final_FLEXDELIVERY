<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../../ownerInc/jianSidebarTop.jsp"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<div class="row mt-3">
	<div class="col-md-6 col-sm-12"></div>
	<div class="col-md-5 col-sm-12" style="padding-left: 105px;">
		<div class="btn-group btn-group-justified" role="group" aria-label="...">
			<div class="btn-group" role="group">
				<button type="button" class="btn btn-primary" id="btAll">전체(${fn:length(allList)})</button>
			</div>
			<div class="btn-group" role="group">
				<button type="button" class="btn btn-outline-primary" id="btnocmt">미답변(${fn:length(nocmtList)}) </button>
			</div>
			<div class="btn-group" role="group">
				<button type="button" class="btn btn-primary" id="btBlock">차단(${fn:length(blockList)}) </button>
			</div>
		</div>
		<div class="col-md-2 col-sm-12"></div>
	</div>
</div>
<div class="row" id="table-hover-row">
	<div class="col-md-2 col-sm-12"></div>
	<div class="col-md-8 col-sm-12">
		<div class="card">
			<br>
			<div class="card-content">
				<div class="card-body" id="allreview">
					<p class="card-text text-center" style="font-size: 20px; font: bold;">리뷰 관리</p>
					<p class="card-text text-center">고객과의 소통을 위해 어서 답변을 달아주세요 ! </p>
					<br> <br>
					<div class="card-content">
						<div class="card-body text-center">
							<br>
							<div class="AllDiv">
								<c:if test="${empty nocmtList }">
									<div class="row">
										<div class="ccol-md-8">데이터가 존재하지 않습니다.</div>
									</div>
								</c:if>
								<c:if test="${!empty nocmtList }">
									<c:forEach var="map" items="${nocmtList }">
										<hr>
										<br>
										<div class="review-list">
											<div class="row ">
												<div class="col-md-3">
													<h4 class="card-title">${map['MEMBER_ID']}</h4>
												</div>
												<div class="row">
													<div class="col-md-3">${map['REVIEW_RATING'] }점</div>
													<div class="col-md-1">.col-md-1</div>
													<div class="col-md-5 text-left">${map['MENU_NAME']} + ${map['M_OPTION_NAME']}</div>
												</div> 
											</div>
											<div class="row ">
												<div class="col-md-3">
													<fmt:formatDate value="${map['REVIEW_REGDATE']}" pattern="yyyy-MM-dd" />
												</div>
												<div class="col-md-7 text-left">${map['REVIEW_CONTENT']}</div>
												<div class="col-md-1"></div>
											</div>
										</div>
										<br>
										<br>
										<div class="table-responsive">
											<div class="row">
												<div class="col-xs-12 col-sm-6 col-md-8"></div>
												<div class="col-xs-6 col-md-4"></div>
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
																		<br>
																		<br>
																		<button type="button" class="button small danger inGroup" onclick="btDel(${map['REVIEW_NO']})" style="background-color: #0d6efd; color: white;">삭제
																		</button>
																		<button type="submit" class="button small danger inGroup" onclick="Edit_form(${map['REVIEW_NO']})" style="background-color: r #0d6efd; color: white;">수정
																		</button>
																	</div>
																</div>
															</div>
														</div>
													</form>
												</div>
												<div class="col-md-2 col-sm-12"></div>
												<br>
												<br>
											</c:if>
											<!-- 댓글이 없는 경우 활성화  -->
											<c:if test="${empty map['R_COMMENT_CONTENT']}">
												<div class="form-control ">
													<form id="frm1" method="post" action="<c:url value='/owner/menu2/reviewOwner/reviewOwnerList.do'/>">
														<input type="hidden" id="reviewNo" name="reviewNo" value="${map['REVIEW_NO'] }"> 
														<input type="hidden" id="storeNo" name="storeNo" value="1">
														<label for="content"></label>
														<div style="border: 2px solid lightgray; padding:5%;" class="">
															<input type="text" class="form-control form-control-lg comment" name="rCommentContent" style="width: 80%; border:none;" placeholder="사장님 ! 댓글을 등록해주세요.">
															<input class="button  btn btn-primary" type="submit" style="" value="댓글작성">
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
<script type="text/javascript">
	function btDel(reviewNo){
		if(confirm("리뷰 답변을 삭제하시겠습니까?")) {
			location.href= "<c:url value='/owner/menu2/reviewOwner/reviewOwnerDelete.do?reviewNo='/>" + reviewNo;
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
			data: params, //입력양식의 내용을 객체로 만든다
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
});//

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