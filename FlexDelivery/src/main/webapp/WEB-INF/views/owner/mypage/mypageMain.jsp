<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../ownerInc/top.jsp" %>

<link rel="stylesheet" href="https://unpkg.com/aos@2.3.1/dist/aos.css">

<script type="text/javascript">

	$(document).ready(function(){
		$("#mypageDiv").focus();
	});
	
	
 	function goWithdraw(){
		if(confirm('탈퇴하시겠습니까?')){
			location.href="<c:url value='/owner/withdraw.do'/>";
		}
	};
	
	
	$(function(){
		$('.mypage').click(function(){
			var url="";
			if($(this).attr('value')=='edit'){
				url="<c:url value='/owner/register/registerEdit.do'/>";
			}else if($(this).attr('value')=='agree'){
				url="";
			}
			location.href=url;
			
		});
	});
	 
	  
	
		
	
	
	 
	
</script>
<style>
  	button.mypage{
		color:white;
		font-size:20px;
		background-color: rgb(223,108,220);
	}
	
	a.mypageAtag{
		text-decoration: none;
		color:black;
	}   
	
	
	

</style>







 
<div class="row">
	<div class="col-12 col-md-3"></div>
	<div class="col-12 col-md-6 text-center" >
	
	 <br>
		<div class="row mb-5 mt-3" id="mypageDiv" style="border: 1px solid black; background-color: white;" data-aos="zoom-in">
			<br><br>
			<!-- 헤드 시작 -->
			<div class="col-12 col-md-2 pt-5"></div>
			<div class="col-12 col-md-8 text-center pt-5" >
				 <h3>마 이 페 이 지</h3>
			</div>
			<div class="col-12 col-md-2 pt-5"></div>
				<br><br><Br>
			<!-- 헤드 시작 -->
			<div class="col-11 text-right mt-4 mb-4" >
				 <h5 style="display: inline;">[${ownerName}]</h5><span><small>&nbsp;사장님 반갑습니다</small></span>
			</div>
			<div class="col-12 col-md-1"></div>
				<br><br>
			
			<div class="col-12 text-center mt-4 mb-4" >
				
				<button class="mypage mr-2 btn" style="width:100px; height:100px;" value="edit">정보<br>수정</button>
				<button class="mypage ml-2 btn" style="width:100px; height:100px;" value="agree">승인<br>현황</button> 
			</div>
				<br><br><br><br><br><br>
			<div class="col-12 col-md-11 mt-4 text-right" >
				<a class="mypageAtag mr-5" onclick="goWithdraw()" href="#">[회원탈퇴]</a>
			</div>
			<div class="col-12 col-md-1"></div>
				<br><br><br>
		</div> 
	</div>
	<div class="col-12 col-md-3"></div>

</div>	  
       
       
       <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
			<script>
				AOS.init();
			</script>
       
<%@ include file="../../ownerInc/bottom.jsp" %>