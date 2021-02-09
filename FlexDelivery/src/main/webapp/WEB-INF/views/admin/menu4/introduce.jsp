<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../../adminInc/top.jsp" %>    
<script src="http://mattstow.com/experiment/responsive-image-maps/jquery.rwdImageMaps.min.js"></script>

<script>
$(function(){
	//window.scrollTo({top:1300, behavior:'smooth'});

	$('img[usemap]').rwdImageMaps();
	$("#imgFdMember").width("100%");

	$('#crystal').hide();	
	$('#jian').hide();	
	$('#bs').hide();	
	$('#sj').hide();	
	$('#hy').hide();	
	$('#jm').hide();	
	$('#hj').hide();	
});

function openMember(number){

	
	$('#crystal').hide();
	$('#jian').hide();
	$('#hy').hide();
	$('#bs').hide();
	$('#sj').hide();
	$('#hj').hide();
	$('#jm').hide();
	

	window.scrollTo({top:1300, behavior:'smooth'});
	
	if (number=='1'){
		$('#crystal').show();
	}else if (number=='2'){
		$('#jian').show();
	}else if(number=='3'){
		$('#sj').show();
	}else if(number=='4'){
		$('#hy').show()
	}else if(number=='5'){
		$('#bs').show()
	}else if(number=='6'){
		$('#hj').show()
	}else if(number=='7'){
		$('#jm').show()
	}
};


</script>

<style type="text/css">

	img[usemap] {
		border: none;
		height: auto;
		max-width: 100%;
		width: auto;
	}
	
/* 	.scroll-active > .motion-up {
		animation: textFadein 1s forwards;
	}
	
	.motion-up {
		opacity: 0;
		transform: translateY(32px);
	}
	
	.arrow-down-content{
		animation: arrouUpDown .4s alternate infinite;
		cursor: pointer;
	} */

</style>

<!-- css start -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/bootstrap.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/simple-datatables/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/app.css">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/ownerResources/assets/images/favicon.svg" type="image/x-icon">

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/adminResources/crystal.css"/>
<link rel="stylesheet" href="https://unpkg.com/aos@2.3.1/dist/aos.css">
<!-- css end -->

