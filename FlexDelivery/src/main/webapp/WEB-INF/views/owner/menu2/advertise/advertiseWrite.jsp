


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- top 시작-->


<%@include file="../../../ownerInc/jianSidebarTop.jsp"%>
<!-- top 끝 -->
	<br>

	
	<div></div>
	<!-- 너비 맞추기 위한 row  -->
	<div class="row">
		<div class="col-md-4 col-12"></div>
		<div class="col-md-4 col-12">
		     <div class="card">
		         <div class="card-header">
		           		 <h4 class="card-title">광고 신청</h4>
			     </div>
			     
			     <div class="card-content">
				 	  <div class="card-body">
				 	  
				            <!-- form 시작 -->
			                <form class="form form-horizontal" method="post" action="<c:url value='/owner/menu2/advertise/advertiseWrite.do'/>" >
			                <div class="form-body">
			                    <div class="row">
				                    <div class="col-md-4">
				                        <label>광고명</label>
				                    </div>
				                    <div class="col-md-8 form-group" >
				                        <input type="text" id="advertiseName" class="form-control text-right" name="advertiseName" value="${param.choice }" readonly="readonly">
				                    </div>
				                    <div class="col-md-4">
				                        <label>가격</label>
				                    </div>
				                    <div class="col-md-8 form-group">
				                        <input type="text" id="advertisePrice" class="form-control text-right" name="advertisePrice"  placeholder="0" value="50000" readonly="readonly">
				                        <!-- 리스트로 뽑아오기 -->
				                    </div>
				                    <div class="col-md-4">
				                        <label>오늘날짜</label>
				                    </div>
				                    <div class="col-md-8 form-group">
				                        <input type="text" id="today" class="form-control  text-right" name="today" 
				                        	value="${today }" readonly="readonly">
				                    </div>
				                  
				                    <div class="col-sm-12 d-flex justify-content-end pt-5">
				                        <button type="submit" class="btn btn-primary mr-1 mb-1">신청</button>
				                        <button type="button" onclick="history.back()" class="btn btn-light-secondary mr-1 mb-1">취소</button>
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
<!-- bottom 시작-->
<%@include file="../../../ownerInc/jianSidebarBottom.jsp"%>


		