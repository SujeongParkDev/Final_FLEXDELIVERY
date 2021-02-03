<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<form name="frmOrderIng" method="post"   action="<c:url value='/owner/menu2/order/orderIng.do'/>" >
	<input type="hidden" name="currentPage" value="1">
</form>
								
								
                         <!-- table hover -->
        <div class="table-responsive">
          <table class="table table mb-5">
            <thead>
              <tr class="text-center">
              	<th style="width:10%;">번호</th>
              	<th style="width:10%;">회원</th>
                <!-- 다급한거 이미지 -->
                <th style="width:30%;">주문내역</th>
                <th style="width:20%;">접수일자</th>
                <th style="width:15%;">결제금액</th>
                <th style="width:10%;">배달</th>
               
              </tr>
            </thead>
            <tbody>
            <!-- table 시작 -->
            	<c:if test="${empty list }">
           			<tr class="text-center">
						<td colspan="6" class="align_center">데이터가 존재하지 않습니다.</td>
					</tr>
            	</c:if>
            	<c:if test="${!empty list }">
	            	<c:forEach var="map" items="${list }">	
		              <tr  class="text-center">
		              		<td>${map['RNUM'] }</td>
			                <td>${map['MEMBER_ID'] }</td>
			                	<c:import url="/owner/menu2/order/orderTd.do">
			                	 	<c:param name="ordersNo" value = "${map['ORDERS_NO'] }"/>
			                	 	<c:param name="ordersDiscount" value = "${map['ORDERS_DISCOUNT'] }"/>
			               		 </c:import>
			                <td class="text-bold-500">${map['ORDERS_DATE']}</td>
			                <td>${map['ORDERS_PRICE']-map['ORDERS_DISCOUNT'] }</td>
			                <td>
			                	<button class="btn btDeliveryTime" value="${map['ORDERS_NO'] }" style="width:40px; height:25px; font-size:3px; padding:0px; background-color:rgb(223,108,220); color:white; border: none;"
			                				data-toggle="modal" data-target="#deliveryTime">배달</button>
			                </td>
		             </tr>
		             </c:forEach>
	           </c:if>
          	
            </tbody>
          </table>
          </div>