<!-- ##### Single Blog Area Start ##### -->
<div class="single-blog-wrapper section-padding-0-100">
	<div class="container">
      <div class="row">
          <!-- ##### Post Content Area ##### -->
          <div class="col-12">
          		<div class="about-wrap" style="height: 20%;">
          			<div class="content-top" style="min-height:480px; max-height: 540px;">
       					<div style="position: relative; top: 27%; left:2%">
	       					<img src="${pageContext.request.contextPath}/resources/imgs/CommonImages/fdLogo_EN.png" style="width: 40%;">
       					</div>
          				<div style="position: relative; top: 32%; left: 5%">
		          			<p style="font-family: 'Noto Sans KR'; font-size: 40px; color: white; transform: translateY(-50%)">사장님, 힘내세요! <br>
							플렉스 딜리버리가 있잖아요 😉</p>
							
						</div>
						<a id="a1">
							<span id="span1" style="top: 82%;"></span>
							<span id="span1" style="top: 85%;"></span>
							<span id="span1" style="top: 88%;"></span>
						</a>
          			</div>
 
	          		<div class="text-center content-inner about-text-box scroll-active">
	          		</div>
          		
              <!-- Single Blog Area  -->
              <div class="single-blog-area blog-style-2 mt-50" data-aos="fade-up" data-aos-anchor-placement="center-bottom">
                  <!-- Blog Content -->
                  <div class="single-blog-content">
                      <div class="line"></div>
                      <a class="post-tag" id="aboutus">About us</a>
                      <h4><a class="post-headline mb-0">플렉스 딜리버리</a></h4>
                     <!--  <div class="post-meta mb-50">
                          <p>By <a href="#">james smith</a></p>
                          <p>3 comments</p>
                      </div> -->
                      <p style="font-size: larger;">여러분을 행복하게 해드리고 싶은 플렉스 딜리버리 멤버를 소개합니다.</p>
                 </div>
               </div>
            </div>
        </div>
        </div>
      </div>
        <!-- Single Blog Area  -->
      <div class="single-blog-area blog-style-2 mb-50">
            <div class="single-blog-thumbnail scroll-active">
                <img src="${pageContext.request.contextPath}/resources/imgs/CommonImages/fdMemberDrop1024.png"  
                	id="imgFdMember" alt="플렉스 딜리버리 멤버" usemap="#fdMember" data-aos="fade-up"
    				 data-aos-anchor-placement="center-bottom">
                
				<map id="fdMember" name="fdMember">
					<!--수정-->
					<area onFocus="this.blur()" shape="rect" alt="수정person" title="수정" coords="412,150,478,364" 
						onclick="openMember(1)" style="cursor: pointer;" class="arrowUpDown .4s alternate infinite" />
					<area onFocus="this.blur()" shape="poly" alt="수정drop" title="수정" coords="425,109,450,145,478,102,476,77,459,63,438,65,422,78,418,94,418,102" 
						onclick="openMember(1)" style="cursor: pointer;" />
					<!--지안-->
					<area onFocus="this.blur()" shape="rect" alt="지안person" title="지안" coords="335,152,407,363" 
						onclick="openMember(2)" style="cursor: pointer;" />
					<area onFocus="this.blur()" shape="poly" alt="지안drop" title="지안" coords="372,145,397,94,395,71,383,57,352,60,339,86,336,105,345,125,363,139" 
						target="" onclick="openMember(2)" style="cursor: pointer;" />
					<!--소정-->
					<area onFocus="this.blur()" shape="rect" alt="소정person" title="소정" coords="564,148,636,364" 
						onclick="openMember(3)" style="cursor: help;" />
					<area onFocus="this.blur()" shape="poly" alt="소정drop" title="소정" coords="599,144,625,97,618,71,593,63,568,66,560,97,576,122,590,137" 
						onclick="openMember(3)" style="cursor: help;"/>
					<!--희영-->
					<area onFocus="this.blur()" shape="rect" alt="희영person" title="희영" coords="641,118,699,362" 
						onclick="openMember(4)" style="cursor: pointer;" />
					<area onFocus="this.blur()" shape="poly" alt="희영drop" title="희영" coords="658,115,685,63,662,31,631,34,615,64,629,88,650,110" 
						 onclick="openMember(4)" style="cursor: pointer;" />
					<!--백신-->
					<area onFocus="this.blur()" shape="rect" alt="백신person" title="백신" coords="704,144,759,361"
						onclick="openMember(5)" style="cursor: pointer;" />
					<area onFocus="this.blur()" shape="poly" alt="백신drop" title="백신" coords="728,140,755,90,742,60,700,59,688,89,693,102,702,123,714,131" 
						onclick="openMember(5)" style="cursor: pointer;"/>
					<!--현준-->
					<area onFocus="this.blur()" shape="rect" alt="현준person" title="현준" coords="485,126,559,362" 
						onclick="openMember(6)" style="cursor: pointer;" />
					<area onFocus="this.blur()" shape="poly" alt="현준drop" title="현준" coords="530,120,555,76,560,52,542,36,508,35,493,53,492,72,503,94,521,111" 
						onclick="openMember(6)" style="cursor: pointer;" />
					<!--정만-->
					<area onFocus="this.blur()" shape="rect" alt="정만person" title="정만" coords="273,131,332,362"
						onclick="openMember(7)" style="cursor: pointer;" />
					<area onFocus="this.blur()" shape="poly" alt="정만drop" title="정만" coords="314,118,335,84,345,48,318,31,286,40,274,62,281,81,301,111" 
						onclick="openMember(7)" style="cursor: pointer;" />
				</map>

                <img id="crystal" src="${pageContext.request.contextPath}/resources/imgs/CommonImages/memberCrystal.png" alt="플렉스 딜리버리 멤버소개_수정"
                	class="motion-up">
                <img id="jian" src="${pageContext.request.contextPath}/resources/imgs/CommonImages/memberJa.png" alt="플렉스 딜리버리 멤버소개_지안"
                	class="motion-up">
                <img id="bs" src="${pageContext.request.contextPath}/resources/imgs/CommonImages/memberBs.png" alt="플렉스 딜리버리 멤버소개_백신"
                	class="motion-up">
                <img id="hy" src="${pageContext.request.contextPath}/resources/imgs/CommonImages/memberHy.png" alt="플렉스 딜리버리 멤버소개_희영"
                	class="motion-up">
                <img id="sj" src="${pageContext.request.contextPath}/resources/imgs/CommonImages/memberSj.png" alt="플렉스 딜리버리 멤버소개_소정"
                	class="motion-up">
                <img id="hj" src="${pageContext.request.contextPath}/resources/imgs/CommonImages/memberHj.png" alt="플렉스 딜리버리 멤버소개_현준"
                	class="motion-up">
                <img id="jm" src="${pageContext.request.contextPath}/resources/imgs/CommonImages/memberJm.png" alt="플렉스 딜리버리 멤버소개_정만"
                	class="motion-up">
                <div class="post-tag-content">
                    <div class="container">
                        <div class="row">
                            <div class="col-12" data-aos="fade-up" data-aos-anchor-placement="center-bottom">
                                <div class="post-date">
                                    <a href="#">FD <span>공동대표</span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

		
        <div class="container" id="test">
           <div class="row">
	          <!-- ##### Post Content Area ##### -->
	          <div class="col-12">
	              <!-- Single Blog Area  -->
	              <div class="single-blog-area blog-style-2 mb-50">
                        <div class="single-blog-content" >
                            <div class="line"></div>
                            <a class="post-tag">About Service</a>
                            <h4><a class="post-headline mb-0">내 가게에 맞는 서비스를 선택해보세요</a></h4>
                            <p style="font-size: larger;">플렉스 딜리버리는 두 개의 유료광고 서비스를 제공하고 있어요.</p>
						</div>
						<div class="single-blog-content" >
                            <div class="card-body mt-50" style="text-align: center;" data-aos="fade-right" data-aos-offset="300"
     							data-aos-easing="ease-in-sine" class="use-box scroll-active">
	                            <p style="font-size: xx-large; color: black;">☝플렉스 리스트</p>
	                            <p></p>
	                            <br>
	                            <p style="font-size: x-large; color: black;">손님이 가게를 조회할 때, <br>첫 번째 영역에 가장 큰 크기로 보여줘요.</p>
	                            <br>
	                            <div style="line-height: 3;">
		                            <span class="badge bg-Info" style="font-size: larger;">노출영역</span>
		                            <span style="font-size: larger;">리스트 최상단</span><br>
	                            </div>
	                            <div style="line-height: 2;">
		                            <span class="badge bg-Info" style="font-size: larger;">상품금액</span>
		                            <span style="font-size: larger;">월 50,000원</span><br>
	                            </div>
	                            <div style="line-height: 3;">
	                            	<span style="font-size: large;">지금 바로 신청해보세요!</span>
	                            	<button type="button" style="font-size: large; font-weight: 700; color: #6f42c1;">플렉스 리스트 신청하기</button><br>
	                            </div>
	                            
                            </div>
                            <div class="card-body mt-50" style="text-align: center;" data-aos="fade-right" data-aos-offset="300"
     							data-aos-easing="ease-in-sine" class="use-box scroll-active">
	                            <p style="font-size: xx-large; color: black;"></p>
	                            <p></p>
	                            <br>
	                            <p style="font-size: x-large; color: black;">그림영역</p>
	                            <br>
	                            
	                            
                            </div>
                       </div>
                       <div class="single-blog-content" >
                            <div class="card-body mt-70" style="text-align: center;" data-aos="fade-left" data-aos-offset="300"
     							data-aos-easing="ease-in-sine">
	                            <p style="font-size: xx-large; color: black;">✌오픈 리스트</p>
	                            <p></p>
	                            <br>
	                            <p style="font-size: x-large; color: black;">손님이 가게를 조회할 때, <br>두 번째 영역에 중간 크기로 보여줘요.</p>
	                            <br>
	                            <div style="line-height: 3;">
		                            <span class="badge bg-Info" style="font-size: larger;">노출영역</span>
		                            <span style="font-size: larger;">리스트 중간 영역</span>
	                            </div>
	                            <div style="line-height: 2;">
		                            <span class="badge bg-Info" style="font-size: larger;">상품금액</span>
		                            <span style="font-size: larger;">월 30,000원</span>
	                            </div>
	                            <div style="line-height: 3;">
	                            	<span style="font-size: large;">지금 바로 신청해보세요!</span>
	                            	<button type="button" style="font-size: large; font-weight: 700; color: #6f42c1;">오픈리스트 신청하기</button>
	                            </div>
	                            <br>
	                         
                            </div>
                        </div>

                    </div>


					<div class="single-blog-area blog-style-2 mb-50">
                        <div class="single-blog-content" >
                            <div class="card-body" style="text-align: center;" data-aos="fade-up" data-aos-offset="300"
     							data-aos-easing="ease-in-sine">
	                            <p style="font-size: xx-large; color: black;">지금 바로 <br>플렉스 딜리버리와 함께 하세요🙌<p>
	                            <p></p>
	                            <br>
	                            <p style="font-size: x-large; color: black;">전문 광고 담당자가👩‍🎓👨‍🎓 <br>사장님을 항상 지원합니다</p>
	                            <br>
	                            <button type="button" style="font-size: large; font-weight: 700; color: #6f42c1;">온라인 입점 신청하기</button>
	                            <button type="button" style="font-size: large; font-weight: 700; color: #6f42c1;">상담하기</button>
	                            <button type="button" style="font-size: large; font-weight: 700; color: #6f42c1;">사장님꿀팁 보러 가기</button>
	                            <br>
	                         
                            </div>
                        </div>
                    </div>
                    
					<div class="single-blog-area blog-style-2 mb-50">
                        <div class="single-blog-content" >
                        
                            <div class="card-body" style="text-align: center;" data-aos="fade-up" data-aos-offset="300"
     							data-aos-easing="ease-in-sine">
	                            <p style="font-size: xx-large; color: black;">더 많은 고객과 만나는 첫 걸음, <br>플렉스 딜리버리와 함께 걸어요🏃‍♀️🏃‍♂️<p>
	                            <p></p>
	                            <br>
	                         
                            </div>
                        </div>
                   </div>
                    <!-- About Author start -->
                   <%--  <div class="blog-post-author mt-100 d-flex">
                        <div class="author-thumbnail">
                            <img src="${pageContext.request.contextPath}/resources/adminResources/img/bg-img/b6.jpg" alt="">
                        </div>
                        <div class="author-info">
                            <div class="line"></div>
                            <span class="author-role">Adminstrator</span>
                            <h4><a href="#" class="author-name">플렉스 딜리버리</a></h4>
                            <p>
                            	고객에게는 맛있는 음식을, 사장님에게는 편리한 가게 관리를 선물하고 싶은 플렉스 딜리버리입니다.
                            </p>
                        </div>
                    </div> --%>
                    <!-- About Author end -->

                </div>

                
            </div>
	        <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
			<script>
				AOS.init();
			</script>
        </div>
</div>
<!-- ##### Single Blog Area End ##### -->    

<!-- script start -->
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/feather-icons/feather.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/app.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/simple-datatables/simple-datatables.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/vendors.js"></script>
<script src="${pageContext.request.contextPath}/resources/ownerResources/assets/js/main.js"></script>
<!-- script end -->
    
    
<%@include file="../../adminInc/bottom.jsp" %>    