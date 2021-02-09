<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../../ownerInc/top.jsp"%>
<!-- QQQ. honey tip 게시판 만드신 후에  span 태그 앞 숫자에는 꿀팁 글 번호를 넣으시고 그 번호에 해당하는 게시물에 바로갈수있게 href 수정부탁드려요
						H O N E Y T I P  이라고 적혀있는건 전체 게시판을 연결해주시고
						그밑에거는 또 번호에 해당하는 곳으로 이동시켜주세요 -->
<!-- Single Blog Area  -->
<div class="single-blog-area blog-style-2 wow fadeInUp"
	data-wow-delay="0.2s" data-wow-duration="1000ms">
	<div class="row align-items-center" style="padding: 10%;">
		<div class="col-12 col-md-10">
			<a href="<c:url value='/owner/menu3/honeyTip/honeyTip.do'/>"
				style="text-decoration: none; color: black;"><h4>사장님 꿀팁</h4></a>
		</div>
		<div class="col-12 col-md-1">
			<a href="<c:url value='/owner/menu3/hoenyTip/honeyTip.do'/>"
				style="font-size: 15px; text-decoration: none; color: rgb(255, 201, 14); margin-right: 20px;">more</a>
		</div>
		<div class="col-12 col-md-1"></div>
		<br> <br> <br> <br>
		<!-- 시작  -->
		<c:if test="${!empty list }">
			<c:forEach var="vo" items="${list}" varStatus="status">
				<div class="col-12 col-md-3">
					<div class="single-blog-thumbnail">
					  	<c:if test="${fn:substring(vo.honeytipThumbnail, 0,4)=='http' }">
				      		<img src="${vo.honeytipThumbnail}" class="card-img-top"style="margin-bottom: 40px;" alt="${vo.honeytipTitle }">
						</c:if>
						<c:if test="${fn:substring(vo.honeytipThumbnail, 0,4)!='http' and (!empty vo.honeytipThumbnail) }">
							<img src ="<c:url value='/resources/imgs/HoneytipImages/${vo.honeytipThumbnail}'/>" 
							alt="${vo.honeytipTitle }" class="card-img-top" style="margin-bottom: 40px;">
						</c:if>
					</div>
				</div>
				<div class="col-12 col-md-2"
					style="height: 200px; padding-right: 0px;">
					<!-- Blog Content -->
					<div class="single-blog-content" style="margin-bottom: 40px;">
						<div class="line mb-2"></div>
						<a href="<c:url value='/owner/menu3/honeyTip/detail.do?honeyTipNo=${vo.honeytipNo }'/>" class="post-tag">HONEY TIP</a>
						<h4>
							<a href="<c:url value='/owner/menu3/honeyTip/detail.do?honeyTipNo=${vo.honeytipNo }'/>" class="post-headline"><b>${vo.honeytipTitle }</b></a>
						</h4>
						<div class="post-meta">
							<p>By FLEX DELIVERY</p>
							<p></p>
						</div>
					</div>
				</div>
				<div class="col-12 col-md-1"></div>
			</c:forEach>
		</c:if>
		<!--  -->
		<!--  -->
		<!--  -->
		<div class="col-12 col-md-3">
			<div class="single-blog-thumbnail">
				<img src="http://t1.daumcdn.net/thumb/R1024x0/?fname=http://cfile275.uf.daum.net/image/275DC93F55DAD3730B50BE" style="margin-bottom: 40px;" alt="pcRoom">
			</div>
		</div>
		<div class="col-12 col-md-2" style="height: 200px; padding-right: 0px;">
			<!-- Blog Content -->
			<div class="single-blog-content" style="margin-bottom: 40px;">
				<div class="line mb-2"></div>
				<a href="<c:url value='/owner/menu3/honeyTip/honeyTip.do'/>"
					class="post-tag">HONEY TIP</a>
				<h4>
					<a href="<c:url value='/owner/menu3/honeyTip/honeyTip.do?honeyTipNo=?3'/>"
						class="post-headline"><b>삼겹살 <br>입니다.
					</b></a>
				</h4>
				<div class="post-meta">
					<p>By FLEX DELIVERY</p>
					<p></p>
				</div>
			</div>
		</div>
		<div class="col-12 col-md-1"></div>
		<div class="col-12 col-md-3">
			<div class="single-blog-thumbnail">
				<img src="//img1.daumcdn.net/thumb/R720x0/?fname=http%3A%2F%2Ft1.daumcdn.net%2Fliveboard%2Frealfood%2F6edfee13edc641d48eb1f4a9b50225b7.JPG"
					style="margin-bottom: 40px;" alt="pcRoom">
			</div>
		</div>
		<div class="col-12 col-md-2"
			style="height: 200px; padding-right: 0px;">
			<!-- Blog Content -->
			<div class="single-blog-content" style="margin-bottom: 40px;">
				<div class="line mb-2"></div>
				<a href="<c:url value='/owner/menu3/honeyTip/honeyTip.do'/>"
					class="post-tag">HONEY TIP</a>
				<h4>
					<a href="<c:url value='/owner/menu3/honeyTip/honeyTip.do?honeyTipNo=?3'/>" class="post-headline"><b>칠레의 <br>식사예절
					</b></a>
				</h4>
				<div class="post-meta">
					<p>By FLEX DELIVERY</p>
					<p></p>
				</div>
			</div>
		</div>
		<div class="col-12 col-md-1"></div>
		<div class="col-12 col-md-3">
			<div class="single-blog-thumbnail">
				<img
					src="//img1.daumcdn.net/thumb/R720x0/?fname=http%3A%2F%2Ft1.daumcdn.net%2Fliveboard%2Frealfood%2Fc164c212084a4b49904b5c371e869959.JPG"
					style="margin-bottom: 40px;" alt="pcRoom">
			</div>
		</div>
		<div class="col-12 col-md-2"
			style="height: 200px; padding-right: 0px;">
			<!-- Blog Content -->
			<div class="single-blog-content" style="margin-bottom: 40px;">
				<div class="line mb-2"></div>
				<a href="<c:url value='/owner/menu3/honeyTip/honeyTip.do'/>"
					class="post-tag">HONEY TIP</a>
				<h4>
					<a href="<c:url value='/owner/menu3/honeyTip/honeyTip.do?honeyTipNo=?3'/>" class="post-headline"><b>헝가리 <br>식사예절
					</b></a>
				</h4>
				<div class="post-meta">
					<p>By FLEX DELIVERY</p>
					<p></p>
				</div>
			</div>
		</div>
		<div class="col-12 col-md-1"></div>
	</div>
</div>
<!--  -->
<div class="row">
	<div class="col-xs-6 col-md-3">
		<a href="#" class="thumbnail"> <img src="..." alt="...">
		</a>
	</div>
	...
</div>
<!--  -->

<%@ include file="../../../ownerInc/bottom.jsp"%>