<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../../memInc/top.jsp" %>
<script type="text/javascript" src="<c:url value='/resources/memberResources/js/jquery-3.5.1.min.js'/>"></script>
<script type="text/javascript">
	$(function(){
		var tabIdx=0;
		
		$('a[data-toggle="tab"]').on("show.bs.tab", function(e) {
			if(e.target.id=='home-tab'){
				tabIdx=1;
			}else if(e.target.id=='profile-tab'){
				tabIdx=2;
			}
		});
		
		$('.feather-search').click(function(){
			$('form[name=frmSearch]').submit();
		})
	});
</script>
<div class="d-none">
    <div class="bg-primary p-3 d-flex align-items-center">
        <a class="toggle togglew toggle-2" href="#"><span></span></a>
        <h4 class="font-weight-bold m-0 text-white">Board</h4>
    </div>
</div>
<form name="frmPage" method="post">

</form>
<div class="osahan-popular">
    <!-- Most popular -->
    <div class="container">
        <div class="search py-5">
            <div class="input-group mb-4">
				<form action="frmSearch" method="post">
	                <input type="text" class="form-control form-control-lg input_search border-right-0" id="inlineFormInputGroup" placeholder="검색어를 입력하세요" name="searchKeyword">
	                <div class="input-group-prepend">
	                    <div class="btn input-group-text bg-white border_search border-left-0 text-primary"><i class="feather-search"></i></div>
	                </div>
				</form>
            </div>
            <!-- nav tabs -->
             <ul class="nav nav-tabs border-0" id="myTab" role="tablist">
                 <li class="nav-item" role="presentation">
                     <a class="nav-link active border-0 bg-light text-dark rounded" id="home-tab" data-toggle="tab" href="#notice" role="tab" aria-controls="home" aria-selected="true"><i class="feather-home mr-2"></i>공지사항 (8)</a>
                 </li>
                 <li class="nav-item" role="presentation">
                     <a class="nav-link border-0 bg-light text-dark rounded ml-3" id="profile-tab" data-toggle="tab" href="#event" role="tab" aria-controls="profile" aria-selected="false"><i class="feather-disc mr-2"></i>이벤트 (23)</a>
                 </li>
             </ul>
             <div class="tab-content" id="myTabContent">
             	<div class="tab-pane fade show active" id="notice" role="tabpanel" aria-labelledby="home-tab">
             	<!-- 공지사항 -->
	             	<c:if test="${empty nlist}">
	             		<div class="row d-flex align-items-center justify-content-center py-5">
		                	<div class="col-md-4 py-5">
		                    	<div class="text-center py-5">
		                        	<p class="h4 mb-4"><i class="feather-search bg-primary text-white rounded p-2"></i></p>
		                       		<p class="font-weight-bold text-dark h5">Nothing found</p>
		                    	</div>
		                	</div>
		            	</div>
	             	</c:if>
					<c:if test="${!empty nlist}">
		             	<div class="container mt-4 mb-4 p-0">
		             		<div class="bg-white">
				             	<table class="table table-borderless table-hover">
				             		<thead>
									    <tr>
									      <th scope="col" width="10%">No</th>
									      <th scope="col" width="70%" align="center">Title</th>
									      <th scope="col" width="20%">Date</th>
									    </tr>
									</thead>
									<tbody>
										<c:forEach items="${nlist}" var="nVo">
									    <tr>
									      <th scope="row">${nVo.rn}</th>
									      <td><a href="<c:url value='/member/board/detail.do?boardNo=${nVo.boardNo}'/>">${nVo.boardTitle}</a></td>
									      <td>${nVo.boardRegdate}</td>
									    </tr>
									    </c:forEach>
								  	</tbody>
								</table>
							</div>
		             	</div>
					</c:if>
	           	</div>
				<!-- 이벤트 -->
				<div class="tab-pane fade" id="event" role="tabpanel" aria-labelledby="profile-tab">
	            <!-- Content Row -->
	            	<c:if test="${empty elist}">
		            	<div class="row d-flex align-items-center justify-content-center py-5">
		                	<div class="col-md-4 py-5">
		                    	<div class="text-center py-5">
		                        	<p class="h4 mb-4"><i class="feather-search bg-primary text-white rounded p-2"></i></p>
		                       		<p class="font-weight-bold text-dark h5">Nothing found</p>
		                        	<p>we could not find anything that would match your search request, please try again.</p>
		                    	</div>
		                	</div>
		            	</div>
	            	</c:if>
	            	<c:if test="${!empty elist}">
	            		<div class="container mt-4 mb-4 p-0">
		             		<div class="bg-white">
				             	<table class="table table-borderless table-hover">
				             		<thead>
									    <tr>
									      <th scope="col" width="10%">No</th>
									      <th scope="col" width="70%" align="center">Title</th>
									      <th scope="col" width="20%">Date</th>
									    </tr>
									</thead>
									<tbody>
										<c:forEach items="${elist}" var="nVo">
									    <tr>
									      <th scope="row">${eVo.rn}</th>
									      <td><a href="<c:url value='/member/board/detail.do?boardNo=${eVo.boardNo}'/>">${eVo.boardTitle}</a></td>
									      <td>${eVo.boardRegdate}</td>
									    </tr>
									    </c:forEach>
								  	</tbody>
								</table>
							</div>
		             	</div>
	            	</c:if>
	            </div>
	       	</div>
    	</div>
    <!--  -->
	</div>
</div>
<%@include file="../../memInc/bottom.jsp" %>