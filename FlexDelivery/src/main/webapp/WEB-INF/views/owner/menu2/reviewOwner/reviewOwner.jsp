<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../../ownerInc/jianSidebarTop.jsp"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!-- CSS start -->
<!-- CSS end -->

<script type="text/javascript">
		function pageFunc(curPage){
				$('form[name=frmPage]').find('input[name=currentPage]').val(curPage);	
				$('form[name=frmPage]').submit();
		}
		

		
		$(function(){
			$('#btAdRegister').on('click', function(){
				window.screen.width //현재 윈도우창의 가로크기를 가져옴
				window.screen.height //세로크기 가져옴
				
				var popupWidth = 500; //띄울 창 가로크기
				var popupHeight = 300;
				
				var popupX = (window.screen.width / 2) - (popupWidth /2);
				var popupY = (window.screen.height / 2) - (popupHeight /2);
				
				window.open(
					"${pageContext.request.contextPath}/owner/menu2/advertise/advertisePwdCheck.do", 
					"pwdCheck", 
					'toolbar=no, menubar=no, height='+popupHeight+', width='+ popupWidth +', left='+popupX+', top='+popupY);
			});
		});
	</script>

<!-- 광고등록 탭 + 버튼-->
<div class="row mt-3">
	<div class="col-md-2 col-sm-12"></div>
	<div class="col-md-8 col-sm-12">
		<ul class="nav nav-pills" style="float: left;">
			<li class="nav-item"><a class="nav-link " aria-current="page"
				href="<c:url value="/owner/menu2/reviewOwner/reviewOwner.do"/>">전체(${fn:length(reviewList) })</a>
			</li>
			<li class="nav-item"><a class="nav-link active"
				href="<c:url value="/owner/menu2/reviewOwner/reviewOwner.do"/>">미답변()
			</a></li>
			<li class="nav-item"><a class="nav-link active"
				href="<c:url value="/owner/menu2/reviewOwner/reviewOwner.do"/>">차단()
			</a></li>
		</ul>
	</div>
	<div class="col-md-2 col-sm-12"></div>
</div>
<br>
<!--  -->
<div class="row" id="table-hover-row">
	<div class="col-md-2 col-sm-12"></div>

	<div class="col-md-8 col-sm-12">
		<div class="card">
			<div class="card-header text-center">
				<h4 class="card-title">전체 리뷰</h4>
			</div>
			<div class="card-content">
				<div class="card-body text-center">

					<div class="row">
						<div class="col-md-5 col-12"></div>
						<div class="col-md-5 col-12 ">
							<form name="frmPage" method="post" name="frm1"
								action="<c:url value='/owner/menu2//reviewOwner/reviewOwner.do'/>">
								<%@include file="../../../owner/datePicker/datePicker.jsp"%>
								<input type="hidden" name="currentPage" value="1">
							</form>
						</div>
						<div class="col-md-2 col-12">
							<input type="submit"
								style="background-color: rgb(223, 108, 220); color: white;"
								value="조회">
						</div>
					</div>
					<br>
					<c:if test="${empty reviewList }">
						<div class="row">
							<div class="ccol-md-8">데이터가 존재하지 않습니다.</div>
						</div>
					</c:if>
					<div class="all-div" id="AllDiv">
					
					<c:if test="${!empty reviewList }">
						<c:forEach var="map" items="${reviewList }">
							<hr>
							<div class="review-list">
								<div class="row ">
									<div class="col-md-3">
										<h4 class="card-title">${map['MEMBER_ID']}</h4>
									</div>
									<div class="row">
										<div class="col-md-3">${map['REVIEW_RATING'] }점</div>
										<div class="col-md-1">.col-md-1</div>
										<div class="col-md-5 text-left">${map['MENU_NAME']}+
											${map['M_OPTION_NAME']}</div>
									</div>
								</div>
								<div class="row ">
									<div class="col-md-3">
										<fmt:formatDate value="${map['REVIEW_REGDATE']}"
											pattern="yyyy-MM-dd" />
									</div>
									<div class="col-md-7 text-left">${map['REVIEW_CONTENT']}</div>
									<div class="col-md-1"></div>

								</div>
							</div>
							<br>
							<br>
							<!-- table hover -->
							<div class="table-responsive">
								<div class="row">
									<div class="col-xs-12 col-sm-6 col-md-8"> </div>
									<div class="col-xs-6 col-md-4"></div>
								</div>

								<!-- CEO comment start !! -->
								<c:if test="${!empty map['R_COMMENT_CONTENT']}">
								<div class="CEO-comment" style="background-color:rgba(208, 201, 208, 0.12); color: #333;">
									<form id="frm2" method="post"
										action="<c:url value='/owner/menu2/reviewOwner/edit.do'/>">
										<input type="hidden" id="reviewNo" name="reviewNo"
											value="${map['REVIEW_NO'] }"> <input type="hidden"
											id="storeNo" name="storeNo" value="1">
										<div class="row" >
											<div class="col-md-3">
												<h4>사장님&nbsp;</h4>
											</div>
											<div class="col-md-6 text-left">${map['MEMBER_ID'] }님,</div>
											<div class="col-md-1"></div>
										</div>
										<div class="row" >
											<div class="col-md-3">
												<fmt:formatDate value="${map['R_COMMENT_REGDATE'] }"
													pattern="yyyy-MM-dd" />
											</div>
											<div class="listDiv col-md-7 text-left text-left">${map['R_COMMENT_CONTENT'] }</div>
											<div class="result" id="resultDiv"></div>
										</div>
										<div class="row">
											<div class=".col-xs-12 .col-sm-6 .col-md-8"></div>
											<div class="button-group button-group-row align-right ">
												<button type="button" class="button small danger inGroup"
													onclick="btDel(${map['REVIEW_NO']})"
													style="background-color: rgb(223, 108, 220); color: white;">삭제</button>
												<button type="submit" class="button small secondary inGroup"
													id="btEdit" onclick="Edit_form(${map['REVIEW_NO']})"
													style="background-color: rgb(223, 108, 220); color: white;">수정</button>
											</div>
										</div>
										<!-- ${sessionScope.storeNo} 변경하기  -->
									</form>
									</div>
									<div class="col-md-2 col-sm-12"></div>
									<br>
									<br>
								
								</c:if>
								<!-- 댓글이 없는 경우 활성화  -->
								<c:if test="${empty map['R_COMMENT_CONTENT']}">
									<div class="card-body">
										<form id="frm1" method="post"
											action="<c:url value='/owner/menu2/reviewOwner/reviewOwnerWrite.do'/>">
											<!-- hidden  -->
											<input type="hidden" id="reviewNo" name="reviewNo" value="${map['REVIEW_NO'] }">
												 <input type="hidden" id="storeNo" name="storeNo" value="1">
												 <label for="content"></label>
											<textarea class="form-control form-control-lg" id="content" name="rCommentContent" placeholder="댓글을 등록해주세요"></textarea>
											<button class="button medium" type="submit" onclick="" style="background-color: rgb(223, 108, 220); color: white;">댓글작성
											</button>
										</form>
									</div>
								</c:if>
								<br> <br>
						</c:forEach>
					</c:if>
					</div><!-- AllDiv -->
				</div>
			</div>
		</div>
	</div>
