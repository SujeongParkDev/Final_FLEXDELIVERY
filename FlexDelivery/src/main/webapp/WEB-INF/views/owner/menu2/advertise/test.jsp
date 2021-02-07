<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    


<!DOCTYPE html>
  <html>
  <head>
  
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/bootstrap.css">
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/chartjs/Chart.min.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/app.css">

    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/ownerResources/assets/images/favicon.svg" type="image/x-icon">


  <script src="${pageContext.request.contextPath}/resources/ownerResources/herbJs/jquery-3.5.1.min.js"></script>
	<!-- js -->
	
	
	
<style>
	input{
		border:none;
		
		height:30px;
		border-bottom: 1px solid black;
	}
	
	input[readonly='readonly']{
		background-color: white;
	}


</style>
  </head>
  <body>
  			<br><br><Br>
  			<div class="text-center">
			   <h4>주문 상세</h4>
			</div>
	  	<div class="row">
	  	 	<div class="col-12 col-md-5"></div>
	  		 <div class="col-12 col-md-2">
	                    <div class="row">
	                    	<hr>
	                    	<div class="text-center">
			                   	<h6>회원 정보</h6>
			                 </div>
	                    	<table>
	                    		<thead>
							 		<tr>
							 			<td style="width:40%;"></td>
							 			<td style="width:60%;"></td>
							 		</tr>
						 		</thead>
	                    		<tbody>
				                     <tr class="text-center">
				                     	<th>회원 아이디</th>
				                     	<td>user1</td>
				                     </tr>
				                     <tr class="text-center">
				                     	<th>회원 이름</th>
				                     	<td>김쟁쟁</td>
				                     </tr>
				                     <tr class="text-center">
				                     	<th>회원 주소</th>
				                     	<td>강남구 어쩌구</td>
				                     </tr>
				                     <tr class="text-center">
				                     	<th>요청사항</th>
				                     	<td>김가루좀 뿌려주세요</td>
				                     </tr>
				                  </tbody>      
			                   </table> 
			                   	<hr>
			                   	<div class="text-center">
			                   		<h6>메뉴 / 옵션</h6>
			                  	</div>
			                  <table>
			                  	<thead>
							 		<tr>
							 			<td style="width:40%;"></td>
							 			<td style="width:60%;"></td>
							 		</tr>
						 		</thead>
	                    		<tbody>
				                     <tr class="text-center">
				                     	<th><b>새우</b></th>
				                     	<td>3개  / 12000원</td>
				                     </tr>
				                     <tr class="text-center">
				                     	<th><b>도우</b></th>
				                     	<td>3개  / 12000원</td>
				                     </tr>
				                     <tr class="text-center">
				                     	<td>ㄴ[파추가]</td>
				                     	<td>3개 / 12000원</td>
				                     </tr>
				                     <tr class="text-center">
				                     	<td>ㄴ[밥추가]</td>
				                     	<td>3개 / 12000원</td>
				                     </tr>
				                  </tbody>      
			                   </table>
	               
						
						<hr>  
						<div class="text-center">
			               <h6>가격</h6>
			           	</div>
						 <table>
						 	
                    		<tbody>
                    			<tr class="text-center">
			                     	
			                     	<td>가격 : 40000원</td>
				                 </tr>
				                 <tr class="text-center">
			                     	
			                     	<td>- 할인: 3000원</td>
				                 </tr>
				                 <tr class="text-center">
			                     	<td>+ 배달팁 : 3000원<br>
			                     	<hr></td>
				                 </tr>
				                 <tr class="text-center">
			                     	<td>총 : 30000원</td>
				                 </tr>
                    		</tbody>
	                    </table>
						
	                    <div class="col-12  mt-3 d-flex justify-content-center">
	                        <button type="button" class="btn btn-primary mr-1 mb-1">확인</button>
	                    </div>
							 
	                    </div>
	                </div>
	              
                </div>
                <div class="col-12 col-md-5"></div>
           
  </body>
</html>
