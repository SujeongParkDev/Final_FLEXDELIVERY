<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../ownerInc/top.jsp"%>
<%@include file="../../ownerInc/jianSidebarTop.jsp"%>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/businessLicense.css" />
<script type="text/javascript" src="../js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
</script>
	<div class="row">
		<div class="col-md-4 col-12"></div>
		<div class="col-md-4 col-12">
		     <div class="card">
		         <div class="card-header">
		           		 <h4 class="card-title">사업자등록증 등록신청</h4>
			     </div>
			     
			     <div class="card-content">
				 	  <div class="card-body">
				 	  
				            <!-- form 시작 -->
			                <form class="form form-horizontal" method="post" action="<c:url value='/owner/menu2/advertise/advertiseWrite.do'/>" >
			                <div class="form-body">
			                    <div class="row">
			                       <div class="col-md-4">
				                        <label>사업자 대표명</label>
				                    </div>
				                    <div class="col-md-8 form-group" >
				                        <input type="text" id="" class="form-control text-right" placeholder="" name="" value="${param.choice }" >
				                    </div>
				                    <div class="col-md-4">
				                        <label>사업자등록 번호</label>
				                    </div>
				                    <div class="col-md-8 form-group" >
				                        <input type="text" id="" class="form-control text-right" placeholder=""  name="" value="${param.choice }">
				                    </div>
				                    <div class="col-md-4">
				                        <label>사업자등록증</label>
				                    </div>
				                    <div class="col-md-8 form-group">
				                        <input type="file" id="" class="form-control text-right border none" name=""   value="" >
				                    </div>
				                    <div class="col-sm-12 d-flex justify-content-end pt-5">
				                        <button type="submit" class="btn btn-primary mr-1 mb-1">신청</button>
				                        <button type="reset" class="btn btn-light-secondary mr-1 mb-1">취소</button>
				                    </div>
			                    </div>
			                </div>
			                </form>
			                
			   		   </div>
	              </div>
	         </div>
	    </div>
	    <div class="col-md-4 col-12"></div>
	</div>
<%@include file="../../ownerInc/jianSidebarBottom.jsp"%>
<%@include file="../../ownerInc/bottom.jsp"%>