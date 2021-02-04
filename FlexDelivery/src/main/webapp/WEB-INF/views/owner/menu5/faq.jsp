<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../ownerInc/top.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script type="text/javascript">
$(function(){
$('#collapseTwo').hide();
if($('#cgName').on('click',function(idx,item))){
	$('#collapseTwo').find().show();
}
});
	function pageFunc(curPage){
		$('form[name=frmPage]').find('input[name=currentPage]').val(curPage);	
		$('form[name=frmPage]').submit();
	}

</script>

<style>
.page-item.active .page-link {
	background-color: #007bff;
	border-color: #007bff;
}

button.btn.btn-link {
	color: #333;
	text-decoration: none;
}

a.detail:hover {
	color: rgb(182, 73, 197);
	text-decoration: none;
}

.dropdown-item {
	color: black;
	text-decoration: none;
}

#noticeSearch {
	background-color: #007bff;
	border-radius: 2px;
	width: 55px;
}
</style>
<br>
<br>
<br>
<div class="row">
	<!-- 자주하는 질문을 검색해야하지 않을까?  -->
	<!-- 헤드 시작 -->
	<div class="col-12 col-md-2"></div>
	<div class="col-12 col-md-8 text-center">
		<h3>자주하는 질문</h3>
	</div>
	<div class="col-12 col-md-2"></div>
	<!-- 페이지 이동시 필요한 form -->
	<form name="frmPage" method="post" style="float: right;"
		action="<c:url value='/owner/menu5/faq.do'/>">
		<input type="hidden" name="currentPage"> <input type="hidden"
			name="fCategoryNo" value="${param.fCategoryNo }">
	</form>
	<!-- 검색 시 필요한 form -->
	<div class="col-12 col-md-2"></div>
	<div class="col-12 col-md-8 text-right">
		<form name="frmSearch" method="post" action="<c:url value='/owner/menu5/faq.do'/>">
			<div class="dropdown">
				<a class="btn btn-primary dropdown-toggle" href="#none" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 카테고리 </a>
				<!-- 반복문 시작 -->
				<div class="dropdown-menu" aria-labelledby="dropdownMenuLink"
					style="text-decoration: none;">
					<c:forEach var="cgVo" items="${cgList }">
						<a class="dropdown-item" id="cgName" href="${pageContext.request.contextPath}/owner/menu5/faqDetail.do?fCategoryNo=${cgVo.fCategoryNo}">${cgVo.fCategoryName }</a>
					</c:forEach>
				</div>
			</div>
			<!-- 반복문 끝 -->
		</form>
	</div>
	<div class="col-12 col-md-2"></div>
	<br> <br>
	<!-- 테이블 시작 -->
	<div class="col-12 col-md-2"></div>
	<div class="col-12 col-md-8">
		<table class="table table">
			<thead>
				<tr class="text-center">
					<th scope="col" style="width: 5%;">번호</th>
					<th scope="col" style="width: 20%;">카테고리</th>
					<th scope="col" style="width: 75%;">제목</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${empty list }">
					<tr class="text-center">
						<th colspan="3">해당하는 질문이 없습니다.</th>
					</tr>
				</c:if>
				<c:if test="${!empty list }">
					<c:forEach var="vo" items="${list}">
						<div class="accordion" id="accordionExample">
							<div class="accodionTitle" id="headingTwo">
								<tr class="text-center">
									<th scope="row">
										<div style="display: block; padding: 10px;">${vo.faqNo }</div>
									</th>
									<!-- 옵션 선택을 안 할 경우 desc로 전체  -->
									<td class="">
										<div style="display: block; padding: 10px;">${vo.fCategoryName }</div>
									</td>
									<td class="text-left">
										<button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" 
										aria-controls="collapseTwo">${vo.faqQ} </button>
									</td>
								</tr>
							</div>
							<tr class="text-center">
								<th scope="row"></th>
								<td></td>
								<td class="text-left">
									<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
										<div style="display: block; padding: 10px;">${vo.faqA}</div>
									</div>
								</td>
							</tr>
						</div>
						</div>
					</c:forEach>
				</c:if>
			</tbody>
		</table>
	</div>
	<div class="col-12 col-md-2"></div>
</div>



<!-- 페이지 시작-->
<div class="card-body">
	<nav aria-label="Page navigation example">
		<ul class="pagination pagination-primary justify-content-center">
			<!-- 페이지 번호 추가 -->
			<!-- 이전 블럭으로 이동 -->
			<c:if test="${pagingInfo.firstPage>1 }">
				<li class="page-item"><a class="page-link" href="#" aria-label="Previous" onclick="pageFunc(${pagingInfo.firstPage-1})">
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
					<li class="page-item"><a class="page-link" href="#" onclick="pageFunc(${i})">${i}</a></li>
				</c:if>
			</c:forEach>
			<c:if test="${pagingInfo.lastPage < pagingInfo.totalPage }">
				<li class="page-item"><a class="page-link" href="#" aria-label="Previous" onclick="pageFunc(${pagingInfo.lastPage+1})">
					<span aria-hidden="true">&raquo;</span>
				</a></li>
			</c:if>
		</ul>
	</nav>
</div>
<br>
<br>
<br>

<%@ include file="../../ownerInc/bottom.jsp"%>
