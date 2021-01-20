<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../adminInc/top.jsp" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/bootstrap.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/app.css">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/ownerResources/assets/images/favicon.svg" type="image/x-icon">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/simple-datatables/style.css">
<br><br>

<div class="main-content container-fluid">
    <div class="page-title">
        <div class="row">
            <div class="col-12 col-md-6 order-md-1 order-last">
                <h3>점포 승인 관리</h3>
                <p class="text-subtitle text-muted">점포 등록승인/승인 변경 관리 페이지입니다. </p>
            </div>
            <div class="col-12 col-md-6 order-md-2 order-first">
                <nav aria-label="breadcrumb" class='breadcrumb-header'>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="<c:url value='/admin/main.do'/> ">Main</a></li>
                        <li class="breadcrumb-item active" aria-current="page">점포 승인 관리</li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
    <section class="section">
        <div class="card">
            <div class="card-header">
                	승인 관리 현황표
            </div>
            <div class="card-body">
                <table class='table table-striped' id="table1">
                    <thead>
                        <tr>
                            <th>접수번호</th>
                            <th>점포명</th>
                            <th>점주명</th>
                            <th>연락처</th>
                            <th>지역</th>
                            <th>승인상태</th>
                        </tr>
                    </thead>
                    <tbody>
                    <!-- 반복구간 시작 -->
                        <tr>
                        	<td>123456</td>
                            <td>선영아 사랑해</td>
                            <td>선영이남편</td>
                            <td>010 4321-1234</td>
                            <td>강서구</td>
                            <td>
                                <span class="badge bg-success">변경완료</span>
                            </td>
                        </tr>
                        <tr>
                            <td>123455</td>
                            <td>아 됐거든</td>
                            <td>선영이</td>
                            <td>010 4321-4321</td>
                            <td>관악구</td>
                            <td>
                                <span class="badge bg-success">승인완료</span>
                            </td>
                        </tr>
                        <tr>
                            <td>123454</td>
                            <td>여보 언제와</td>
                            <td>영숙이</td>
                            <td>010 1234-4321</td>
                            <td>서초구</td>
                            <td>
                                <span class="badge bg-danger">승인미완료</span>
                            </td>
                        </tr>
                        <tr>
                            <td>123453</td>
                            <td>먼저 주무시게~</td>
                            <td>영숙이 남편</td>
                            <td>010 1234-4321</td>
                            <td>강남구</td>
                            <td>
                                <span class="badge bg-danger">변경미완료</span>
                            </td>
                        </tr>
                        <tr>
                            <td>123452</td>
                            <td>헨젤과 그랬데..수근수근</td>
                            <td>이수근</td>
                            <td>010 9876-4321</td>
                            <td>종로구</td>
                            <td>
                                <span class="badge bg-success">승인완료</span>
                            </td>
                        </tr>
                        <tr>
                            <td>123451</td>
                            <td>그레텔도 그랬데..웅성웅성</td>
                            <td>헨젤</td>
                            <td>010 1234-4321</td>
                            <td>강북구</td>
                            <td>
                                <span class="badge bg-success">승인완료</span>
                            </td>
                        </tr>
                        <tr>
                            <td>123450</td>
                            <td>다 그랬데..와글와글</td>
                            <td>헨젤,그레텔</td>
                            <td>010 1234-4321</td>
                            <td>송파구</td>
                            <td>
                                <span class="badge bg-success">변경완료</span>
                            </td>
                        </tr>
                        <tr>
                            <td>123449</td>
                            <td>작작 좀 먹지?</td>
                            <td>선영이</td>
                            <td>010 1234-9876</td>
                            <td>성북구</td>
                            <td>
                                <span class="badge bg-success">변경완료</span>
                            </td>
                        </tr>
                        <tr>
                            <td>123448</td>
                            <td>먹다 죽을란다</td>
                            <td>선영이 왠수</td>
                            <td>010 5678-4321</td>
                            <td>동작구</td>
                            <td>
                                <span class="badge bg-success">승인반려</span>
                            </td>
                        </tr>
                        <tr>
                            <td>123447</td>
                            <td>자넨 국물도 없네</td>
                            <td>선영이 엄마</td>
                            <td>010 7890-4567</td>
                            <td>광진구</td>
                            <td>
                                <span class="badge bg-success">변경반려</span>
                            </td>
                        </tr>
                        <tr>
                            <td>123446</td>
                            <td>그럼 건더기라도</td>
                            <td>장모님 왠수</td>
                            <td>010 3456-4321</td>
                            <td>금천구</td>
                            <td>
                                <span class="badge bg-success">승인반려</span>
                            </td>
                        </tr>
                        <tr>
                        	<td>123456</td>
                            <td>선영아 사랑해</td>
                            <td>선영이남편</td>
                            <td>010 4321-1234</td>
                            <td>강서구</td>
                            <td>
                                <span class="badge bg-success">변경완료</span>
                            </td>
                        </tr>
                        <tr>
                            <td>123455</td>
                            <td>아 됐거든</td>
                            <td>선영이</td>
                            <td>010 4321-4321</td>
                            <td>관악구</td>
                            <td>
                                <span class="badge bg-success">승인완료</span>
                            </td>
                        </tr>
                        <tr>
                            <td>123454</td>
                            <td>여보 언제와</td>
                            <td>영숙이</td>
                            <td>010 1234-4321</td>
                            <td>서초구</td>
                            <td>
                                <span class="badge bg-danger">승인미완료</span>
                            </td>
                        </tr>
                        <tr>
                            <td>123453</td>
                            <td>먼저 주무시게~</td>
                            <td>영숙이 남편</td>
                            <td>010 1234-4321</td>
                            <td>강남구</td>
                            <td>
                                <span class="badge bg-danger">변경미완료</span>
                            </td>
                        </tr>
                        <tr>
                            <td>123452</td>
                            <td>헨젤과 그랬데..수근수근</td>
                            <td>이수근</td>
                            <td>010 9876-4321</td>
                            <td>종로구</td>
                            <td>
                                <span class="badge bg-success">승인완료</span>
                            </td>
                        </tr>
                        <tr>
                            <td>123451</td>
                            <td>그레텔도 그랬데..웅성웅성</td>
                            <td>헨젤</td>
                            <td>010 1234-4321</td>
                            <td>강북구</td>
                            <td>
                                <span class="badge bg-success">승인완료</span>
                            </td>
                        </tr>
                        <tr>
                            <td>123450</td>
                            <td>다 그랬데..와글와글</td>
                            <td>헨젤,그레텔</td>
                            <td>010 1234-4321</td>
                            <td>송파구</td>
                            <td>
                                <span class="badge bg-success">변경완료</span>
                            </td>
                        </tr>
                        <tr>
                            <td>123449</td>
                            <td>작작 좀 먹지?</td>
                            <td>선영이</td>
                            <td>010 1234-9876</td>
                            <td>성북구</td>
                            <td>
                                <span class="badge bg-success">변경완료</span>
                            </td>
                        </tr>
                        <tr>
                            <td>123448</td>
                            <td>먹다 죽을란다</td>
                            <td>선영이 왠수</td>
                            <td>010 5678-4321</td>
                            <td>동작구</td>
                            <td>
                                <span class="badge bg-success">승인반려</span>
                            </td>
                        </tr>
                        <tr>
                            <td>123447</td>
                            <td>자넨 국물도 없네</td>
                            <td>선영이 엄마</td>
                            <td>010 7890-4567</td>
                            <td>구로구</td>
                            <td>
                                <span class="badge bg-success">변경반려</span>
                            </td>
                        </tr>
                        <tr>
                            <td>123446</td>
                            <td>그럼 건더기라도</td>
                            <td>장모님 왠수</td>
                            <td>010 3456-4321</td>
                            <td>서대문구</td>
                            <td>
                                <span class="badge bg-success">변경승인</span>
                            </td>
                        </tr>
                    <!-- 반복구간 끝 -->
                    </tbody>
                </table>
            </div>
        </div>

    </section>
</div>

<!-- script start -->
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/feather-icons/feather.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/app.js"></script>   
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/simple-datatables/simple-datatables.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/vendors.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/main.js"></script>
<!-- script end -->



<%@ include file="../../adminInc/bottom.jsp" %>