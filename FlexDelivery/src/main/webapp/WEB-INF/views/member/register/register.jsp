<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<script type="text/javascript" src="<c:url value='/resources/memberResources/vendor/jquery/jquery.min.js' />"></script>
<script type="text/javascript" src="<c:url value='/resources/memberResources/js/member.js' />"></script>
<script type="text/javascript">
	$(function(){
		$('#wr_submit').click(function(){
			if($('#name').val().length<1){
				alert('이름을 입력하세요');
				$('#name').focus();
				event.preventDefault();
			}else if(!validate_userid($('#userid').val())){
				alert('아이디는 영문,숫자,_만 가능합니다.');
				$('#userid').focus();
				event.preventDefault();				
			}else if($('#pwd').val().length<1){
				alert('비밀번호를 입력하세요');
				$('#pwd').focus();
				event.preventDefault();
			}else if($('#pwd').val()!=$('#pwd2').val()){
				alert('비밀번호가 일치하지 않습니다.');
				$('#pwd2').focus();
				event.preventDefault();
			}else if(!validate_phone($('#hp2').val()) ||
					!validate_phone($('#hp3').val())){
				alert('전화번호는 숫자만 가능합니다.');
				$('#hp2').focus();
				event.preventDefault();				
			}else if($('#chkId').val() !='Y'){
				alert('아이디 중복확인하세요');
				$('#btnChkId').focus();
				event.preventDefault();
			}
		});
		
		$('#memberid').keyup(function(){
			var memberid=$(this).val();
			
			if(validate_memberid(memberid) && memberid.length>=2){
				$.ajax({
					url:"<c:url value='/member/ajaxCheckId.do'/>",
					type:"get",
					data:{
						userid:userid
					},
					success:function(res){
						//alert(res);  //true, false
						var msg="", chkYn="";
						if(res){  //이미 존재
							msg="이미 등록된 아이디";
							chkYn="N";
						}else{ //사용 가능							
							msg="사용가능한 아이디";
							chkYn="Y";
						}
						
						$('.error').html(msg);
						$('#chkId').val(chkYn);
					},
					error:function(xhr, status, error){
						alert('error! : '  +error);
					}
				});
			}else{
				//정규식 에러
				$('.error').html("아이디 규칙에 맞지 않습니다.");
				$('#chkId').val('N');
			}
		});
	});
</script>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Askbootstrap">
    <meta name="author" content="Askbootstrap">
    <link rel="icon" type="image/png" href="<c:url value='/resources/memberResources/img/fav.png' />">
    <title>FlexDelivery 회원가입</title>
    <!-- Slick Slider -->
    <link rel="stylesheet" type="text/css" href="<c:url value='/resources/memberResources/vendor/slick/slick.min.css' />" />
    <link rel="stylesheet" type="text/css" href="<c:url value='/resources/memberResources/vendor/slick/slick-theme.min.css' />" />
    <!-- Feather Icon-->
    <link href="<c:url value='/resources/memberResources/vendor/icons/feather.css' />" rel="stylesheet" type="text/css">
    <!-- Bootstrap core CSS -->
    <link href="<c:url value='/resources/memberResources/vendor/bootstrap/css/bootstrap.min.css' />" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="<c:url value='/resources/memberResources/css/style.css' />" rel="stylesheet">
    <!-- Sidebar CSS -->
    <link href="<c:url value='/resources/memberResources/vendor/sidebar/demo.css' />" rel="stylesheet">
</head>