</div><!-- The end -->
<div class="col-md-2 col-sm-12"></div>
<br>

<!-- 페이지 시작-->
<div class="card-body">
	<nav aria-label="Page navigation example">
		<ul class="pagination pagination-primary justify-content-center">
			<!-- 페이지 번호 추가 -->
			<!-- 이전 블럭으로 이동 -->
			<c:if test="${pagingInfo.firstPage>1 }">
				<li class="page-item"><a class="page-link" href="#"
					aria-label="Previous" onclick="pageFunc(${pagingInfo.firstPage-1})">
						<span aria-hidden="true">&laquo;</span>
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
<br>
<br>

<!-- two  -->

<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/memberResources/vendor/jquery/jquery.min.js"></script>
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
     	var params = $("#frm2").serialize();
     	
     	$.ajax({
			url:"<c:url value='/owner/menu2/reviewOwner/edit.do'/>",
			type:"GET",
			data: params, //입력양식의 내용을 객체로 만든다
			dataType:"json",
			contentType: 'application/x-www-form-urlencoded; charset=utf-8',
			success:function(res){
				//alert(res);
				var output="<textarea class='form-control form-control-lg' id='content' name='rCommentContent'>";
					output+=res.rCommentContent+" </textarea><br>";
					output+="<button type='submit' class='button small secondary inGroup' id='btEdit' >수정하기 </button>";
				
				$('#resultDiv').append(output);
					$('#listDiv').hide();
			},
			error:function(xhr, status, error){
				alert("error! : " + error);
			}				
		});//ajax
 
	});
event.preventDefault();
}
	
	// 탭 
	$(function(){
	$('input[type=radio]').click(function(){
		if($(this).attr('id')=='ck2'){
			$('#AllDiv').hide();
		}else if($(this).attr('id')=='ck1'){
			$('#AllDiv').show();
		}else if($(this).attr('id')=='ck3'){
			$('#AllDiv').hide();
		}
	});
});
	
	//댓글 수정버튼 눌렀을 시 폼
/*
	function Edit_do($num){
		
		var params = $("#frm2").serialize();
     	
     	$(this).parent().prev().css("display", "none");
     	console.log(this);
		var num = $num;
     	
     	$(this).parent().prev().css("display", "none");
     	console.log(this);
   		$('input[id="' + num + '"]').removeAttr("readonly");
   		$('input[id="' + num + '"]').focus().setCursorPosition($('input[id="' + num + '"]').val().length);
   		$('input[id="' + num + '"]').css("border", "1px solid #ccc9c9");
   		$("div[id='" + num + "']").html('<button type="button" class="community_comment_update_btn" onclick="comod_btn(' + num + ')">수정하기</button></div>');
	}
	*/
/*
	function Edit_do($num){
		var num1 = $num;
    	var co = $('input[id="' + num1 + '"]').val();
    	
    	
       $.ajax({
          url : '/owner/menu2/reviewOwner/reviewOwner/edit.do',
          type : 'POST',
          data:$(this).serializeArray(),
          contentType : 'application/x-www-form-urlencoded; charset=UTF-8',
          dataType : "json",
          success : function(retVal) {
            	 alert("댓글이 수정되었습니다.");
    
          },
          error:function() {
             alert("ajax 통신 실패!(update)");
          }
       });
    }
	}


	
	// 미답변 차단 라디오 버튼으로 구분 

	$('#radio').click(function(){
		if($('#ck1').val()==1){
			
		}else if($('#ck2').val()==2){
			$('#llistDiv').hide()
			$('#llistDiv2').show()
		}else if($('#ck3').val()==3){
			
		}
		
	});
	

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

*/

	</script>
<!-- script start -->

<!-- script end -->
<!--  bottom  -->
<%@include file="../../../ownerInc/jianSidebarBottom.jsp"%>