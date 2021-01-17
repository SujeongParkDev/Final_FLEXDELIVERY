<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../../adminInc/top.jsp" %>    

<div class="container">
	<div class="row">    
		
		<!-- 태그 목록 start -->
        <div class="sidebar-widget-area">
            <h5 class="title">자주 묻는 질문</h5>
            <div class="widget-content">
                <ul class="tags">
                    <li><a href="#">주문</a></li>
                    <li><a href="#">결제</a></li>
                    <li><a href="#">로그인</a></li>
                    <li><a href="#">광고</a></li>
                    <li><a href="#">매출 관리</a></li>
                    <li><a href="#">입점</a></li>
                    <li><a href="#">기타</a></li>
                </ul>
            </div>
        </div>
        <!-- 태그 목록 end -->
		<div class="accordion" id="accordionExample">
		  <div class="card">
		    <div class="card-header" id="headingOne">
		      <h2 class="mb-0">
		        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
		          Q. 배달이 시작되면 점포 측에서 직접 배달시작 버튼을 눌러야 하는 건가요?
		        </button>
		      </h2>
		    </div>
		
		    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
		      <div class="card-body">
		      	  네, 직접 눌러주셔야 합니다. 배달시작 버튼을 누른 후에 배달 완료 버튼을 누를 수 있으며, 배달 시작 버튼을 눌렀을 때 현재 주문 상태가 '조리중'에서 '배달중'으로 바뀌게 됩니다. 
		      	  이렇게 바뀐 정보는 점포의 주문 내역에 반영되어 노출되며, 고객님의 주문 내역에 반영되어 주문한 음식이 현재 어떤 상태인지를 알립니다. 모쪼록 바쁘신 와중에도 정확한 정보 전달을 위해 빠짐없이 버튼을 눌러주시길 부탁드립니다. 
		      </div>
		    </div>
		  </div>
		  <div class="card">
		    <div class="card-header" id="headingTwo">
		      <h2 class="mb-0">
		        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
		          Q. 주문 상태가 조리중일 때 고객이 주문취소 요청을 할 수 있나요?
		        </button>
		      </h2>
		    </div>
		    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
		      <div class="card-body">
		      	플렉스 딜리버리 측에서는 '배달중' 상태가 되기 전까지 주문취소가 가능합니다. '주문접수' 상태일 때는 고객과 점포 측에, '조리중' 일 때에는 점포 측에 주문취소 권한이 있습니다.
		      	
 		      </div>
		    </div>
		  </div>
		  <div class="card">
		    <div class="card-header" id="headingThree">
		      <h2 class="mb-0">
		        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
		          Q. 유료광고 가입 취소는 어떻게 하나요? 
		        </button>
		      </h2>
		    </div>
		    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
		      <div class="card-body">
		      	몰라요 물어보지 마요
		      </div>
		    </div>
		  </div>
		</div>
	</div>
</div>

<%@include file="../../adminInc/bottom.jsp" %>    