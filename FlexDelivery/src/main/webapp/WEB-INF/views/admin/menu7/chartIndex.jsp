<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../adminInc/top.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="date" class="java.util.Date" />

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
					<div class="single-blog-area clearfix mb-100">
						
						<!-- 첫 번째 줄 -->
						<div style="display: flex;" id="1stChart">
							<!-- 이번달 멤버/사장님 가입 수--> <!-- 도넛차트 -->
		                    <div class="single-blog-content col-6" style="text-align: left; margin-bottom: 20px;">
								<div class="line" style="background-color: black;"></div>
								<h5 style="color: black;">👏이번 달 회원가입 현황</h5>
								<div id="curMonthJoin" style="margin-top: 30px; margin-bottom: 30px;"></div>
								<!-- <span id="text-member">회원</span>
							  	<span id="text-owner">사장님</span> -->
							</div>
							
							<!-- 이번달 멤버/사장님 탈퇴 수--> <!-- 도넛 차트 -->
		                    <div class="single-blog-content col-6" style="text-align: left; margin-bottom: 20px;">
								<div class="line" style="background-color: black;"></div>
								<h5 style="color: black;">👋이번 달 회원탈퇴 현황</h5>
								<div id="curMonthLeave" style="margin-top: 30px; margin-bottom: 30px;"></div>
							</div>
							
						</div>
						
						<!-- 두 번째 줄 -->
						<div style="display: flex;" id="2ndChart">
							<!-- 전체 점주 : 미입점/입점 점주 수 및 비율--> <!-- 도넛차트 -->
		                    <div class="single-blog-content col-6" style="text-align: left; margin-bottom: 20px;">
								<div class="line" style="background-color: black;"></div>
								<h5 style="color: black;">👩‍🍳👨‍🍳사장님 이용 현황</h5>
								<div id="totalOwner" style="margin-top: 30px; margin-bottom: 30px;"></div>
							</div>
							
							<!-- 광고 이용 현황--> <!-- 도넛 차트 -->
		                    <div class="single-blog-content col-6" style="text-align: left; margin-bottom: 20px;">
								<div class="line" style="background-color: black;"></div>
								<h5 style="color: black;">🎉유료광고 이용 현황</h5>
								<div id="totalAd" style="margin-top: 30px; margin-bottom: 30px;"></div>
							</div>
							
						</div>
						
						
						<!-- 세 번째 줄 -->
						<div style="display: flex;" id="3rdChart">
							<!-- 정기 쿠폰 적용/미점포 적용 수+비율--> <!-- 도넛차트 -->
		                    <div class="single-blog-content col-6" style="text-align: left; margin-bottom: 20px;">
								<div class="line" style="background-color: black;"></div>
								<h5 style="color: black;">🏬정기 쿠폰 적용 점포 현황   </h5>
								<div id="storeRCoupon" style="margin-top: 30px; margin-bottom: 30px;"></div>
							</div>
							
							<!-- 정기 쿠폰 적용 현황 : 쿠폰 별 적용 비율 및 개수?--> <!-- 도넛 차트 -->
		                    <div class="single-blog-content col-6" style="text-align: left; margin-bottom: 20px;">
								<div class="line" style="background-color: black;"></div>
								<h5 style="color: black;"> 🎫정기 쿠폰 적용 현황</h5>
								<div id="regularCoupon" style="margin-top: 30px; margin-bottom: 30px;"></div>
							</div>
							
						</div>
						
						
						<!-- 네 번째 줄 -->
						<div style="display: flex;" id="4thChart">
						
							<!-- 이번달 주문 수 / 매출액 --> <!-- Timeseries Chart: y축 추가(오른쪽), 주문수/매출액 -->
		                    <div class="single-blog-content col-12" style="text-align: left; margin-bottom: 20px;">
								<div class="line" style="background-color: black;"></div>
								<h5 style="color: black;">📋이번 달 주문 현황</h5>
								<div id="curMonthOrder" style="margin-top: 30px; margin-bottom: 30px;"></div>
							</div>
							
						</div>
						
						<!-- 다섯 번째 줄 -->
						<!-- <div style="display: flex;" id="5thChart"> -->
						
							<!-- 요일별 주문 수 / 매출액 --> <!-- Timeseries Chart: y축 추가(오른쪽), 주문수/매출액 -->
		                    <!-- <div class="single-blog-content col-12" style="text-align: left; margin-bottom: 20px;">
								<div class="line" style="background-color: black;"></div>
								<h5 style="color: black;">📋요일별 주문 현황</h5>
								<div id="weekOrder" style="margin-top: 30px; margin-bottom: 30px;"></div>
							</div>
							
						</div> -->
						
						
						<!-- 여섯 번째 줄 -->
						<div style="display: flex;" id="6thChart">
						
							<!-- 대분류카테고리 주문 회수 출력 --> <!-- 도넛: 전체 개수+비율 -->
		                    <div class="single-blog-content col-6" style="text-align: left; margin-bottom: 20px;">
								<div class="line" style="background-color: black;"></div>
								<h5 style="color: black;">🍴이번 달 대분류 카테고리별 주문 현황</h5>
								<div id="curMonthLCategory" style="margin-top: 30px; margin-bottom: 30px;"></div>
							</div>
							
						</div>
							
						<!-- 일곱 번째 줄 -->
						<div style="display: flex;" id="7thChart">
							<!-- 선물 상품 카테고리 비율--> <!-- 도넛차트 -->
		                    <div class="single-blog-content col-6" style="text-align: left; margin-bottom: 20px;">
								<div class="line" style="background-color: black;"></div>
								<h5 style="color: black;">🎁선물하기 인기 카테고리</h5>
								<div id="giftCategory" style="margin-top: 30px; margin-bottom: 30px;"></div>
							</div>
							
							<!-- 선물 상품 가격 비율 --> <!-- 도넛 차트 -->
		                    <div class="single-blog-content col-6" style="text-align: left; margin-bottom: 20px;">
								<div class="line" style="background-color: black;"></div>
								<h5 style="color: black;">🎁선물하기 인기 가격</h5>
								<div id="giftPrice" style="margin-top: 30px; margin-bottom: 30px;"></div>
							</div>
							
						</div>
						
						<!-- 여덟 번째 줄 -->
						<div style="display: flex;" id="8thChart">
						
							<!-- 선물 상품 구매 현황--> <!-- Rotated Axis-->
		                    <div class="single-blog-content col-6" style="text-align: left; margin-bottom: 20px;" >
								<div class="line" style="background-color: black;"></div>
								<h5 style="color: black;">💝선물하기  인기 상품</h5>
								<div id="giftProduct" style="margin-top: 30px; margin-bottom: 30px;"></div>
							</div>
							
						</div>
					
				  <script>
				  
				  dnt('curMonthJoin', 1);
				  dnt('curMonthLeave', 2);
				  chartBar('chart');
				  
				  /* 오늘 날짜 구하기 */
				  	<fmt:formatDate var="fmtDate" value="${date}" pattern="yyyy-MM-dd" />
					<c:set var="dateYear" value="${date.getYear() +1900}"/>
					<c:set var="dateMonth" value="${date.getMonth() +1}"/>
					<c:set var="dateDate" value="${date.getDate()}"/>
					<c:set var="dateDay" value="${date.getDay()}"/>

				  	//alert((${dateYear}+1900)+"/"+(${dateMonth}+1)+"/"+${dateDate}+"/"+${dateDay});
				  	//getYear 하면 크롬 등에서는 -1900 한 값이 나온다
				  	//getDay 0~6 일~토
				  	

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
				  
				  /* var chartScatter = c3.generate({
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
					}); */
				  
				  function chartBar(id){
					  var idChk="#"+id;
					  //alert("막대그래프 호출 성공!, idChk="+idChk);
					  
					  var labels=[];
					  var labelVal=[];
					  	<c:forEach var="mc" items="${MClist }">
					  		labels.push('${mc.lCategoryName}');
					  		labelVal.push(${mc.lCCount});
					  	</c:forEach>
					  	
					  
					  var chart = c3.generate({
						  bindto: idChk,
						  data:{
						    json: {
						    	'count': labelVal,
						    	},
							type: 'bar', 
						  },
							axis: {
								x: {
									type: 'category',
									categories: labels,
								},
							},
						}); //chart
						
						//console.log("labels="+labels);
						//console.log("labelVal="+labelVal);
				  }
					
			function dnt(id, no){
				var idChk="#"+id;
				var tooltipTitle;
				if (no==1){
					tooltipTitle="이번 달 회원가입 수";
				} else if (no==2){
					tooltipTitle="이번 달 회원탈퇴수";
					
				} else {
					tooltipTitle="no==0";
					
				}
					  
				  var labels=[];
				  var labelVal=[];
				  <c:forEach var="mc" items="${MClist }">
			  		labels.push('${mc.lCategoryName}');
			  		labelVal.push(${mc.lCCount});
			  	  </c:forEach>
				  	  
				  	console.log("labels="+labels);
					console.log("labelVal="+labelVal);
					  
		
					var chartDonut = c3.generate({
					  bindto: idChk,
					  data: {
					    json: {
					    	'회원': 30,
					    	'사장님': 45,
					    },
					    type: "donut",
					    colors: {
					    	회원: '#BF213E',
					    	사장님: '#1C3059' 
					    }
					  },
					    tooltip: {
					        format: {
					            title: function (d) { return tooltipTitle; },
					            value: function (value, ratio, id) {
					                return value;
					            }
					        }
					    },
					  donut: {
					    title: ${dateYear}+"년 "+ ${dateMonth}+"월",
					  },
					});
		
					var chartDonutColors = chartDonut.data.colors();
					$("#text-member").css("color", "#BF213E");
					$("#text-owner").css("color", "#1C3059");
					
				}
				  
				  </script>
				  
				</div>	
				
			</div>
		</div>
	</div>
</div>

<%@ include file="../../adminInc/bottom.jsp" %>