<body>
    <div class="osahan-signup login-page">
        <video loop autoplay muted id="vid">
            <source src="<c:url value='/resources/memberResources/img/bg.mp4' />" type="video/mp4">
            <source src="<c:url value='/resources/memberResources/img/bg.mp4' />" type="video/ogg">
         </video>
        <div class="d-flex align-items-center justify-content-center flex-column vh-110">
            <div class="px-6 col-md-6 ml-auto">
                <div class="px-5 col-10 mx-auto">
                    <!-- <p class="text-50">Sign up to continue</p> -->
                    <form class="mt-5 mb-4" method="post" action="<c:url value='/member/memberWrite.do'/>">
                    <h2 class="text-dark my-0">안녕하세요!</h2>
                    	<br>
                        <div class="form-group">
                            <label for="exampleInputName1" class="text-dark">이름</label>
                            <input type="text" placeholder="이름을 입력하세요" class="form-control" id="membername" aria-describedby="nameHelp">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputNumber1" class="text-dark">아이디</label>
                            <input type="text" placeholder="ID를 입력하세요" class="form-control" name="memberid" id="memberid" aria-describedby="numberHelp">
                            <span class="error" style="color: red">ckid</span>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1" class="text-dark">비밀번호</label>
                            <input type="password" placeholder="비밀번호를 입력하세요" class="form-control" id="memberpwd">
                            <br>
                            <label for="exampleInputPassword1" class="text-dark">비밀번호 확인</label>
                            <input type="password" placeholder="" class="form-control" id="memberpwd2">
                        </div>
						<label for="exampleInputNumber1" class="text-dark">전화번호</label>
						<div class="row">
							<div class="col-md-4" >
								<input type="text"  placeholder="번호 입력" class="form-control" id="member_hp1" aria-describedby="numberHelp" style="background-color: #fafaf9;">
							</div>
							<div class="col-md-4">
								<input type="text" placeholder="번호 입력" class="form-control" id="member_hp2" aria-describedby="numberHelp" style="background-color: #fafaf9;">
							</div>
							<div class="col-md-4">
								<input type="text" placeholder="번호 입력" class="form-control" id="member_hp3" aria-describedby="numberHelp" style="background-color: #fafaf9;">
							</div>
						</div>
						<br> 
						<label for="" class="text-dark">이메일</label>
						<div class="row" style="line-height: 33px">
							<div class="col-md-5" >
								<input type="text"  placeholder="이메일 입력" class="form-control" id="member_hp1" aria-describedby="numberHelp" style="background-color: #fafaf9;">
							</div>
							<p>@</p>
							<div class="col-md-5">
								<input type="text" placeholder="이메일 입력" class="form-control" id="member_hp2" aria-describedby="numberHelp" style="background-color: #fafaf9;">
							</div>
							<input type="Button" value="이메일 확인" id="btnEmail" title="새창열림">
						</div>
						<br>
						<div class="row">
							<label for="exampleInputaddress" class="text-dark" style="line-height: 33px">주소 검색</label>
							<div class="col-md-4" >
								<input type="text"  placeholder="주소 검색" ReadOnly title="주소" class="form-control" name="zipcode" id="zipcode" aria-describedby="numberHelp" style="background-color: #fafaf9;">
							</div>
							<input type="Button" value="우편번호 찾기" id="btZipcode" title="새창열림">
							<!-- <span class="float-right"><a href="#" class="btn btn-outline-secondary btn-sm" data-toggle="modal" data-target="#extras">검색</a></span> -->
						</div>
						<br>
						
						<div class="form-group">
							<label for="exampleInputaddress" class="text-dark">주소</label>
							<input type="text" ReadOnly class="form-control" id="memberaddress" name="memberaddress" aria-describedby="numberHelp" style="background-color: #fafaf9;">
						</div>
						<div class="form-group">
							<label for="exampleInputaddress" class="text-dark">상세주소</label>
							<input type="text" placeholder="" class="form-control" id="memberaddressDetail" aria-describedby="numberHelp" style="background-color: #fafaf9;">
						</div>
						
						
						<button class="btn btn-primary btn-lg btn-block" >
						회원 가입
						</button>
						
<!--					<div class="py-2">
							<button class="btn btn-facebook btn-lg btn-block"><i class="feather-facebook"></i> Connect with Facebook</button>
						</div> -->
					</form>
				</div>
                <div class="new-acc d-flex align-items-center justify-content-center">
                    <a href="<c:url value='/member/login/memberLogin.do' />">
                        <p class="text-center m-0">아이디가 있으신가요? 로그인 화면으로</p>
                    </a>
                    <input type ="text" name="chkId" id="chkId">
                </div>
            </div>
        </div>
    </div>
    <br><br><br> 

	<!-- Bootstrap core JavaScript -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/memberResources/vendor/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/memberResources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- slick Slider JS-->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/memberResources/vendor/slick/slick.min.js"></script>
	<!-- Sidebar JS-->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/memberResources/vendor/sidebar/hc-offcanvas-nav.js"></script>
	<!-- Custom scripts for all pages-->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/memberResources/js/osahan.js"></script>
</body>

</html>