<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>점포 회원 가입</title>

    <!-- Icons font CSS-->
    <link href="${pageContext.request.contextPath}/resources/ownerResources/registerOwner/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="${pageContext.request.contextPath}/resources/ownerResources/registerOwner/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="${pageContext.request.contextPath}/resources/ownerResources/registerOwner/vendor/select2/select2.min.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="${pageContext.request.contextPath}/resources/ownerResources/registerOwner/css/main.css" rel="stylesheet" media="all">


  <script src="${pageContext.request.contextPath}/resources/ownerResources/herbJs/jquery-3.5.1.min.js"></script>
	
	<script type="text/javascript">
		function goHome(){
			location.href="<c:url value='/owner/index.do'/>";
		}
		
		$(function(){
			$('#btOwnerWrite').click(function(){
				if($('#ownerName').val().length<1){
					alert('이름을 입력하세요');
					$('#ownerName').focus();
					event.preventDefault();
				}else if(!validate_userid($('#ownerId').val())){
					alert('아이디는 영문,숫자,_만 가능합니다.');
					$('#ownerId').focus();
					event.preventDefault();				
				}else if($('#ownerPwd').val().length<1){
					alert('비밀번호를 입력하세요');
					$('#ownerPwd').focus();
					event.preventDefault();
				}else if($('#ownerPwd').val()!=$('#rePwd').val()){
					alert('비밀번호가 일치하지 않습니다.');
					$('#rePwd').focus();
					event.preventDefault();
				}else if(!validate_phone($('#ownerHp2').val()) ||
						!validate_phone($('#ownerHp3').val())){
					alert('전화번호를 입력하세요.');
					$('#ownerHp2').focus();
					event.preventDefault();				
				}else if($('#chkId').val() !='Y'){
					alert('아이디 중복확인하세요');
					$('#btnChkId').focus();
					event.preventDefault();
				}
			});
		});
		
		function validate_userid(id){
			var pattern = new RegExp(/^[a-zA-Z0-9_]+$/g);
			return pattern.test(id);
			/*
			a에서 z 사이의 문자, A~Z사이의 문자, 0 에서 9사이의 숫자나 _로 시작하거나 
			끝나야 한다는 의미
			닫기 대괄호(]) 뒤의 + 기호는 이 패턴이 한 번 또는 그 이상 반복된다는 의미
			*/
		}
		
		function validate_phone(tel){
			var pattern = new RegExp(/^[0-9]*$/g);
			return pattern.test(tel);
			/*
				0 에서 9사이의 숫자로 시작하거나 끝나야 한다는 의미 (^는 시작, $는 끝을 의미)
				닫기 대괄호(]) 뒤의 * 기호는 0번 이상 반복
			*/
		}
		
		$(function(){
				$('#btnChkId').click(function(){
					var type=$(this).attr('name');  //admin, user
					
					window.screen.width //현재 윈도우창의 가로크기를 가져옴
					window.screen.height //세로크기 가져옴
					
					var popupWidth = 500; //띄울 창 가로크기
					var popupHeight = 300;
					
					var popupX = (window.screen.width / 2) - (popupWidth /2);
					var popupY = (window.screen.height / 2) - (popupHeight /2);
					
					window.open(
						"${pageContext.request.contextPath}/owner/register/checkId.do?ownerId="+$('#ownerId').val()+"&type="+type, 
						"아이디 중복 확인", 
						'toolbar=no, menubar=no, scrollbars=no, height='+popupHeight+', width='+ popupWidth +', left='+popupX+', top='+popupY);
				});
					
				
		});
		
		
	</script>
