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
<script>
/* 오늘 날짜 구하기 */
	<fmt:formatDate var="fmtDate" value="${date}" pattern="yyyy-MM-dd" />
	<c:set var="dateYear" value="${date.getYear() +1900}"/>
	<c:set var="dateMonth" value="${date.getMonth() +1}"/>
	<c:set var="dateDate" value="${date.getDate()}"/>
	<c:set var="dateDay" value="${date.getDay()}"/>
	
	var week="";
	//alert((${dateYear}+1900)+"/"+(${dateMonth}+1)+"/"+${dateDate}+"/"+${dateDay});
	//getYear 하면 크롬 등에서는 -1900 한 값이 나온다
	//getDay 0~6 일~토
	
	/* if(${dateDay }==0){
		week="일요일";
	}if(${dateDay}==1){
		week="월요일";
	}if(${dateDay}==2){
		week="화요일";
	}if(${dateDay}==3){
		week="수요일";
	}if(${dateDay}==4){
		week="목요일";
	}if(${dateDay}==5){
		week="금요일";
	}if(${dateDay}==6){
		week="토요일";
	} */
	

</script>
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
								<h5 style="color: black;">🏬 유료광고 이용 점포 현황   </h5>
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
						<!-- <div style="display: flex;" id="4thChart"> -->
						
							<!-- 이번달 주문 수 / 매출액 --> <!-- Timeseries Chart: y축 추가(오른쪽), 주문수/매출액 -->
		                    <!-- <div class="single-blog-content col-12" style="text-align: left; margin-bottom: 20px;">
								<div class="line" style="background-color: black;"></div>
								<h5 style="color: black;">📋이번 주 주문 현황</h5>
								<div id="curMonthOrder" style="margin-top: 30px; margin-bottom: 30px;"></div>
							</div>
							
						</div> -->
						
							<div class="single-blog-content col-12"  style="text-align: left;">
								<div class="line" style="background-color: black;"></div>
								<h5 style="color: black;">📋오늘 매출 현황: ${dateYear}년 ${dateMonth}월 ${dateDate}일 </h5>
							</div>
						<div style="display: flex;" id="5thChart">
							<!-- 오늘 총 주문 수--> <!-- 도넛차트 -->
		                    <div class="single-blog-content col-6" style="text-align: left; margin-bottom: 20px;">
								<div id="todayOrder" style="margin-top: 30px; margin-bottom: 30px;"></div>
							</div>
							
							<!-- 오늘 총 매출액--> <!-- 도넛 차트 -->
		                    <div class="single-blog-content col-6" style="text-align: left; margin-bottom: 20px;">
								
								<div id="todayTotal" style="margin-top: 30px; margin-bottom: 30px;"></div>
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
						
							<!-- 대분류카테고리 주문 회수 출력 --> <!-- area: 지난달+이번달-->
		                    <div class="single-blog-content col-6" style="text-align: left; margin-bottom: 20px;">
								<div class="line" style="background-color: black;"></div>
								<h5 style="color: black;">🍴이번 달 대분류 카테고리별 주문 현황</h5>
								<div id="curMonthLCategory" style="margin-top: 30px; margin-bottom: 30px;"></div>
							</div>
							
							<!-- 대분류카테고리 주문 회수 출력 --> <!-- 도넛: 전체 개수+비율 -->
		                    <div class="single-blog-content col-6" style="text-align: left; margin-bottom: 20px;">
								<div class="line" style="background-color: black;"></div>
								<h5 style="color: black;">🍴이번 달 대분류 카테고리별 주문 현황</h5>
								<div id="curMonthLCategory2" style="margin-top: 30px; margin-bottom: 30px;"></div>
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
		                    <div class="single-blog-content col-12" style="text-align: left; margin-bottom: 20px;" >
								<div class="line" style="background-color: black;"></div>
								<h5 style="color: black;">💝선물하기  인기 상품</h5>
								<div id="giftProduct" style="margin-top: 30px; margin-bottom: 30px;"></div>
							</div>
							
						</div>
					</div>
				</div>
			</div> <!-- card -->
					
		  <script>
		  	$(function(){

			  dnt('curMonthJoin', 1);
			  dnt('curMonthLeave', 2);
			  dnt('totalOwner', 3);
			  dnt('totalAd', 4);
			  dnt('storeRCoupon', 5);
			  dnt('regularCoupon', 6);
			  
			  dnt2('todayOrder', 71);
			  dnt2('todayTotal', 72);
			  
			  area('curMonthLCategory', 7);
			  
			  //piec('curMonthLCategory2', 7);
			  piec('giftCategory', 8);
			  piec('giftPrice', 9);

			  chartBar('chart');
			  
			  //times('curMonthOrder');
			  rotate('giftProduct');
			  
			  //alert("ready!");
  	});
		  	
		  function chartBar(id){
			  var idChk="#"+id;
			  
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
				
		  }
		  
	
		function rotate(id){
			var idChk="#"+id;
			var tooltipTitle="인기 상품 상위 5개";
			
			var label1=[];
			var label2=[];
			var label3=[];
		    var labelVal=[];
		  
		  	<c:forEach var="map" items="${list12 }">
		  		label1.push("${map['G_P_TYPE_PRICE']}");
		  		label2.push("${map['G_PRODUCT_NAME']}");
		  		label3.push("${map['G_CATEGORY_NAME']}");
		  		labelVal.push("${map['COUNT']}");
		  	</c:forEach>
		    var product=[label2[0]+"+"+label1[0]+"원", label2[1]+"+"+label1[1]+"원",label2[2]+"+"+label1[2]+"원",label2[3]+"+"+label1[3]+"원",label2[4]+"+"+label1[4]+"원"];
		    console.log(product);
		  	
		  	
		  	//시험용
		  	var count=[10, 7, 5, 8, 3];//개수
		  	var l1=['20000', '10000', '30000', '5000', '40000'];//price
		  	var l2=['네가최고야', '언제나사랑해요', '요즘어떻게지내?', '생일축하해!', '내마음이야'];//productname
		  	var l3=['응원을', '사랑을', '안부를', '축하를', '사랑을'];//categoryname
		  	var test=[l1[0]+"원"+l2[0]+l3[0], l1[1]+l2[1]+l3[1], l1[2]+l2[2]+l3[2], l1[3]+l2[3]+l3[3],l1[4]+l2[4]+l3[4]];
		  	
	  	
		  	var chart = c3.generate({
		  		bindto: idChk,
		  	    data: {
		  	        x: 'x',
		  	        columns: [
		  	            ['x', product[0], product[1], product[2], product[3], product[4]],
		  	            ['개수', labelVal[0], labelVal[1], labelVal[2], labelVal[3], labelVal[4]],
		  	        ],
		  	        type: 'bar',
		  	      	labels: true,
		  	    },
		  	    legend:{
		  	    	show: false
		  	    },
			  	  tooltip:{
			            format: {
			                title: function (d) {return '인기 상품'},
			                value: function (value, ratio, id){
			                    return value;
			                }
			            }
			        },
			    grid: {
			        y: {
			            show: true
			        }
			    },
		  	    axis: {
		  	        x: {
		  	            type: 'category',
		  	        }
		  	    }
		  	});
			
		}//rotated
		
		function times(id){
			var idChk="#"+id;
			var tooltipTitle="대분류별 주문현황";
			var labels=[];
		  var labelVal=[];
		  
		  	<c:forEach var="vo" items="${list7 }">
		  		labels.push(${vo.COUNTORDERS});
		  		labelVal.push(${vo.SUMPRICE});
		  	</c:forEach>
			
			var timeseries = c3.generate({
			  bindto: idChk,

			    data: {
			    	
			        x: 'x',
			        columns: [
			            ['x', '2013-01-01', '2013-01-02', '2013-01-03', '2013-01-04', '2013-01-05', '2013-01-06'],
			            ['data1', 30, 200, 100, 400, 150, 250],
			            ['data2', 50, 20, 10, 40, 15, 25]
			        ],
			        axes: {
			            data1: 'y',
			            data2: 'y2'
			        },
			        types: {
			            data1: 'bar',
			            data2: 'spline'
			        },
			        labels: true,
			    },
			    axis: {
			        x: {
			            type: 'timeseries',
			            tick: {
			                format: '%Y-%m-%d'
			            }
			        },
			        y2: {
			            show: true
			        }
			    },
			    grid: {
			        y: {
			            show: true
			        }
			    }

			});

		}//times
			  	
		function piec(id, no){
			var idChk="#"+id;
			var tooltipTitle;
			
			 var labels=[];
			  var labelVal=[];
			  
			  if (no==7){
				  <c:forEach var="map" items="${list9 }">
					  labels.push("${map['L_CATEGORY_NAME}']}");
				  	  labelVal.push("${map['ORDERCNT']}");
			  	  </c:forEach>
					tooltipTitle="카테고리별 주문 수";

			  } else if (no==8) {
				  <c:forEach var="map" items="${list10 }">
					  labels.push("${map['G_CATEGORY_NAME']}");
				  	  labelVal.push("${map['CNTCATEGORY']}");
			  	  </c:forEach>
					tooltipTitle="인기 선물 카테고리";

			  } else if (no==9) {
				  <c:forEach var="map" items="${list11 }">
					  labels.push("${map['G_P_TYPE_PRICE']}원");
				  	  labelVal.push("${map['CNTPRICE']}");
			  	  </c:forEach>
					tooltipTitle="인기 선물 가격";

			  }
		  

		  	console.log("no="+no);
		  	console.log("labels="+labels);
			console.log("labelVal="+labelVal);
			
			var chartPie = c3.generate({
				  bindto: idChk,
				  data: {
				    rows: [
				    	labels,
				    	labelVal,
				    ],
				    type: "pie"
				  },
				    tooltip: {
				        format: {
				            title: function (d) { return tooltipTitle; },
				            value: function (value, ratio, id) {
				                return value;
				            }
				        }
				    }
				});
			  
		}//piec
		
		function dnt(id, no){
			var idChk="#"+id;
			var tooltipTitle;
			var centerTitle;
			
			if (no==1){
				tooltipTitle="이번 달 회원가입 수";
			} else if (no==2){
				tooltipTitle="이번 달 회원탈퇴수";
			} else if (no==3){
				tooltipTitle="입점 여부";
			} else if (no==4){
				tooltipTitle="유료광고 이용 수";
			} else if (no==5){
				tooltipTitle="정기쿠폰 적용 점포 수";
			} else if (no==6){
				tooltipTitle="정기쿠폰 종류별 적용 점포 수";
			} else {
				tooltipTitle="no==0";
				alert("올바르지 않은 함수 호출!");
				event.preventDefault();
			}
				  
			  var labels=[];
			  var labelVal=[];
			  
			  if (no==1){
				  <c:forEach var="map" items="${list1 }">
				  //labels.push("${map['CURAUTH']}");
			  	  labelVal.push("${map['CNTMEM']}");
			  	  </c:forEach>
				  labels[0]='회원';
				  labels[1]='사장님';
				  centerTitle="${dateYear}년 ${dateMonth}월";
			  } else if (no==2){
				  <c:forEach var="map" items="${list2 }">
			  		//labels.push('${vo.CURAUTH}');
			  		labelVal.push("${map['CNTMEM']}");
			  	  </c:forEach>
				  labels[0]='회원';
				  labels[1]='사장님';
				  centerTitle="${dateYear}년 ${dateMonth}월";
			  } else if (no==3){
				  <c:forEach var="map" items="${list3 }">
			  		labels.push("${map['AUTHORITY_NAME']}");
			  		labelVal.push("${map['CUROWNER']}");
			  	  </c:forEach>
				  //labels[0]='미입점 사장님';
				  //labels[1]='입점 사장님';
			  	 centerTitle="${dateYear}년 ${dateMonth}월";
			  } else if (no==4){
				  <c:forEach var="map" items="${list4 }">
			  		labels.push("${map['ADVERTISE_NAME']}");
			  		labelVal.push("${map['CNTAD']}");
			  	  </c:forEach>
				  //labels[0]='미입점 사장님';
				  //labels[1]='입점 사장님';
			  	 centerTitle="${dateYear}년 ${dateMonth}월";
			  } else if (no==5){
				  <c:forEach var="map" items="${list5 }">
			  		//labels.push('${vo.ADVERTISENAME}');
			  		labelVal.push("${map['CNTADSTORE']}");
			  	  </c:forEach>
				  labels[0]='광고 미적용 점포';
				  labels[1]='광고 적용 점포';
				  centerTitle="";
			  } else if (no==6){
				  <c:forEach var="map" items="${list6 }">
			  		//labels.push("${map['R_COUPON_NO']}");
			  		labelVal.push("${map['CNTRCOU']}");
			  	  </c:forEach>
				  labels[0]='1번 쿠폰';
				  labels[1]='2번 쿠폰';
				  labels[2]='3번 쿠폰';
				  centerTitle="";
			  }
			  
			  	console.log("no="+no);
			  	console.log("labels="+labels);
				console.log("labelVal="+labelVal);
				  
	
				var chartDonut = c3.generate({
				  bindto: idChk,
				  data: {
				    rows: [
				    	labels,
				    	labelVal,
				    ],
				    type: "donut"
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
				    title: centerTitle,
				  },
				});
	

			}/*dnt*/
			
			function dnt2(id, no){
				var idChk="#"+id;
				var centerTitle="";
				var result="";
				var res="";
				
				if (no==71){
					  centerTitle="${dateYear}년 ${dateMonth}월 ${dateDay}일";
					  <c:forEach var="map" items="${list7 }">
					 	res="${map['COUNTORDERS']}";
				  		//labelVal.push(${vo.SUMPRICE});
				  	  </c:forEach>
					 result="총 "+res+" 건";
				  } else if (no==72){
					  centerTitle="${dateYear}년 ${dateMonth}월 ${dateDay}일";
					  <c:forEach var="map" items="${list7 }">
					  res="${map['SUMPRICE']}";
				  	  </c:forEach>
					  result="총 "+res+" 원";
				  } 
				
				console.log(res);
				console.log(result);
				
				var chartPie = c3.generate({
					  bindto: idChk,
					  data: {
					    columns: [
					    	['centerTitle', 100],
					    ],
					    type: "donut",
					    colors: {
					    	centerTitle: '#b57ff9'
					    },
					  },
					  donut: {
						  title: result,
						  label: {
							  show: false
						  }
					  },
					  legend: {
						  show: false
					  },
				      tooltip: {
				    	  show: false
					    }
					});
				  
			}/* dnt2 */
			
			function area(id, no){
				var idChk="#"+id;
				var tooltipTitle;
				
				 var labels=[];
				  var labelVal=[];
				  
				  if (no==7){
					  <c:forEach var="map" items="${list9 }">
						  labels.push("${map['L_CATEGORY_NAME}']}");
					  	  labelVal.push("${map['ORDERCNT']}");
				  	  </c:forEach>
						tooltipTitle="카테고리별 주문 수";
				  }
			
					console.log("no="+no);
				  	console.log("labels="+labels);
					console.log("labelVal="+labelVal);
					
					
					
			}/* area */
		  
		  </script>
			
		</div>
	</div>
</div>

<%@ include file="../../adminInc/bottom.jsp" %>