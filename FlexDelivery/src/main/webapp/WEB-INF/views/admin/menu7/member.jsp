<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../adminInc/top.jsp" %>

<!-- css start -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/bootstrap.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/simple-datatables/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/app.css">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/ownerResources/assets/images/favicon.svg" type="image/x-icon">
<!-- css end -->

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.css"/>
<script src="https://d3js.org/d3.v3.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.js"></script>

<div class="container">
	<div class="row">
		<div class="col-12">
		
			<div class="card">
				<div class="card-header">
					<h4 class="card-title">전체 요약 통계</h4>
					<hr>
				</div>
				<div class="card-body">
					<!-- 멤버 등급별 비율/수 : 도넛 -->
					<!-- 점포 등급별 비율/수 : 도넛 -->
					<!-- 이번달 멤버/사장님/점포 가입 수-->
					<!-- 이번달 멤버/사장님/점포 탈퇴 수-->
					<div >
					</div>
					
					<!-- 이번달 주문 수 / 매출액 -->
					<div></div>
					
					<!-- 지역별 주문양 : 도넛이나 산포도 -->
					<div></div>
					
					<!-- 요일별 주문양 / 매출액-->
					<div></div>
					
					<!-- 대분류/중분류 카테고리 개수 출력 -->
					<!-- 대분류/중분류 카테고리 주문 회수 출력 -->
					
					<!-- 월별 / 주별 날씨  통계 출력 -->
					
					<!-- 현재 사용가능한 이벤트 쿠폰 개수 출력 -->
					<!-- 이벤트 쿠폰 다운로드 회수 / 사용 회수  / 이용율 출력  -->
					<!-- 정기쿠폰 적용 점포 개수 출력 -->

					<!-- 선물함 카테고리 / 금액 / 상품 개수 요약 출력 -->
					<!-- 선물상품 + 금액 조합 출력  -->
					
				 <!--1 -->
				  <div id="chart"></div>
				  <!--2  -->
				  <div id="piechart"></div>
			
					<div style="text-align:center">
					  <h5>
					  차트div 바깥에서도 색깔을 연결할 수 있다.
					  </h5>
					  <span id="text-apple">사과</span>
					  <span id="text-walnut">호두</span>
					  <span id="text-berry">블루베리</span>
					  <span id="text-cheese">치즈</span>
					  <span id="text-strawberry">딸기</span>
					</div>
					<!--3  -->
					<div id="bubblechart"></div>
					
				  <script>
				  
				  var chart = c3.generate({
					  bindto: "#chart",
					  data: {
					    columns: [
					      ['data1', 30, 200, 100, 400, 150, 250],
					      ['data2', 50, 20, 10, 40, 15, 25]
					    ],
					    type: 'spline'
					  }
					});
				  
				  var pieData = {
						  사과: 500,
						  호두: 200,
						  블루베리: 666,
						  치즈: 54,
						  딸기: 120
						};
						var chartDonut = c3.generate({
						  bindto: "#piechart",
						  data: {
						    json: [pieData],
						    keys: {
						      value: Object.keys(pieData),
						    },
						    type: "donut",
						  },
						  donut: {
						    title: "파이의 종류",
						  },
						});
			
						var chartDonutColors = chartDonut.data.colors();
						$("#text-apple").css("color", chartDonutColors["사과"]);
						$("#text-walnut").css("color", chartDonutColors["호두"]);
						$("#text-berry").css("color", chartDonutColors["블루베리"]);
						$("#text-cheese").css("color", chartDonutColors["치즈"]);
						$("#text-strawberry").css("color", chartDonutColors["딸기"]);
				  
				  var chartScatter = c3.generate({
					  bindto: "#bubblechart",
					  data: {
					    x: "data_x",
					    columns: [
					      ["data_x", 5, 2, 8, 10, 25, 16, 50],
					      ["data_y", 10, 20, 30, 40, 16, 35, 8],
					    ],
					    type: "scatter",
					  },
					  point: {
					    r: function(d) {
					      return dataRadius[d.index];
					    },
					  },
					  legend: {
					    show: false,
					  },
					  grid: {
					    x: {
					      show: true,
					    },
					    y: {
					      show: true,
					    },
					  },
					});
				  </script>
					<div class="card-content">
					</div>
				</div>	
			</div>
		</div>
	</div>
</div>

<%@ include file="../../adminInc/bottom.jsp" %>