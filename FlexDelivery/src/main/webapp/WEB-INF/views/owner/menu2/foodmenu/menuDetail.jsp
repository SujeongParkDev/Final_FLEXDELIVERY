<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>상세 메뉴 확인</title>
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/bootstrap.css">
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/app.css">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/ownerResources/assets/images/favicon.svg" type="image/x-icon">
	

    

	<style type="text/css">
		html {overflow-x:hidden;}
	</style>
	
	<!-- 클릭시 비밀번호 유효성 검사 및 페이지 이동 -->
    <!-- jQuery (Necessary for All JavaScript Plugins) -->
    <script src="${pageContext.request.contextPath}/resources/adminResources/js/jquery/jquery-2.2.4.min.js"></script>
	<script type="text/javascript">
    $(function(){
		$('#btMenuCheck').click(function(){
				self.close();
		});
	});
	
	</script>
</head>	

		<div></div>
		<br>
		<br>
		<br>
		<div class="row">
				<div class="col-md-3 col-sm-12"></div>
				<div class="col-md-6 col-sm-12">
				<!-- 메뉴에 관한 내용 -->
				<div class="card">
					<div class="card-content">
				       <img class="card-img-top img-fluid" style="height:250px;"
				       			src="${pageContext.request.contextPath}/resources/ownerResources/assets/images/samples/aerial-panoramic-image-of-sansonvale-lake-X6TCENW.jpg" alt="Card image cap">
				       <div class="card-body">
				       	   <!-- 그룹에 관한 내용(테이블) -->
				       	   		<div class="row" id="basic-table">
						          <!-- Table with outer spacing -->
						          <div class="table-responsive">
						            <table class="table">
						              <tbody>
						                <tr class="text-center">
							                  <th class="text-bold-500">메뉴이름</th>
							                  <td>호랭이 돈까스</td>
						                </tr>
						                <tr class="text-center">
							                  <th class="text-bold-500">메뉴그룹</th>
							                  <td>면</td>
						                </tr>
						                <tr class="text-center">
							                  <th class="text-bold-500">메뉴가격</th>
							                  <td>8000원</td>
						                </tr>
						                <tr class="text-center">
							                  <th class="text-bold-500">메뉴내용</th>
							                  <td>호랑이 담배피던 시절 부터 사랑받아온 
							                  	  호랭이 돈까스 맛있게 드세요
							                  </td>
						                </tr>
						              </tbody>
						            </table>
						          </div>
						       </div>
				       	   <!-- 끝  -->
				       </div>
				   </div>
				</div>
				</div>
				<div class="col-md-3 col-sm-12"></div>



				<!-- 메뉴옵션에 관한 내용 -->
				
				<div class="row" id="basic-table">
					  <div class="col-md-3 col-sm-12"></div>
					  <div class="col-12 col-md-6">
					    <div class="card">
					      <div class="card-header">
					        <h4 class="card-title text-center">메뉴 옵션</h4>
					      </div>
					      <div class="card-content">
					        <div class="card-body">
					          <p class="card-text  text-center">호랭이 돈까스에 대한 옵션메뉴입니다.</p>
					          <!-- Table with outer spacing -->
					          <div class="table-responsive">
					            <table class="table">
					              <thead>
					                <tr class="text-center">
					                  <th>옵션이름</th>
					                  <th>가격</th>
					                </tr>
					              </thead>
					              <tbody>
					                <tr class="text-center">
					                  <td class="text-bold-500">파추가</td>
					                  <td>3000원</td>
					                </tr>
					                <tr class="text-center">
					                  <td class="text-bold-500">밥추가</td>
					                  <td>1000원</td>
					                </tr>
					              </tbody>
					            </table>
					             <div class="text-center">
				         	 		 <button class="btn btn-primary block" id="btMenuCheck"  name="btMenuCheck">확인</button>
				          	    </div>
					          </div>
					        </div>
					      </div>
					    </div>
					  </div>
					  <div class="col-md-3 col-sm-12"></div>
				  </div>
				
		</div>
	
	
						
		      <!-- 끝 -->
			<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/feather-icons/feather.min.js"></script>
		    <script src="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
		    <script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/app.js"></script>
		    
		    <script src="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/chartjs/Chart.min.js"></script>
		    <script src="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/apexcharts/apexcharts.min.js"></script>
		    <script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/pages/dashboard.js"></script>
		
		    <script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/main.js"></script>
					  
			   
	
			  
			
</body>
</html>
    	