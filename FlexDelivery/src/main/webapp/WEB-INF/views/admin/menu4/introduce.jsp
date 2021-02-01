<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../../adminInc/top.jsp" %>    
<script src="http://mattstow.com/experiment/responsive-image-maps/jquery.rwdImageMaps.min.js"></script>

<script>
$(function(){
	
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

</style>

<!-- css start -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/bootstrap.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/simple-datatables/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/app.css">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/ownerResources/assets/images/favicon.svg" type="image/x-icon">
<!-- css end -->

<!-- ##### Single Blog Area Start ##### -->
    <div class="single-blog-wrapper section-padding-0-100">
	 <div class="container">
      <div class="row">
          <!-- ##### Post Content Area ##### -->
          <div class="col-12">
              <!-- Single Blog Area  -->
              <div class="single-blog-area blog-style-2 mt-50">
                  <!-- Blog Content -->
                  <div class="single-blog-content">
                      <div class="line"></div>
                      <a href="#" class="post-tag">About us</a>
                      <h4><a href="#" class="post-headline mb-0">플렉스 딜리버리</a></h4>
                     <!--  <div class="post-meta mb-50">
                          <p>By <a href="#">james smith</a></p>
                          <p>3 comments</p>
                      </div> -->
                      <p>여러분을 행복하게 해드리고 싶은 플렉스 딜리버리 멤버를 소개합니다.</p>
                 </div>
               </div>
            </div>
        </div>
        </div>
        <!-- Single Blog Area  -->
        <div class="single-blog-area blog-style-2 mb-50">
            <div class="single-blog-thumbnail">
                <img src="${pageContext.request.contextPath}/resources/imgs/CommonImages/fdMemberDrop1024.png" 
                	<%-- width="${width}" height="${height}"  --%> 
                	id="imgFdMember" alt="플렉스 딜리버리 멤버" usemap="#fdMember">
                
				<map id="fdMember" name="fdMember">
					<!--수정-->
					<area onFocus="this.blur()" shape="rect" alt="수정person" title="수정" coords="412,150,478,364" href="#crystal" 
						onclick="openMember(1)" />
					<area onFocus="this.blur()" shape="poly" alt="수정drop" title="수정" coords="425,109,450,145,478,102,476,77,459,63,438,65,422,78,418,94,418,102" 
						href="#crystal" onclick="openMember(1)" />
					<!--지안-->
					<area onFocus="this.blur()" shape="rect" alt="지안person" title="지안" coords="335,152,407,363" href="#jian"
						onclick="openMember(2)" />
					<area onFocus="this.blur()" shape="poly" alt="지안drop" title="지안" coords="372,145,397,94,395,71,383,57,352,60,339,86,336,105,345,125,363,139" 
						href="#jian" target="" onclick="openMember(2)" />
					<!--소정-->
					<area onFocus="this.blur()" shape="rect" alt="소정person" title="소정" coords="564,148,636,364" href="#sj" 
						onclick="openMember(3)" />
					<area onFocus="this.blur()" shape="poly" alt="소정drop" title="소정" coords="599,144,625,97,618,71,593,63,568,66,560,97,576,122,590,137" 
						href="#sj" onclick="openMember(3)" />
					<!--희영-->
					<area onFocus="this.blur()" shape="rect" alt="희영person" title="희영" coords="641,118,699,362" href="#hy"
						onclick="openMember(4)" />
					<area onFocus="this.blur()" shape="poly" alt="희영drop" title="희영" coords="658,115,685,63,662,31,631,34,615,64,629,88,650,110" 
						href="#hy" onclick="openMember(4)" />
					<!--백신-->
					<area onFocus="this.blur()" shape="rect" alt="백신person" title="백신" coords="704,144,759,361" href="#bs"
						onclick="openMember(5)" />
					<area onFocus="this.blur()" shape="poly" alt="백신drop" title="백신" coords="728,140,755,90,742,60,700,59,688,89,693,102,702,123,714,131" 
						href="#bs" onclick="openMember(5)" />
					<!--현준-->
					<area onFocus="this.blur()" shape="rect" alt="현준person" title="현준" coords="485,126,559,362" href="#hj"
						onclick="openMember(6)" />
					<area onFocus="this.blur()" shape="poly" alt="현준drop" title="현준" coords="530,120,555,76,560,52,542,36,508,35,493,53,492,72,503,94,521,111" 
						href="#hj" onclick="openMember(6)" />
					<!--정만-->
					<area onFocus="this.blur()" shape="rect" alt="정만person" title="정만" coords="273,131,332,362" href="#jm"
						onclick="openMember(7)" />
					<area onFocus="this.blur()" shape="poly" alt="정만drop" title="정만" coords="314,118,335,84,345,48,318,31,286,40,274,62,281,81,301,111" 
						href="#jm" onclick="openMember(7)" />
				</map>

                <img id="crystal" src="${pageContext.request.contextPath}/resources/imgs/CommonImages/memberCrystal.png" alt="플렉스 딜리버리 멤버소개_수정">
                <img id="jian" src="${pageContext.request.contextPath}/resources/imgs/CommonImages/memberJa.png" alt="플렉스 딜리버리 멤버소개_지안">
                <img id="bs" src="${pageContext.request.contextPath}/resources/imgs/CommonImages/memberBs.png" alt="플렉스 딜리버리 멤버소개_백신">
                <img id="hy" src="${pageContext.request.contextPath}/resources/imgs/CommonImages/memberHy.png" alt="플렉스 딜리버리 멤버소개_희영">
                <img id="sj" src="${pageContext.request.contextPath}/resources/imgs/CommonImages/memberSj.png" alt="플렉스 딜리버리 멤버소개_소정">
                <img id="hj" src="${pageContext.request.contextPath}/resources/imgs/CommonImages/memberHj.png" alt="플렉스 딜리버리 멤버소개_현준">
                <img id="jm" src="${pageContext.request.contextPath}/resources/imgs/CommonImages/memberJm.png" alt="플렉스 딜리버리 멤버소개_정만">
                <div class="post-tag-content">
                    <div class="container">
                        <div class="row">
                            <div class="col-12">
                                <div class="post-date">
                                    <a href="#">FD <span>공동대표</span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
           <div class="row">
	          <!-- ##### Post Content Area ##### -->
	          <div class="col-12">
	              <!-- Single Blog Area  -->
	              <div class="single-blog-area blog-style-2 mb-50">
                        <div class="single-blog-content">
                            <div class="line"></div>
                            <a href="#" class="post-tag">About us</a>
                            <h4><a href="#" class="post-headline mb-0">플렉스 딜리버리</a></h4>
                           <!--  <div class="post-meta mb-50">
                                <p>By <a href="#">james smith</a></p>
                                <p>3 comments</p>
                            </div> -->
                            <p>여러분을 행복하게 해드리고 싶은 플렉스 딜리버리입니다.</p>

                            <div style="text-align: center;">
	                            <p></p>
	                            <p></p>
	                            <br>
	                            <p>저희는 이런 서비스를 제공하고 있어요.</p>
	                            <br>
	                            <p>유료광고</p><br>
	                            <p>매출통계</p><br>
	                            <p>오늘 뭐 먹지</p><br>
	                            <p>지금 바로 플렉스 딜리버리와 함께 해보세요.</p><br>
	                            <p>
	                            	<a href="#" class="btn btn-primary">회원가입</a>
	                            	<a href="#" class="btn btn-primary">입점신청</a>
	                            	<a href="#" class="btn btn-primary">유료광고 가입</a>
	                            </p>
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