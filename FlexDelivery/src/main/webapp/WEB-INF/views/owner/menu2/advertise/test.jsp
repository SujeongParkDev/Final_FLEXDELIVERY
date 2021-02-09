<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    


<!DOCTYPE html>
  <html>
  <head>
	
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/bootstrap.css">
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/chartjs/Chart.min.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/app.css">

    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/ownerResources/assets/images/favicon.svg" type="image/x-icon">


<script type="text/javascript" src="<c:url value='/resources/ownerResources/herbJs/jquery-3.5.1.min.js'/>"></script>
<script type="text/javascript" src="<c:url value='/resources/ownerResources/herbJs/paging.js'/>"></script>
<script type="text/javascript">
	$(function(){
		$('#submit').click(function(){
			$.ajax({
				url:"<c:url value='/owner/menu2/advertise/test.do'/>",
				type:"post",
				data: $('#frmZip').serializeArray(),
				dataType:"xml",
				success:function(xmlStr){
					//alert(xmlStr);
					totalCount=$(xmlStr).find('totalCount').html();
					var errorCode=$(xmlStr).find('errorCode').text();
					var errorMessage=$(xmlStr).find('errorMessage').text();
					
					if(errorCode!=0){
						alert(errorCode +" => " + errorMessage);
					}else{
						if(xmlStr!=null){
							$.makeList(xmlStr);
							$.pageMake();
						}
					}
					
				},
				error:function(xhr, status, error){
					alert("error! : " + error);
				}
			});
		});
	});
	
	$.makeList=function(xmlStr){
		if(totalCount==0){
			$('#divCount').html("");
			$('#divZip')
				.html("<p style='text-align:center'>검색된 내용이 없습니다.</p>");
			return;
		}	
		
		$('#divCount').html("<p>음식 영양 성분 검색 결과 ("+ totalCount +"건)</p>");
		
		var str="<table class='box2'>";
		str+="<tr><th style='width:20%'>우편번호</th>";
		str+="<th style='width:80%'>도로명 주소</th></tr>";
		
		$(xmlStr).find('resultCode').each(function(idx, item){
			console.log(xmlStr);
			var roadAddr = $(this).find("DESC_KOR").text();
			var zipNo = $(this).find("SERVING_WT").text();
		
			
			str+="<tr>";
			str+="<td>"+zipNo+"</td>";
			str+="<td>"
			str+=
		"<a href='#' >"; 
			str+= roadAddr +"</a></td>";			
			str+="</tr>";
		});//each
		str+="</table>";
		
		$('#divZip').html(str);
	}
	
	
	
</script>
</head>
<body style="text-align: center;">

	<h2>도로명 주소 검색</h2>
	<p>도로명주소, 건물명 또는 지번을 입력하세요</p>
	<p class="blue">검색어 예 : 도로명(반포대로 58), 건물명(독립 기념관), 지번(삼성동 25)</p>
	
	<form name="frmZipcode" id="frmZip" method="post">
		<!-- <input type="hidden" name="pageNo" id="pageNo" value="1"/> 요청 변수 설정 (현재 페이지. currentPage : n > 0)
		<input type="hidden" name="countPerPage" id="numOfRows" value="6"/>요청 변수 설정 (페이지당 출력 개수. countPerPage 범위 : 0 < n <= 100) 
		<input type="hidden" name="numOfRows" id="confmKey" 
		 value="U01TX0FVVEgyMDE3MTIxODE3Mzc0MTEwNzU1Njg="/>요청 변수 설정 (승인키) -->
		
		<label for="desc_kor">지역명 : </label> 
		<input type="text" name="desc_kor"
			id="desc_kor" style="ime-mode: active" > 
		<input type="button" id="submit" value="찾기">
	</form>
	
	<div id="divCount"></div>
	<div id="divZip" align="center"></div>
	<div id="divPage"></div>
	
</body>
</html> --%>