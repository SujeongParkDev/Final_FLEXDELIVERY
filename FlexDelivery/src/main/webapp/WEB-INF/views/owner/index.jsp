<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../ownerInc/top.jsp" %>
	<!--  QQQ. 을 검색해서 수정부탁드려요 -->
    <!-- ##### Hero Area Start ##### -->
    <div class="hero-area">
        <!-- Hero Slides Area -->
        <div class="hero-slides owl-carousel">
      
            <!-- Single Slide -->
            <div class="single-hero-slide bg-img " style="background-image: url('https://i.imgur.com/tGBGXft.jpg'); background-size:cover; height:500px;">
                <div class="container h-80">
                    <div class="row h-80 align-items-center">
                        <div class="col-12">
                            <div class="slide-content text-center">
                                <!-- <div class="post-tag">
                                    <a href="#" data-animation="fadeInUp">lifestyle</a>
                                </div>
                                <h2 data-animation="fadeInUp" data-delay="250ms"><a href="single-post.html">Take a look at last night’s party!</a></h2>
                     -->        </div>
                        </div>
                    </div>
                </div>
            </div>
         
         
            <!-- Single Slide -->
            <div class="single-hero-slide bg-img" style="background-image :url('https://cdn.clien.net/web/api/file/F01/6833392/58fd21123b167e.jpg'); background-size:cover;  height:500px;">
                <div class="container h-80">
                    <div class="row h-80 align-items-center">
                        <div class="col-12">
                            <div class="slide-content text-center">
                             <!--    <div class="post-tag">
                                    <a href="#" data-animation="fadeInUp">lifestyle</a>
                                </div>
                                <h2 data-animation="fadeInUp" data-delay="250ms"><a href="single-post.html">Take a look at last night’s party!</a></h2>-->
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            
            <!-- Single Slide -->
            <div class="single-hero-slide bg-img " style=" height:500px; background-image: url('https://i.imgur.com/zU9sTZJ.jpg'); background-size:cover;">
                <div class="container h-80">
                    <div class="row h-80 align-items-center">
                        <div class="col-12">
                            <div class="slide-content text-center">
                                <!-- <div class="post-tag">
                                    <a href="#" data-animation="fadeInUp">lifestyle</a>
                                </div>
                                <h2 data-animation="fadeInUp" data-delay="250ms"><a href="single-post.html">Take a look at last night’s party!</a></h2>
                            --> </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Hero Area End ##### -->

    <!-- ##### Blog Wrapper Start ##### -->

        <%-- <div class="container" style="padding-top:50px;">
            <div class="row align-items-end">
                <!-- Single Blog Area -->
                <div class="col-12 col-lg-">
                    <div class="single-blog-area clearfix ">
                        <!-- Blog Content -->
						<div style="text-align: right">
							<a href="<c:url value='/owner/menu3/notice.do'/>" style="font-size: 15px; color: gray; margin-right:30px;">more</a>
						</div>                        
                        <div class="single-blog-content">
                            <div class="line"></div>
                            <a href="#" class="post-tag"></a>
                            <h4><a href="<c:url value='/owner/menu3/notice.do'/>" class="post-headline">공지사항</a></h4>
                            <p>코로나 시대 방역을 더 철저히 하겠습니다.</p>
                            <hr>
                        </div>
                    </div>
                </div>
              </div>
            </div> --%>
      
          
                <!-- Single Blog Area -->
                <%-- <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-catagory-area clearfix mb-100">
                        <img src="${pageContext.request.contextPath}/resources/adminResources/img/blog-img/1.jpg" alt="">
                        <!-- Catagory Title -->
                        <div >
                            <a href="#">Lifestyle posts</a>
                        </div>
                    </div>
                </div>
                <!-- Single Blog Area -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-catagory-area clearfix mb-100">
                        <img src="${pageContext.request.contextPath}/resources/adminResources/img/blog-img/2.jpg" alt="">
                        <!-- Catagory Title -->
                        <div>
                            <a href="#">latest posts</a>
                        </div>
                    </div>
                </div>
            </div>
        </div> --%>
        
		<!-- QQQ. 아래의 li 부분에 공지사하응로 foreach 돌려주세요 , href 안에 공지사항 번호넣어서 보내주세ㅛㅇ-->
        <div class="container" >
            <div class="row">
                <div class="col-12 col-lg-9" style="padding-top:50px; ">
	                <div class="row align-items-end">
			                <!-- Single Blog Area -->
			                <div class="col-12 col-md-11" style="margin-bottom:10px;">
			                    <div class="single-blog-area clearfix ">
			                        <!-- Blog Content -->
									<div style="text-align: right">
										
									</div>                        
			                        <div class="single-blog-content">
			                            <div class="line"></div>
			                            <a href="#" class="post-tag"></a>
			                            <div class="row">
			                            	<div class="col-12 col-md-11">
			                            		<h4><a href="<c:url value='/owner/menu3/notice.do'/>" style="text-decoration:none; class="post-headline">공지사항 </a></h4>
			                            	</div>
			                            	<div class="col-12 col-md-1">
			                           			 <a href="<c:url value='/owner/menu3/notice.do'/>"  style="font-size: 15px; text-decoration:none; color: rgb(255,201,14);margin-right:20px;">more</a>
			                            	</div>
				                            </div>
					                            <ul >
					                            	<li style=" font-size:100%; height:30px; margin-left:20px; ">
					                            		<a style="text-decoration:none; color:black;"href="">
					                            			<b>[공지]</b>&nbsp;오늘부로 수수료 10% 인하합니..
					                            		</a>
					                            		<span style="float:right;">2020-01-20</span>
					                            	</li>
					                            	<li style=" font-size:100%; height:30px; margin-left:20px; ">
					                            		<a style="text-decoration:none; color:black;"href="">
					                            			<b>[공지]</b>&nbsp;쿠폰도 할인중 
					                            		</a>
					                            		<span style="float:right;">2020-01-20</span>
					                            	</li>
					                            	<li style=" font-size:100%; height:30px; margin-left:20px; ">
					                            		<a style="text-decoration:none; color:black;"href="">
					                            			<b>[공지]</b>&nbsp;광고도 할인할인할인 언제까지...
					                            		</a>
					                            		<span style="float:right;">2020-01-20</span>
					                            	</li>
					                            	<li style=" font-size:100%; height:30px; margin-left:20px; ">
					                            		<a style="text-decoration:none; color:black;"href="">
					                            			<b>[공지]</b>&nbsp;마지막 구매찬스~선착순입니다. 사장님덜 
					                            		</a>
					                            		<span style="float:right;">2020-01-20</span>
					                            	</li>
					                            	<li style=" font-size:100%; height:30px; margin-left:20px; ">
					                            		<a style="text-decoration:none; color:black;"href="">
					                            			<b>[공지] </b> &nbsp;재밋다 하하
					                            		</a>
					                            		<span style="float:right;">2020-01-20</span>
					                            	</li>
					                            </ul>
				                         	  <div >
				                         	  <div>
                       		 						<hr style="border: 1px 1solid; border-color: gray;" >
                       		 				  </div>
                        	 			</div>
			                        </div>
			                    </div>
             			  </div>
	            	 </div>
					
					<!-- QQQ. honey tip 게시판 만드신 후에  span 태그 앞 숫자에는 꿀팁 글 번호를 넣으시고 그 번호에 해당하는 게시물에 바로갈수있게 href 수정부탁드려요
						H O N E Y T I P  이라고 적혀있는건 전체 게시판을 연결해주시고
						그밑에거는 또 번호에 해당하는 곳으로 이동시켜주세요 -->
                    <!-- Single Blog Area  -->
                    <div class="single-blog-area blog-style-2 wow fadeInUp" data-wow-delay="0.2s" data-wow-duration="1000ms">
                    	 <div class="row align-items-center" >
                           	<div class="col-12 col-md-10">
                           		<a href="<c:url value='/owner/menu3/honeyTip.do'/>" style="text-decoration:none; color:black; "><h4>사장님 꿀팁 </h4></a>
                           	</div>
                           	<div class="col-12 col-md-1">
                          			 <a href="<c:url value='/owner/menu3/honeyTip.do'/>" style="font-size: 15px;  text-decoration:none; color: rgb(255,201,14); margin-right:20px;">more</a>
                           	</div>
                           	<div class="col-12 col-md-1"> </div>
                           	     <br><br><br><br>
                           	     
                           	     
	                          <div class="col-12 col-md-3" >
	                              <div class="single-blog-thumbnail">
	                                  <img src="http://t1.daumcdn.net/thumb/R1024x0/?fname=http://cfile299.uf.daum.net/image/2640483D55DAD39B04043C" style=" margin-bottom: 40px;" alt="pcRoom">
	                              </div>
	                          </div>
	                          
	                          <div class="col-12 col-md-2" style="height:200px; padding-right:0px; ">
	                              <!-- Blog Content -->
	                              <div class="single-blog-content" style="margin-bottom: 40px;">
	                                  <div class="line mb-2"></div>
	                                  <a href="<c:url value='/owner/menu3/honeyTip.do'/>" class="post-tag">HONEY TIP</a>
	                                  <h4><a href="<c:url value='/owner/menu3/honeyTip.do?honeyTipNo=?3'/>" class="post-headline"><b>맛있겠찡? 배고프지?</b></a></h4>
	                                  <div class="post-meta">
	                                      <p>By FLEX DELIVERY</p>
	                                      <p></p>
	                                  </div>
	                              </div>
	                          </div>
	                          
	                           <div class="col-12 col-md-1"></div>
	                           
	                           <div class="col-12 col-md-3" >
                             			  <div class="single-blog-thumbnail">
                                		  	 <img src="http://t1.daumcdn.net/thumb/R1024x0/?fname=http://cfile275.uf.daum.net/image/275DC93F55DAD3730B50BE" style=" margin-bottom: 40px;" alt="pcRoom">
                              			 </div>
                            		</div>
	                            <div class="col-12 col-md-2" style="height:200px; padding-right:0px; ">
	                                <!-- Blog Content -->
	                                <div class="single-blog-content" style="margin-bottom: 40px;">
	                                    <div class="line mb-2"></div>
	                                    <a href="<c:url value='/owner/menu3/honeyTip.do'/>" class="post-tag">HONEY TIP</a>
	                                    <h4><a href="<c:url value='/owner/menu3/honeyTip.do?honeyTipNo=?3'/>" class="post-headline"><b>삼겹살 <br>입니다.</b></a></h4>
	                                    <div class="post-meta">
	                                        <p>By FLEX DELIVERY</p>
	                                        <p></p>
	                                    </div>
	                                </div>
	                            </div>
                           		 <div class="col-12 col-md-1"></div>
                           		 
                           		 
                           		 
                           		  	     
	                          <div class="col-12 col-md-3" >
	                              <div class="single-blog-thumbnail">
	                                  <img src="//img1.daumcdn.net/thumb/R720x0/?fname=http%3A%2F%2Ft1.daumcdn.net%2Fliveboard%2Frealfood%2F6edfee13edc641d48eb1f4a9b50225b7.JPG" style=" margin-bottom: 40px;" alt="pcRoom">
	                              </div>
	                          </div>
	                          
	                          <div class="col-12 col-md-2" style="height:200px; padding-right:0px; ">
	                              <!-- Blog Content -->
	                              <div class="single-blog-content" style=" margin-bottom: 40px;">
	                                  <div class="line mb-2"></div>
	                                  <a href="<c:url value='/owner/menu3/honeyTip.do'/>" class="post-tag">HONEY TIP</a>
	                                  <h4><a href="<c:url value='/owner/menu3/honeyTip.do?honeyTipNo=?3'/>" class="post-headline"><b>칠레의 <br>식사예절</b></a></h4> 
	                                  <div class="post-meta">
	                                      <p>By FLEX DELIVERY</p>
	                                      <p></p>
	                                  </div>
	                              </div>
	                          </div>
	                          
	                           <div class="col-12 col-md-1"></div>
	                           
	                           <div class="col-12 col-md-3">
                             			  <div class="single-blog-thumbnail">
                                		  	 <img src="//img1.daumcdn.net/thumb/R720x0/?fname=http%3A%2F%2Ft1.daumcdn.net%2Fliveboard%2Frealfood%2Fc164c212084a4b49904b5c371e869959.JPG" style="margin-bottom: 40px;" alt="pcRoom">
                              			 </div>
                            		</div>
	                            <div class="col-12 col-md-2" style="height:200px; padding-right:0px; ">
	                                <!-- Blog Content -->
	                                <div class="single-blog-content" style=" margin-bottom: 40px;">
	                                    <div class="line mb-2"></div>
	                                    <a href="<c:url value='/owner/menu3/honeyTip.do'/>" class="post-tag">HONEY TIP</a>
	                                    <h4><a href="<c:url value='/owner/menu3/honeyTip.do?honeyTipNo=?3'/>" class="post-headline"><b>헝가리 <br>식사예절</b></a></h4>
	                                    <div class="post-meta">
	                                        <p>By FLEX DELIVERY</p>
	                                        <p></p>
	                                    </div>
	                                </div>
	                            </div>
                           		 <div class="col-12 col-md-1"></div>
                       	</div>
                   	</div>

					
					
				 	<div style="margin-top:0px; margin-bottom:10px;">
                        <div class="col-12 col-md-11">
		                    <hr style="border: 1px 1solid; border-color: gray; " >
                       </div>
                         <div class="col-12 col-md-11"></div>
				   </div>
			
					
					

                    <!-- Single Blog Area  -->
                     <div class="single-blog-area blog-style-2 wow fadeInUp" data-wow-delay="0.2s" data-wow-duration="1000ms">
                    	 <div class="row align-items-center" >
                           	<div class="col-12 col-md-10"  style="margin-top:10px;">
                           		<a href="<c:url value='/owner/menu3/honeyTip.do'/>" style="text-decoration:none; color:black;  "><h4 >이벤트</h4></a>
                           	</div>
                           	<div class="col-12 col-md-1">
                          			 <a href="<c:url value='/owner/menu3/honeyTip.do'/>" style="font-size: 15px; margin-right:20px;  text-decoration:none; color: rgb(255,201,14);">more</a>
                           	</div>
                           	<div class="col-12 col-md-1"> </div>
                           	     <br><br><br><br>
                
                            <div class="col-12 col-md-11">
                                <div class="card-group">
								  <div class="card " style="margin:20px; margin-left:0px; ">
								    <img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAxNjEyMDZfMjI4%2FMDAxNDgwOTg2MTM5NTc2.yzAJUrNLZO8sN42YqWJXLUpN7_3lBy1wvtAKqG2n2l8g.5PXAysmFniQlOJTegIy749nKElVTt0ROcbrp8CN4OYAg.PNG.elleswimwear%2F12%25BF%25F9%25C0%25CC%25BA%25A5%25C6%25AE_01.png&type=ofullfill340_600"
								    	style="height:150px;" class="card-img-top" alt="겨울안녕">
								    <div class="card-body" style="height:150px;">
								      <h5 class="card-title"><a href="#" style="text-decoration:none; color:black; font-size:20px; "><b>아디오스 겨울</b></a></h5>
								      <p class="card-text">즐거웠다  </p>
			
								    </div>
								  </div>
								  <div class="card" style="margin:20px; ">
								    <img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAxODA1MTFfNCAg%2FMDAxNTI2MDAxODUwNzU0.KQRkebvQnuoE-8z1ASRHX4IO928aBbQVTqnpqZRfGl4g.rDI94hIg4_w0bevHPYS3kDnOUh_dqs8Z0eq3Ctx52Rkg.JPEG.hoonhwii%2F%25C0%25BD%25BD%25C4%25C1%25A1%25C0%25CC%25BA%25A5%25C6%25AE.jpg&type=sc960_832" 
								    style="height:150px;"  class="card-img-top" alt="음식점이벤트">
								    <div class="card-body" style="height:150px;">
								      <h5 class="card-title"><a href="#" style="text-decoration:none; color:black; font-size:20px; "><b>효과적인 음식점</b></a></h5>
								      <p class="card-text">궁금하세요? 궁금하면 드루와</p>
			
								    </div>
								  </div>
								  <div class="card" style="margin:20px; ">
								    <img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fimgnews.naver.net%2Fimage%2F366%2F2017%2F03%2F14%2F2017031401647_1_99_20170314140203.jpg&type=a340" 
								    	style="height:150px;"  class="card-img-top" alt="봄되면">
								    <div class="card-body" style="height:150px;">
								      <h5 class="card-title"><a href="#" style="text-decoration:none; color:black; font-size:20px; "><b>봄봄봄 봄이</b></a></h5>
								      <p class="card-text">찾아왔네요 . 봄에 어울리는 음식을 즐겨봐요</p>
					
								    </div>
								  </div>
								</div>
                            </div>
                             <div class="col-12 col-md-1" ></div>
                             <div class="col-12 col-md-11">
                                <div class="card-group">
								  <div class="card " style="margin:20px; margin-left:0px;  ">
								    <img src="${pageContext.request.contextPath}/resources/imgs/flexHyuna.jpg"
								    	style="height:150px;" class="card-img-top" alt="현아">
								    <div class="card-body" style="height:150px;">
								      <h5 class="card-title"><a href="#" style="text-decoration:none; color:black; font-size:20px; "><b>현아와 함께 <br>플렉스 하자!</b></a></h5>
								      <p class="card-text">야! <br>너두 할 수 있어! </p>
			
								    </div>
								  </div>
								  <div class="card" style="margin:20px; ">
								    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSX6TmcNHmnrNVUzOdgL1O3ErkQ_4kFGTg0Yw&usqp=CAU" 
								    style="height:150px;"  class="card-img-top" alt="음식점이벤트">
								    <div class="card-body" style="height:150px;">
								      <h5 class="card-title"><a href="#" style="text-decoration:none; color:black; font-size:20px; "><b>썰어먹기 냠냠</b></a></h5>
								      <p class="card-text">냠냠</p>
			
								    </div>
								  </div>
								  <div class="card" style="margin:20px; ">
								    <img src="https://lh3.googleusercontent.com/proxy/nnGQ_bfS1ZwMmJO4TJmFpSmJm2hO2GSb-0JXAaJ7k6i3u3ZAQniewF5SVf6u0Z5pE8aN0u5KRwbGCfGUHHGg4K_0uqAZJM2X7Wmk1xxLSU5kj4P3aY7e5XIansL5AXs2vw" 
								    	style="height:150px;"  class="card-img-top" alt="김치는사기다">
								    <div class="card-body" style="height:150px;">
								      <h5 class="card-title"><a href="#" style="text-decoration:none; color:black; font-size:20px; "><b>김치맛있따</b></a></h5>
								      <p class="card-text">배고프죠?</p>
					
								    </div>
								  </div>
								</div>
                            </div>
                             <div class="col-12 col-md-1" ></div>
                        </div>
                    </div>

                 
                 
                 
                 
                 
                 
                 
                    <!-- Load More -->
                    <div class=" mt-100 wow fadeInUp" data-wow-delay="0.7s" data-wow-duration="1000ms">
                        <a href="#" ></a>
                    </div>
                </div>

                <!-- ##### Sidebar Area ##### -->
                <div class="col-12 col-md-4 col-lg-3">
                    <div class="post-sidebar-area">
						  <!-- Widget Area -->
                      <!-- 
                        <div class="sidebar-widget-area">
                            <form action="#" class="search-form">
                                <input type="search" name="search" id="searchForm" placeholder="Search">
                                <input type="submit" value="submit">
                            </form>
                        </div>
                         -->

                        <!-- Widget Area -->
                        <div class="sidebar-widget-area text-center" style="padding-top:40px; margin-bottom:30px;" >
                        	<div >
                       		 	<hr style="border: 1px 1solid; border-color: gray;" >
                        	 </div>
                        	<br>
                        	<div >
	                        	<c:set  var="noLicense" value="${NO_LICENSE}"/> <!-- 라이센스 없는경우  승인번호 2,4-->
	                        	<c:set  var="noStore" value="${NO_STORE}"/> <!-- 점포 없는경우 승인번호 2,4 -->
	                        	<c:set  var="haveAll" value="${HAVE_ALL}"/>	<!-- 점포 있음 -->
	                        	<c:set  var="licenseStay" value="${LICENSE_STAY}"/> <!-- 라이센스 없는 경우 승인번호 1 -->
	                        	<c:set  var="storeStay" value="${STORE_STAY}"/> <!-- 점포 없는 경우 승인번호 1 -->
	                        	
	                        	
	                            <!-- 사장님이 로그인 안했을 경우  -->
		                    	<c:if test="${empty sessionScope.ownerId}">
		                    		<div style="margin-top:-15px;">
	                        			 <small style="color:gray;">반갑습니다. FLEX DELIVERY 입니다</small>
			                    		<h2 class="title subscribe-title"><b>사장님, <span style="color:rgb(223,108,220);">로그인 </span>부탁드려요</b></h2>
			                            <div class="widget-content">
			                                <form action="<c:url value='/owner/login/login.do'/>">
			                                    <button type="submit" class="btn original-btn text-white " style="background-color: rgb(223,108,220); width:250px; height:50px;">로 그 인</button>
			                                </form>
			                            </div>
									</div>
		                        </c:if>
		                        <!-- 사장님이 로그인했는데 사업자 등록증이 없을때 -->
		                        <c:if test="${(!empty sessionScope.ownerId) && (sessionScope.result==noLicense || sessionScope.result==licenseStay) }">
		                        	 <small style="color:gray;">반갑습니다. FLEX DELIVERY 입니다</small>
		                       		 <h6 class="title mb-3"  ><b><span style="color:rgb(223,108,220); font-size:25px; ">${sessionScope.ownerId}</span> 사장님 <br> 어서오세요</b></h6>
		                       		  <div class="widget-content">
		                                <form action="<c:url value='/owner/menu1/launch/launch.do'/>">
		                            		<button type="submit" class="btn original-btn" style="background-color: rgb(223,108,220); color: white;">입 점 신 청</button>
		                            	</form>
		                            </div>
	                       		 </c:if>
		                        <!-- 사장님이 점포가없을때 -->
		                        <c:if test="${(!empty sessionScope.ownerId) && (sessionScope.result==noStore || sessionScope.result==storeStay)}">
		                       		<small style="color:gray;">반갑습니다. FLEX DELIVERY 입니다</small>
		                       		 <h6 class="title mb-3"><b><span style="color:rgb(223,108,220); font-size:25px; ">${sessionScope.ownerId}</span> 사장님 <br> 어서오세요 </h6></b>
		                       		  <div class="widget-content">
		                                <form action="<c:url value='/owner/menu1/launch/launch.do'/>">
		                            		<button type="submit" class="btn original-btn" style="background-color: rgb(223,108,220); color: white;">입 점 신 청</button>
		                            	</form>
		                            </div>
	                       		 </c:if>
	                       		 <!-- 사장님 사업자등록도 점포도 다있어서 내가게가 잇을때-->
	                       		  <c:if test="${(!empty sessionScope.ownerId) && sessionScope.result==haveAll}">
		                       		<small style="color:gray;">반갑습니다. FLEX DELIVERY 입니다</small>
		                       		 <h6 class="title mb-3"><b><span style="color:rgb(223,108,220); font-size:25px; ">${sessionScope.ownerId}</span> 사장님 <br> 어서오세요</b> </h6>
		                       		  	<div>
		                       		  	<div class="row">
		                       		  		<div class="col-12 col-md-2"></div>
		                       		  		<div class="col-12 col-md-2">
		                       		  			<!-- 리뷰관리 이미지 -->
		                       		  			<a href="<c:url value='/owner/menu2/reviewOwner/reviewOwner.do'/>">
			                       		  			<svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
	  													<path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456l-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
	  													<path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
													</svg>
												</a>
											</div>
											<div class="col-12 col-md-2">
											<!-- 메뉴관리 이미지 -->
												<a href="<c:url value='/owner/menu2/foodmenu/menuMain.do'/>">
													<svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-grid" viewBox="0 0 16 16">
	  														<path d="M1 2.5A1.5 1.5 0 0 1 2.5 1h3A1.5 1.5 0 0 1 7 2.5v3A1.5 1.5 0 0 1 5.5 7h-3A1.5 1.5 0 0 1 1 5.5v-3zM2.5 2a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3zm6.5.5A1.5 1.5 0 0 1 10.5 1h3A1.5 1.5 0 0 1 15 2.5v3A1.5 1.5 0 0 1 13.5 7h-3A1.5 1.5 0 0 1 9 5.5v-3zm1.5-.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3zM1 10.5A1.5 1.5 0 0 1 2.5 9h3A1.5 1.5 0 0 1 7 10.5v3A1.5 1.5 0 0 1 5.5 15h-3A1.5 1.5 0 0 1 1 13.5v-3zm1.5-.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3zm6.5.5A1.5 1.5 0 0 1 10.5 9h3a1.5 1.5 0 0 1 1.5 1.5v3a1.5 1.5 0 0 1-1.5 1.5h-3A1.5 1.5 0 0 1 9 13.5v-3zm1.5-.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3z"/>
													</svg>
												</a>
											</div>
											<div class="col-12 col-md-2">
												<!-- 임시중지 이미지 -->
												<a href="<c:url value='/owner/index.do'/>">
													<svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-pause-circle" viewBox="0 0 16 16">
	  													<path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
	  													<path d="M5 6.25a1.25 1.25 0 1 1 2.5 0v3.5a1.25 1.25 0 1 1-2.5 0v-3.5zm3.5 0a1.25 1.25 0 1 1 2.5 0v3.5a1.25 1.25 0 1 1-2.5 0v-3.5z"/>
													</svg>
												</a>
											</div>
											<div class="col-12 col-md-2">
												<!-- 현재 주문 현황 -->
												<a href="<c:url value='/owner/index.do'/>">
													<svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-cart4" viewBox="0 0 16 16">
	  													<path d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l.5 2H5V5H3.14zM6 5v2h2V5H6zm3 0v2h2V5H9zm3 0v2h1.36l.5-2H12zm1.11 3H12v2h.61l.5-2zM11 8H9v2h2V8zM8 8H6v2h2V8zM5 8H3.89l.5 2H5V8zm0 5a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z"/>
												   </svg>
											   </a>
											</div>
											<div class="col-12 col-md-2"></div>
											
											
											<!-- 리뷰 메뉴 임시 현재 등 텍스트 부분 -->
											<div class="col-12 col-md-2"></div>
											<div class="col-12 col-md-2 pr-0 pl-1">
												<span style="font-size:2px;">리뷰관리</span>
											</div>
											<div class="col-12 col-md-2  pr-0 pl-1">
												<span style="font-size:2px;">메뉴관리</span>
											</div>
											<div class="col-12 col-md-2  pr-0 pl-1">
												<span style="font-size:2px;">임시중지</span>
											</div>
											<div class="col-12 col-md-2  pr-0 pl-1">
												<span style="font-size:2px;">주문현황</span>
											</div>
											<div class="col-12 col-md-2"></div>
										
											
		                       		  	</div>
		                       		  	</div>
		                       		  	<br>
		                       		
		                       		  <div class="widget-content">
		                                <form action="<c:url value='/owner/menu2/myStoreIndex.do'/>">
		                            		<button type="submit" class="btn original-btn" style="background-color: rgb(223,108,220); color: white;">내 점 포</button>
		                            	</form>
		                            </div>
	                       		 </c:if>
                       		 </div>
                       		 <br>
                       		 <div >
                       		 	<hr style="border: 1px 1solid; border-color: gray;" >
                        	 </div>
                        </div>
                       

                        <!-- Widget Area -->
                        <div class="sidebar-widget-area" style="text-align: center;  margin-bottom:10px;">
                        	<div class="row">
                        		<div class="col-12 col-md-4"></div>
                        		<div class="col-12 col-md-4 pl-0">
	                            	<h5 class="title" style="margin-bottom:20px; background-color:rgb(228,193,240); color:white; " >FLEX TIME</h5>
	                          	</div>
	                           	<div class="col-12 col-md-4"></div>
	                     	</div>
	                     	
	                     	 <div class="row ml-2" >
	                           	<div class="col-12 col-md-10">
	                            	<a href="#"><img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDA4MjZfMTY2%2FMDAxNTk4NDE1Mzc0OTQ1.aPq6qOIMyi2Qg2hAceeIagADYAXlcrrni_IYTYwjbOcg.4aA4eXV-00Rpndur7X-Ixk0skG4LeM7yQhxg2uVH4Aog.GIF.dloere4%2F1598415371805.gif&type=sc960_832_gif" alt=""></a>
	                       		</div>
	                       		
	                       		<div  class="col-12 col-md-10" style="margin-top:10px;">
	                       			<p>저희 플렉스 광고는 믿음직한 광고입니다 <br>다들 광고하나 사주세요</p>
								</div>
	                        </div>
                        </div>
                        <br>
                       
                        <div class="sidebar-widget-area" style="margin-bottom:10px; text-align: center;">
                        	<div class="row" >
                        		<div class="col-12 col-sm-4"></div>
                        		<div class="col-12 col-sm-4 pl-0">
	                            	<h5 class="title" style=" margin-bottom:20px; background-color:rgb(228,193,240); color:white; " >OPEN TIME</h5>
	                          	</div>
	                          	<br>
	                           	<div class="col-12 col-sm-4"></div>
	                         </div>
	                         
	                         
	                         <div class="row ml-2" > 
	                            <div class="col-12 col-sm-10">
	                            	<a href="#"><img src="https://blog.kakaocdn.net/dn/dqh4DR/btqEkMRGLJA/kg9G5hB2nR8Xk9d5zZJIok/img.gif" alt="유빈"></a>
	                       		</div>
	 
	                       		<div class="col-12 col-sm-10"style="margin-top:10px; " >
	                       			<p  >다른 사이트에서 광고 사지마<br> 오픈리스트 사요</p>
	                       		</div>	
						
	                        </div>
                        </div>
						<div >
                       		 	<hr style="border: 1px 1solid; border-color: gray;" >
                        </div>
						<br>
                        <!-- Widget Area -->
                        <div class="sidebar-widget-area">
                            <h5 class="title">이달의 점포</h5>
							<!-- QQQ.스토어 선택하는 곳으로 가주세요 -->
                            <div class="widget-content">

                                <!-- Single Blog Post -->
                                <div class="single-blog-post d-flex align-items-center widget-post">
                                    <!-- Post Thumbnail -->
                                    <div class="post-thumbnail">
                                        <img src="${pageContext.request.contextPath}/resources/imgs/flexHyuna.jpg" style="height: 90px; border-radius: 20px; width: 90px;" alt="현아">
                                    </div>
                                    <!-- Post Content -->
                                    <div class="post-content">
                                        <a href="#" class="post-tag">Flex Store</a>
                                        <h4><a href="#" class="post-headline">현아 </a></h4>
                                        <div class="post-meta">
                                            <p><a href="#">현아하게</a></p>
                                        </div>
                                    </div>
                                </div>

                                <!-- Single Blog Post -->
                                <div class="single-blog-post d-flex align-items-center widget-post">
                                    <!-- Post Thumbnail -->
                                    <div class="post-thumbnail">
                                        <img src="${pageContext.request.contextPath}/resources/imgs/testS.jpg" style="height: 90px;  width: 90px; border-radius: 20px;" alt="화난스누피">
                                    </div>
                                    <!-- Post Content -->
                                    <div class="post-content">
                                        <a href="#" class="post-tag">Flex Store</a>
                                        <h4><a href="#" class="post-headline">스누피</a></h4>
                                        <div class="post-meta">
                                            <p><a href="#">스누피의 하루</a></p>
                                        </div>
                                    </div>
                                </div>

                                <!-- Single Blog Post -->
                                <div class="single-blog-post d-flex align-items-center widget-post">
                                    <!-- Post Thumbnail -->
                                    <div class="post-thumbnail">
                                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVaqwzBAs5EoFftJ4G5u13gGmSDHQ_K5epiA&usqp=CAU"  style="height: 90px;  border-radius: 20px; width: 90px;" alt="조승우">
                                    </div>
                                    <!-- Post Content -->
                                    <div class="post-content">
                                        <a href="#" class="post-tag">Flex Store</a>
                                        <h4><a href="#" class="post-headline">타짜</a></h4>
                                        <div class="post-meta">
                                            <p><a href="#">고니곤이</a></p>
                                        </div>
                                    </div>
                                </div>

                                <!-- Single Blog Post -->
                                <div class="single-blog-post d-flex align-items-center widget-post">
                                    <!-- Post Thumbnail -->
                                    <div class="post-thumbnail">
                                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmYcd4VxUYaFNLKYccgploJWUy8xLPwoChyA&usqp=CAU" style="height: 90px; border-radius: 20px; width: 90px;" alt="공효진">
                                    </div>
                                    <!-- Post Content -->
                                    <div class="post-content">
                                        <a href="#" class="post-tag">Flex Store</a>
                                        <h4><a href="#" class="post-headline">공효진</a></h4>
                                        <div class="post-meta">
                                            <p><a href="#">효진스토어</a></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

  
 	  


    <!-- jQuery (Necessary for All JavaScript Plugins) -->
    <script src="${pageContext.request.contextPath}/resources/adminResources/js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="${pageContext.request.contextPath}/resources/adminResources/js/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="${pageContext.request.contextPath}/resources/adminResources/js/bootstrap.min.js"></script>
    <!-- Plugins js -->
    <script src="${pageContext.request.contextPath}/resources/adminResources/js/plugins.js"></script>
    <!-- Active js -->
    <script src="${pageContext.request.contextPath}/resources/adminResources/js/active.js"></script>


<%@ include file="../ownerInc/bottom.jsp" %>
