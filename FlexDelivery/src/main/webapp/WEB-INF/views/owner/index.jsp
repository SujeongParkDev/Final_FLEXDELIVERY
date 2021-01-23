<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../ownerInc/top.jsp" %>
	<!--  QQQ. 을 검색해서 수정부탁드려요 -->
    <!-- ##### Hero Area Start ##### -->
    <div class="hero-area">
        <!-- Hero Slides Area -->
        <div class="hero-slides owl-carousel">
            <!-- Single Slide -->
            <div class="single-hero-slide bg-img " style="background-image: url(${pageContext.request.contextPath}/resources/adminResources/img/bg-img/b2.jpg); background-size:contain; height:500px;">
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
            <div class="single-hero-slide bg-img" style="background-image: url(${pageContext.request.contextPath}/resources/adminResources/img/bg-img/b1.jpg); background-size:contain;  height:500px;">
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
            <div class="single-hero-slide bg-img " style=" height:500px; background-image: url(https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDA4MjZfMTY2%2FMDAxNTk4NDE1Mzc0OTQ1.aPq6qOIMyi2Qg2hAceeIagADYAXlcrrni_IYTYwjbOcg.4aA4eXV-00Rpndur7X-Ixk0skG4LeM7yQhxg2uVH4Aog.GIF.dloere4%2F1598415371805.gif&type=sc960_832_gif); background-size:contain;">
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
			                           			 <a href="<c:url value='/owner/menu3/notice.do'/>" style="font-size: 15px; color: gray; margin-right:20px;">more</a>
			                            	</div>
			                            </div>
			                            <ul >
			                            	<li style=" font-size:100%; height:30px; margin-left:20px; ">
			                            		<a style="text-decoration:none; color:black;"href="">
			                            			<b>[공지사항] 오늘부로 수수료 10% 인하합니.. </b>
			                            		</a>
			                            		<span style="float:right;">2020-01-20</span>
			                            	</li>
			                            	<li style=" font-size:100%; height:30px; margin-left:20px; ">
			                            		<a style="text-decoration:none; color:black;"href="">
			                            			<b>[공지사항] 쿠폰도 할인중 </b>
			                            		</a>
			                            		<span style="float:right;">2020-01-20</span>
			                            	</li>
			                            	<li style=" font-size:100%; height:30px; margin-left:20px; ">
			                            		<a style="text-decoration:none; color:black;"href="">
			                            			<b>[공지사항] 광고도 할인할인할인 언제까지... </b>
			                            		</a>
			                            		<span style="float:right;">2020-01-20</span>
			                            	</li>
			                            	<li style=" font-size:100%; height:30px; margin-left:20px; ">
			                            		<a style="text-decoration:none; color:black;"href="">
			                            			<b>[공지사항] 마지막 구매찬스~선착순입니다. 사장님덜 </b>
			                            		</a>
			                            		<span style="float:right;">2020-01-20</span>
			                            	</li>
			                            	<li style=" font-size:100%; height:30px; margin-left:20px; ">
			                            		<a style="text-decoration:none; color:black;"href="">
			                            			<b>[공지사항] 재밋다 하하 </b>
			                            		</a>
			                            		<span style="float:right;">2020-01-20</span>
			                            	</li>
			                        
			                            
			                            </ul>
			                            <hr style="border: 1px solid gray;">
			                        </div>
			                    </div>
             			  </div>
	            	 </div>
					
					<!-- QQQ. honey tip 게시판 만드신 후에  span 태그 앞 숫자에는 꿀팁 글 번호를 넣으시고 그 번호에 해당하는 게시물에 바로갈수있게 href 수정부탁드려요
						H O N E Y T I P  이라고 적혀있는건 전체 게시판을 연결해주시고
						그밑에거는 또 번호에 해당하는 곳으로 이동시켜주세요 -->
                    <!-- Single Blog Area  -->
                    <div class="single-blog-area blog-style-2 m.b-50 wow fadeInUp" data-wow-delay="0.2s" data-wow-duration="1000ms">
                    	<div class="line"></div>
                    	<a href="#" class="post-tag"></a>
                        <div class="row align-items-center" style="margin-bottom:30px;">
                            	<div class="col-12 col-md-10">
                            		<a href="<c:url value='/owner/menu3/honeyTip.do'/>" style="text-decoration:none; color:black; "><h4>사장님 꿀팁 </h4></a>
                            	</div>
                            	<div class="col-12 col-md-1">
                           			 <a href="<c:url value='/owner/menu3/honeyTip.do'/>" style="font-size: 15px; color: gray; margin-right:20px;">more</a>
                            	</div>
	                            	<br><br><br><br>
                            	<div class="col-12 col-md-1">
                            	</div>
                            <div class="col-12 col-md-5">
                                <div class="single-blog-thumbnail">
                                    <img src="http://t1.daumcdn.net/thumb/R1024x0/?fname=http://cfile299.uf.daum.net/image/2640483D55DAD39B04043C" style="height:300px;" alt="pcRoom">
                                    <div class="post-date">
                                        <a href="<c:url value='/owner/menu3/honeyTip.do'/>">3<span>Honey</span></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-md-6">
                                <!-- Blog Content -->
                                <div class="single-blog-content">
                                    <div class="line"></div>
                                    <a href="<c:url value='/owner/menu3/honeyTip.do'/>" class="post-tag">H O N E Y T I P</a>
                                    <h4><a href="<c:url value='/owner/menu3/honeyTip.do?honeyTipNo=?3'/>" class="post-headline"><b>맛있겠찡? 배고프지? 약오르죠?</b></a></h4>
                                    <p>저두 배고파요..</p>
                                    <div class="post-meta">
                                        <p>By FLEX DELIVERY</p>
                                        <p></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-md-1"></div>
                        </div>
                    </div>

					  <!-- Single Blog Area  -->
                    <div class="single-blog-area blog-style-2 mb-50 wow fadeInUp" data-wow-delay="0.2s" data-wow-duration="1000ms">
                        <div class="row align-items-center">
                            <div class="col-12 col-md-5">
                                <div class="single-blog-thumbnail">
                                    <img src="http://t1.daumcdn.net/thumb/R1024x0/?fname=http://cfile275.uf.daum.net/image/275DC93F55DAD3730B50BE"  style="height:300px;"  alt="삼겹살">
                                    <div class="post-date">
                                        <a href="<c:url value='/owner/menu3/honeyTip.do'/>">45 <span>Honey</span></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-md-6">
                                <!-- Blog Content -->
                                <div class="single-blog-content">
                                    <div class="line"></div>
                                    <a href="<c:url value='/owner/menu3/honeyTip.do'/>" class="post-tag">H O N E Y T I P</a>
                                    <h4><a href="<c:url value='/owner/menu3/honeyTip.do?honeyTipNo=?3'/>" class="post-headline"><b>삼겹살에 소주 캬</b></a></h4>
                                    <p>맛있는 음식입니다 사람을 사로잡는건 음식이 중요해요</p>
                                    <div class="post-meta">
                                        <p>By FLEX DELIVERY</p>
                                        <p></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-md-1"></div>
                        </div>
                    </div>
						 <hr style="border: 1px solid gray;">
					<br>
					<br>
				
					
					
					
					
					

                    <!-- Single Blog Area  -->
                    <div class="single-blog-area blog-style-2 mb-50 wow fadeInUp" data-wow-delay="0.4s" data-wow-duration="1000ms">
                        <div class="row">
                            <div class="col-12">
                                <div class="single-blog-thumbnail">
                                    <img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2F20150215_286%2Fokinuna36_1423970409876lvIjJ_JPEG%2FPicSpeed_-574194526.jpg&type=sc960_832" style="height:300px;"alt="맛있는이미지">
                                    <div class="post-date">
                                        <a href="#">10 <span></span></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12">
                                <!-- Blog Content -->
                                <div class="single-blog-content mt-50">
                                    <div class="line"></div>
                                    <a href="#" class="post-tag">요거트</a>
                                    <h4><a href="#" class="post-headline">요거트는 사랑이지</a></h4>
                                    <p>사랑은 컴퓨터다 그리고 요거트도 사랑이다 맛있다</p>
                                    <div class="post-meta">
                                        <p>By FLEX DELIVERY</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Single Blog Area  -->
                    <div class="single-blog-area blog-style-2 mb-50 wow fadeInUp" data-wow-delay="0.5s" data-wow-duration="1000ms">
                        <div class="row align-items-center">
                            <div class="col-12 col-md-6">
                                <div class="single-blog-thumbnail">
                                    <img src="${pageContext.request.contextPath}/resources/adminResources/img/blog-img/5.jpg" alt="">
                                    <div class="post-date">
                                        <a href="#">12 <span>march</span></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-md-6">
                                <!-- Blog Content -->
                                <div class="single-blog-content">
                                    <div class="line"></div>
                                    <a href="#" class="post-tag">Lifestyle</a>
                                    <h4><a href="#" class="post-headline">Party people in the house</a></h4>
                                    <p>Curabitur venenatis efficitur lorem sed tempor. Integer aliquet tempor cursus. Nullam vestibulum convallis risus vel condimentum. Nullam auctor lorem in libero luctus, vel volutpat quam tincidunt.</p>
                                    <div class="post-meta">
                                        <p>By <a href="#">james smith</a></p>
                                        <p>3 comments</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Single Blog Area  -->
                    <div class="single-blog-area blog-style-2 mb-50 wow fadeInUp" data-wow-delay="0.6s" data-wow-duration="1000ms">
                        <div class="row align-items-center">
                            <div class="col-12 col-md-6">
                                <div class="single-blog-thumbnail">
                                    <img src="${pageContext.request.contextPath}/resources/adminResources/img/blog-img/6.jpg" alt="">
                                    <div class="post-date">
                                        <a href="#">12 <span>march</span></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-md-6">
                                <!-- Blog Content -->
                                <div class="single-blog-content">
                                    <div class="line"></div>
                                    <a href="#" class="post-tag">Lifestyle</a>
                                    <h4><a href="#" class="post-headline">We love colors in 2018</a></h4>
                                    <p>Curabitur venenatis efficitur lorem sed tempor. Integer aliquet tempor cursus. Nullam vestibulum convallis risus vel condimentum. Nullam auctor lorem in libero luctus, vel volutpat quam tincidunt.</p>
                                    <div class="post-meta">
                                        <p>By <a href="#">james smith</a></p>
                                        <p>3 comments</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Load More -->
                    <div class="load-more-btn mt-100 wow fadeInUp" data-wow-delay="0.7s" data-wow-duration="1000ms">
                        <a href="#" class="btn original-btn">Read More</a>
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
                        	<hr style="border: 1px solid ; border-color: gray;">
                        	<br>
                            <!-- 사장님이 로그인 안했을 경우  -->
	                    	<c:if test="${empty sessionScope.userid }">
	                    		<h6 class="title subscribe-title">사장님, 로그인 해주세요</h6>
	                            <div class="widget-content">
	                                <form action="#">
	                                    <button type="submit" class="btn original-btn" style="background-color: rgb(223,108,220); color: white; width:250px; height:50px;">로 그 인</button>
	                                </form>
	                            </div>
	                        </c:if>
	                        <!-- 사장님이 사업자등록 3 점포  null 이 아닐때  -->
	                        <c:if test="${(!empty sessionScope.userid) and sessionScope.authority == 1}">
	                       		 <h5 class="title">${sessionScope.userid}님 오늘도 플렉스한 하루 보내세요 </h5>
	                       		  <div class="widget-content">
	                                <form action="#">
	                            		<button type="submit" class="btn original-btn" style="background-color: rgb(223,108,220); color: white;">입 점 신 청</button>
	                            	</form>
	                            </div>
                       		 </c:if>
                       		 <!-- 사장님 사업자등록 3 점포 null 일때  -->
                       		  <c:if test="${(!empty sessionScope.userid) and sessionScope.authority == 2}">
	                       		 <h5 class="title">${sessionScope.userid}님 오늘도 플렉스한 하루 보내세요 </h5>
	                       		  <div class="widget-content">
	                                <form action="#">
	                            		<button type="submit" class="btn original-btn" style="background-color: rgb(223,108,220); color: white;">입 점 신 청</button>
	                            	</form>
	                            </div>
                       		 </c:if>
                       		 <br>
                       		 
                       		 <hr style="border: 1px solid; border-color: gray;">
                        </div>
                       

                        <!-- Widget Area -->
                        <div class="sidebar-widget-area" style="text-align: center;  margin-bottom:10px;">
                        	<div class="row">
                        		<div class="col-12 col-md-4"></div>
                        		<div class="col-12 col-md-4">
	                            	<h5 class="title" style="margin-bottom:20px; background-color:rgb(228,193,240); color:white; " >FLEX TIME</h5>
	                          	</div>
	                           	<div class="col-12 col-md-4"></div>
	                           	<br>
	                           	<div>
	                            	<a href="#"><img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDA4MjZfMTY2%2FMDAxNTk4NDE1Mzc0OTQ1.aPq6qOIMyi2Qg2hAceeIagADYAXlcrrni_IYTYwjbOcg.4aA4eXV-00Rpndur7X-Ixk0skG4LeM7yQhxg2uVH4Aog.GIF.dloere4%2F1598415371805.gif&type=sc960_832_gif" alt=""></a>
	                       		</div>
	                       		<div style="margin-top:20px;">
	                       			<p>저희 플렉스 광고는 믿음직한 광고입니다 <br>다들 광고하나 사주세요</p>
								</div>	                        
	                        </div>
                        </div>
                        <br>
                       
                        <div class="sidebar-widget-area" style="margin-bottom:10px; text-align: center;">
                        	<div class="row">
                        		<div class="col-12 col-md-4"></div>
                        		<div class="col-12 col-md-4">
	                            	<h5 class="title" style=" margin-bottom:20px; background-color:rgb(228,193,240); color:white; " >OPEN TIME</h5>
	                          	</div>
	                          	<br>
	                           	<div class="col-12 col-md-4"></div>
	                           	<br>
	                            	<div>
	                            	<a href="#"><img src="https://blog.kakaocdn.net/dn/dqh4DR/btqEkMRGLJA/kg9G5hB2nR8Xk9d5zZJIok/img.gif" alt="유빈"></a>
	                       		</div>
	                       		<br>
	                       		<div style="margin-top:20px; " >
	                       			<p  style="margin-left:40px; " >다른 사이트에서 광고 사지마<br> 오픈리스트 사요</p>
								</div>	
	                        </div>
                        </div>

						<hr style="border: 1px solid ; border-color: gray;">
						<br>
                        <!-- Widget Area -->
                        <div class="sidebar-widget-area">
                            <h5 class="title">Latest Posts</h5>

                            <div class="widget-content">

                                <!-- Single Blog Post -->
                                <div class="single-blog-post d-flex align-items-center widget-post">
                                    <!-- Post Thumbnail -->
                                    <div class="post-thumbnail">
                                        <img src="${pageContext.request.contextPath}/resources/imgs/flexHyuna.jpg" alt="">
                                    </div>
                                    <!-- Post Content -->
                                    <div class="post-content">
                                        <a href="#" class="post-tag">Lifestyle</a>
                                        <h4><a href="#" class="post-headline">Party people in the house</a></h4>
                                        <div class="post-meta">
                                            <p><a href="#">12 March</a></p>
                                        </div>
                                    </div>
                                </div>

                                <!-- Single Blog Post -->
                                <div class="single-blog-post d-flex align-items-center widget-post">
                                    <!-- Post Thumbnail -->
                                    <div class="post-thumbnail">
                                        <img src="${pageContext.request.contextPath}/resources/adminResources/img/blog-img/lp2.jpg" alt="">
                                    </div>
                                    <!-- Post Content -->
                                    <div class="post-content">
                                        <a href="#" class="post-tag">Lifestyle</a>
                                        <h4><a href="#" class="post-headline">A sunday in the park</a></h4>
                                        <div class="post-meta">
                                            <p><a href="#">12 March</a></p>
                                        </div>
                                    </div>
                                </div>

                                <!-- Single Blog Post -->
                                <div class="single-blog-post d-flex align-items-center widget-post">
                                    <!-- Post Thumbnail -->
                                    <div class="post-thumbnail">
                                        <img src="${pageContext.request.contextPath}/resources/adminResources/img/blog-img/lp3.jpg" alt="">
                                    </div>
                                    <!-- Post Content -->
                                    <div class="post-content">
                                        <a href="#" class="post-tag">Lifestyle</a>
                                        <h4><a href="#" class="post-headline">Party people in the house</a></h4>
                                        <div class="post-meta">
                                            <p><a href="#">12 March</a></p>
                                        </div>
                                    </div>
                                </div>

                                <!-- Single Blog Post -->
                                <div class="single-blog-post d-flex align-items-center widget-post">
                                    <!-- Post Thumbnail -->
                                    <div class="post-thumbnail">
                                        <img src="${pageContext.request.contextPath}/resources/adminResources/img/blog-img/lp4.jpg" alt="">
                                    </div>
                                    <!-- Post Content -->
                                    <div class="post-content">
                                        <a href="#" class="post-tag">Lifestyle</a>
                                        <h4><a href="#" class="post-headline">A sunday in the park</a></h4>
                                        <div class="post-meta">
                                            <p><a href="#">12 March</a></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Widget Area -->
                        <div class="sidebar-widget-area">
                            <h5 class="title">Tags</h5>
                            <div class="widget-content">
                                <ul class="tags">
                                    <li><a href="#">design</a></li>
                                    <li><a href="#">fashion</a></li>
                                    <li><a href="#">travel</a></li>
                                    <li><a href="#">music</a></li>
                                    <li><a href="#">party</a></li>
                                    <li><a href="#">video</a></li>
                                    <li><a href="#">photography</a></li>
                                    <li><a href="#">adventure</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

  
   
    <!-- ##### Blog Wrapper End ##### -->

    <!-- ##### Instagram Feed Area Start ##### -->
    <div class="instagram-feed-area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    
                </div>
            </div>
        </div>
        <!-- Instagram Slides -->
        <div class="instagram-slides owl-carousel">
            <!-- Single Insta Feed -->
            <div class="single-insta-feed">
                <img src="${pageContext.request.contextPath}/resources/adminResources/img/instagram-img/1.png" alt="">
                <!-- Hover Effects -->
                <div class="hover-effects">
                    <a href="#" class="d-flex align-items-center justify-content-center"><i class="fa fa-instagram"></i></a>
                </div>
            </div>
            <!-- Single Insta Feed -->
            <div class="single-insta-feed">
                <img src="${pageContext.request.contextPath}/resources/adminResources/img/instagram-img/2.png" alt="">
                <!-- Hover Effects -->
                <div class="hover-effects">
                    <a href="#" class="d-flex align-items-center justify-content-center"><i class="fa fa-instagram"></i></a>
                </div>
            </div>
            <!-- Single Insta Feed -->
            <div class="single-insta-feed">
                <img src="${pageContext.request.contextPath}/resources/adminResources/img/instagram-img/3.png" alt="">
                <!-- Hover Effects -->
                <div class="hover-effects">
                    <a href="#" class="d-flex align-items-center justify-content-center"><i class="fa fa-instagram"></i></a>
                </div>
            </div>
            <!-- Single Insta Feed -->
            <div class="single-insta-feed">
                <img src="${pageContext.request.contextPath}/resources/adminResources/img/instagram-img/4.png" alt="">
                <!-- Hover Effects -->
                <div class="hover-effects">
                    <a href="#" class="d-flex align-items-center justify-content-center"><i class="fa fa-instagram"></i></a>
                </div>
            </div>
            <!-- Single Insta Feed -->
            <div class="single-insta-feed">
                <img src="${pageContext.request.contextPath}/resources/adminResources/img/instagram-img/5.png" alt="">
                <!-- Hover Effects -->
                <div class="hover-effects">
                    <a href="#" class="d-flex align-items-center justify-content-center"><i class="fa fa-instagram"></i></a>
                </div>
            </div>
            <!-- Single Insta Feed -->
            <div class="single-insta-feed">
                <img src="${pageContext.request.contextPath}/resources/adminResources/img/instagram-img/6.png" alt="">
                <!-- Hover Effects -->
                <div class="hover-effects">
                    <a href="#" class="d-flex align-items-center justify-content-center"><i class="fa fa-instagram"></i></a>
                </div>
            </div>
            <!-- Single Insta Feed -->
            <div class="single-insta-feed">
                <img src="${pageContext.request.contextPath}/resources/adminResources/img/instagram-img/7.png" alt="">
                <!-- Hover Effects -->
                <div class="hover-effects">
                    <a href="#" class="d-flex align-items-center justify-content-center"><i class="fa fa-instagram"></i></a>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Instagram Feed Area End ##### -->



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
