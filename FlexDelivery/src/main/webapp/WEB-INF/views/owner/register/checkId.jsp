<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


  <script src="${pageContext.request.contextPath}/resources/ownerResources/herbJs/jquery-3.5.1.min.js"></script>
   <script src="${pageContext.request.contextPath}/resources/ownerResources/registerOwner/vendor/jquery/jquery.min.js"></script>
  <script type="text/javascript">
	$(function(){
		$('#btUse').click(function(){
			$(opener.document).find('#ownerId').val("${param.ownerId}");
			$(opener.document).find('#chkId').val("Y");	
			self.close();
		});
		
		
	});
</script>
</head>
<body>
	<h2>아이디 중복 검사</h2><br>
	<form name="frmId" method="post" 
		action="<c:url value='/owner/register/checkId.do'/>">
		<input type="text" name="type"  value="${param.type}">
		 
		<input type="text" name="ownerId" id="ownerId" 
		 title="아이디입력" value="${param.ownerId}">
		 
		<input type="submit"  id="submit" value="아이디 확인">
		
		<c:if test="${result==EXIST_ID }">
			<p>이미 등록된 아이디입니다. 다른 아이디를 입력하세요.</p>
		</c:if>
		<c:if test="${result==NON_EXIST_ID }">
			<input type="button" value="사용하기" id="btUse">
			<p>사용가능한 아이디입니다.[사용하기]버튼을 클릭하세요</p>
		</c:if>
	</form>
	
</body>
</html>