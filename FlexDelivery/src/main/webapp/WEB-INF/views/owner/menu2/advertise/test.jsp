

<!-- 기능 테스트용 오너 페이지와 전혀 관계 xxxxxxx -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- top 시작-->

<%@include file="../../../ownerInc/top.jsp"%>
<%@include file="../../../ownerInc/jianSidebarTop.jsp"%>
<!-- top 끝 -->
<table class="table table-hover">
    <thead>
        <th></th><th></th><th></th>
    </thead>
    
    <tbody>
        <tr data-toggle="collapse" data-target="#accordion" class="clickable">
            <td>Some Stuff</td>
            <td>Some more stuff</td>
            <td>And some more</td>
        </tr>
        <tr>
            <td colspan="3">
                <div id="accordion" class="collapse">Hidden by default</div>
            </td>
        </tr>
    </tbody>
</table>
	
		
<!-- bottom 시작-->
<%@include file="../../../ownerInc/jianSidebarBottom.jsp"%>
<%@include file="../../../ownerInc/bottom.jsp"%>
