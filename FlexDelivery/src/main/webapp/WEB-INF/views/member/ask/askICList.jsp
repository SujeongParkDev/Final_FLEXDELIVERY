<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 
<input type ="text" name="askId" id="askId" value="${sessionScope.memberId}">
<div>
	<c:if test="${empty askICList}">
		<div>
			1:1 문의가 존재하지 않습니다.
		</div>
	</c:if>

	<!-- 리스트 시작 -->
	<c:if test="${!empty askICList }">
		<c:forEach var="vo" items="${askICList }" varStatus="i">
		<tr>
			<td class="text-bold-500">${vo.askNo }</td>
			<td colspan="3">${vo.askContent }</td>
			<td>${vo.askRegdate }</td>
				<c:if test="${vo.askReplyFlag =='n'}">
				<td><span class="badge badge-success">
				답변완료
				</span></td>
				</c:if>
				<c:if test="${vo.askReplyFlag !='n'}">
				<td><span class="badge badge-danger">
				미답변
				</span></td>
				</c:if>
			<td><a href="" class="badge bg-secondary text-lite" >삭제</a></td>
		</tr>
		</c:forEach>
	</c:if>
	
</div>