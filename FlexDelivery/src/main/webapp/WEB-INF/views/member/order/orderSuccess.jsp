<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../../memInc/top.jsp" %>
<div class="d-none">
    <div class="bg-primary p-3 d-flex align-items-center">
        <a class="toggle togglew toggle-2" href="#"><span></span></a>
        <h4 class="font-weight-bold m-0 text-white">FLEX-DELIVERY</h4>
    </div>
</div>
<div class="py-5 osahan-coming-soon d-flex justify-content-center align-items-center">
    <div class="col-md-6">
        <div class="text-center pb-3">
            <h1 class="font-weight-bold">주문이 성공적으로 완료되었습니다.</h1>
        </div>
        <!-- continue -->
        <div class="bg-white rounded text-center p-4 shadow-sm">
            <h1 class="display-1 mb-4">🎉</h1>
            <h6 class="font-weight-bold mb-2"></h6>
            <p class="small text-muted">매장에서 주문이 접수되면 주문내역에서 확인할 수 있습니다</p>
            <a href="<c:url value='/member/order/orderList.do'/>" class="btn rounded btn-primary btn-lg btn-block">주문내역 확인</a>
            <a href="<c:url value='/member/index.do'/>" class="btn rounded btn-light btn-lg btn-block">홈으로</a>
        </div>
    </div>
</div>
<%@include file="../../memInc/bottom.jsp"%>