</head>
<body style="background-image: url('https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTAxMDlfMjMx%2FMDAxNjEwMjAxODU3NDY2.Yq_B5-mqmBaMchB1HYwLYoT-fIkiw7QWxcq75CREoBUg.9gyCahRJmXq2EYSfWz-O6lwO8iLgUQ1SoGoWznTNnjEg.JPEG.bmj3242%2F19.jpg&type=sc960_832');
				background-repeat: no-repeat; background-size: cover; ">
    <div class="page-wrapper p-t-100 p-b-100 font-robo">
        <div class="wrapper wrapper--w680">
            <div class="card card-1">
           			<div  class="card-heading" style="background-image: url('${pageContext.request.contextPath}/resources/imgs/test.jpg');">
           		 		<img src="${pageContext.request.contextPath}/resources/imgs/FD.png" width="500px;"/>  
           			</div>
                <div class="card-body ">
                    <h2 class="title" style="text-align: center;">FLEX REGISTER</h2>
                    <form method="POST" action="<c:url value='/owner/ownerWrite.do'/>">
                        <div class="input-group" style="margin-bottom:10px;">
                            	이름  <input class="input--style-1" type="text" id="ownerName" name="ownerName" style="text-align:center; ime-mode:active;" >
                        </div>
                        <div style="text-align: right;" >
                        	<span></span>
                        </div>
                        
                        <div class="input-group" style="margin-bottom:10px;">
                        	<div>
                            	아이디 <input class="input--style-1" type="text" name="ownerId"  id="ownerId" style="text-align:center;">
                        	</div>
                        </div>
                        <div>
                        	<button class="btn btn--radius" name="owner" type="button" style="margin-left:400px;width:80px; height:40px; background-color: rgb(223,108,220);border:1px solid rgb(223,108,220);" id="btnChkId">중복확인</button>
                        </div>
                         <div style="text-align: right;">
                        	<span></span>
                        </div>
                        
                       
                        <div class="input-group" style="margin-bottom:10px;">
                            	비밀번호 <input class="input--style-1" type="password"name="ownerPwd" id="ownerPwd" style="text-align:center;">
                        </div>
                         <div style="text-align: right;">
                        	<span></span>
                        </div>
                        
                        <div class="input-group" style="margin-bottom:10px;">
                            	비밀번호 재확인 <input class="input--style-1" type="password" id="rePwd" name="rePwd"  style="text-align:center;">
                        </div>
                         <div style="text-align: right;">
                        	<span></span>
                        </div>
                    
                        <div class="row row-space">
                                <div>
                                    <div class="rs-select2 js-select-simple select--no-search" style="width:120px; text-align-last:center;" >
                                        <select name="ownerHp1" class="input-group" >
                                            <option selected="selected">010</option>
                                            <option>011</option>
                                            <option>016</option>
                                        </select>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                            <span style="font-size: 30px;">-</span>
                            	<div class="input-group">
                            		<input class="input--style-1" type="text"  name="ownerHp2"  maxlength="4" id="ownerHp2" style="text-align:center; width:120px;" >
                            	</div>
                            <span style="font-size: 30px;">-</span>
                            	<div class="input-group">
                            		<input class="input--style-1" type="text" name="ownerHp3" maxlength="4" id="ownerHp3"  style="text-align:center; width:120px;">
                            	</div>
                            	<input type ="hidden" name="chkId" id="chkId">
                        </div>
                        
                        <br>
                        <div align="center">
                            <button class="btn btn--radius btn--green " type="submit" style="background-color: rgb(223,108,220);border:1px solid rgb(223,108,220);" id="btOwnerWrite">가입</button>
                            <button class="btn btn--radius btn--green" type="button" onclick="goHome()"
                            		style="border:1px solid rgb(223,108,220); color:rgb(118,18,118); background-color: white">취소</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Jquery JS-->
    <script src="${pageContext.request.contextPath}/resources/ownerResources/registerOwner/vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="${pageContext.request.contextPath}/resources/ownerResources/registerOwner/vendor/select2/select2.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/ownerResources/registerOwner/vendor/datepicker/moment.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/ownerResources/registerOwner/vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="${pageContext.request.contextPath}/resources/ownerResources/registerOwner/js/global.js"></script>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->