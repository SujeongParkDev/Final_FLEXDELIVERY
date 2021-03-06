<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@include file="../../../ownerInc/jianSidebarTop.jsp"%>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.6.9/core.min.js"></script>
<script src="https://kit.fontawesome.com/e42a7f130f.js"
	crossorigin="anonymous"></script>


<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/ownerResources/assets/css/operation.css" />
<link rel="stylesheet"
	href="https://ceo-cdn.baemin.com/cdn/ceo-selfservice/css/ceo-selfservice.css?ts=20210119110213">




<script type="text/javascript">
	$(function(){
		$('.change-button').click(function(){
			if($(this).attr('name')=='btTime'){
				if($('#changeTime').css("display")=="none"){
					$('#changeTime').css('display','block');
				}else if($('#changeTime').css("display")=="block"){
					$('#changeTime').css('display','none');
				}
			}else if($(this).attr('name')=='btHoliday'){
				if($('#changeHoliday').css("display")=="none"){
					$('#changeHoliday').css('display','block');
				}else if($('#changeHoliday').css("display")=="block"){
					$('#changeHoliday').css('display','none');
				}
			}else if($(this).attr('name')=='btStatus'){
				if($('#statusCard').css("display")=="none"){
					$('#statusCard').css('display','block');
				}else if($('#statusCard').css("display")=="block"){
					$('#statusCard').css('display','none');
				}
			}else if($(this).attr('name')=='btMinPrice'){
				if($('#minPriceCard').css("display")=="none"){
					$('#minPriceCard').css('display','block');
				}else if($('#minPriceCard').css("display")=="block"){
					$('#minPriceCard').css('display','none');
				}
			}
			
		});
	});
	
	
	$(function(){
		$('.btCancleChange').click(function(){
			if($(this).attr("name")=="holidayCancle"){
				$('#changeHoliday').css('display','none');
			}else if($(this).attr("name")=="timeCancle"){
				$('#changeTime').css('display','none');
			}else if($(this).attr("name")=="statusCancle"){
				$('#statusCard').css('display','none');
			}else if($(this).attr("name")=="minPriceCancle"){
				$('#minPriceCard').css('display','none');
			}
		});
	});
	
	
	function goMinPrice(){
		$.ajax({
			url:"<c:url value='/owner/menu2/operation/selectMinPrice.do'/>",
			success:function(res){
				$('.spanMinPriceText').html("<span class='text' >"+res+"???</span>");
				$('input[name=storeMinPrice]').val(res);
			},
			error:function(xhr,status,error){
				alert("error!!: "+error);
			}
		});
	}
	
		$(function(){
			
			goMinPrice();
		});
		
		
		
	$(function(){
		$('#holidayUpdate').click(function(){
			var hCategoryNo = $('select[name=hCategoryNo]').val();
			var storeNo = $('input[name=storeNo]').val();
			var ownerNo = $('input[name=ownerNo]').val();
			
			console.log(hCategoryNo);
			console.log(storeNo);
			console.log(ownerNo);
			$.ajax({
				url:"<c:url value='/owner/menu2/operation/updateHoliday.do'/>",
				data:"hCategoryNo="+hCategoryNo+"&storeNo="+storeNo+"&ownerNo="+ownerNo, 
				
				success:function(res){
					str="";
					if(res=="fail"){
						alert("???????????? ??????!");
					}else{
						if(res=="??????"){
							str+="<span class='text'>"+res+"</span>";
						}else{
							str+="<span class='text'>"+res+"??????</span>";
						}
					}
					
					$('#holidayText').html('');
					$('#holidayText').html(str);
					$('#changeHoliday').css('display','none'); 
				},
				error:function(xhr,status,error){
					alert("error!!: "+error);
				}
			});
		});
	});
	
	
	$(function(){
		$('button[name=changeStatus]').click(function(){
				var storeNo = $('input[name=storeNo]').val();
				var ownerNo = $('input[name=ownerNo]').val();
				var sStatusNo = $('select[name=sStatusNo]').val();
				
				$.ajax({
					url:"<c:url value='/owner/menu2/operation/updateStatus.do'/>",
					data:"storeNo="+storeNo+"&ownerNo="+ownerNo+"&sStatusNo="+sStatusNo, 
					success:function(res){
						str="";
						if(res=="fail"){
							alert("???????????? ??????!");
						}else{
							str+="<span class='text'>"+res+"</span>";
						}
						
						$('#statusText').html('');
						$('#statusText').html(str);
						$('#statusCard').css('display','none'); 
					},
					error:function(xhr,status,error){
						alert("error!!: "+error);
					}
				});
			
		});
	});
	
	
	$(function(){
		$('button[name=timeChange]').click(function(){
			var startHour = $('select[name=startHour]').val();
			var startMinute = $('select[name=startMinute]').val();
			var closeHour = $('select[name=closeHour]').val();
			var closeMinute = $('select[name=closeMinute]').val();
			
			var startTime= startHour+":"+startMinute;
			var closeTime= closeHour+":"+closeMinute;
			
			var storeNo = $('input[name=storeNo]').val();
			var ownerNo = $('input[name=ownerNo]').val();
			
			if(startTime==closeTime){
				alert('????????? ?????? ????????? ?????????!');
			}else{
				$.ajax({
					url:"<c:url value='/owner/menu2/operation/updateTime.do'/>",
					data:"startTime="+startTime+"&closeTime="+closeTime+"&storeNo="+storeNo+"&ownerNo="+ownerNo,
					success:function(res){
						str="";
						if(res.length==0){
							alert('?????? ???????????? ??????!');
						}else{
							str+="<time>"+res.start+" ~ "+res.close+"</time>";
						}
						
						$('#changeTimeText').html('');
						$('#changeTimeText').html(str);
						$('#changeTime').css('display','none');
					},
					error:function(xhr,status,error){
						alert("error:"+error);
					}
					
				});
			}
			
		});
	});
	
	
	
	$(function(){
		$('#minPriceUpdate').click(function(){
			var storeMinPrice = $('input[name=storeMinPrice]').val();
			var storeNo = $('input[name=storeNo]').val();
			var ownerNo = $('input[name=ownerNo]').val();
			
			console.log(storeMinPrice);
			console.log(storeNo);
			console.log(ownerNo);
			$.ajax({
				url:"<c:url value='/owner/menu2/operation/updateMinPrice.do'/>",
				data:"storeMinPrice="+storeMinPrice+"&storeNo="+storeNo+"&ownerNo="+ownerNo, 
				success:function(res){
					str="";
					if(res>1){
						alert("???????????? ??????!");
					}else{
						
						goMinPrice();
						$('#minPriceCard').css('display','none');
					}
				},
				error:function(xhr,status,error){
					alert("error!!: "+error);
				}
			});
		});
	});
</script>




<input type="hidden" name="storeNo" value="${map['STORE_NO'] }">
<input type="hidden" name="ownerNo" value="${map['OWNER_NO'] }">
<div class="frame-wrap">
	<div class="frame-body">
		<button class="top-button  hide">
			<i class="icon icon-top"></i>
		</button>
		<div>
			<div class="ShopSelect mb-4 mb-sm-0">
				<section class="title">
					<h3>
						${map['STORE_NAME'] } 
					</h3>
					<p class="text-sub mt-1">FLEX DELIVERY</p>
				</section>
			</div>
			<div>
				<div class="tabs TabNav">
					<ul>
						<li><a href="<c:url value='/owner/menu2/basic/basic.do'/>">????????????</a></li>
						<li><a aria-current="page" class="active"
							href="<c:url value='/owner/menu2/operation/operation.do'/>">????????????</a></li>
					</ul>
				</div>
				<form class="form-card">
					<div>
						<div class="Card ">
							<div class="card-header">
								<h3>????????????</h3>
								<div class="card-menu " style="opacity: 0.99;">
									<button type="button" class="button change-button medium text" name="btTime">
										<i class="fas fa-pencil-alt"></i> ??????
									</button>
								</div>
							</div>
							<div class="form-group ">
								<h5 class="form-label">??????</h5>
								<div class="inline-values flex-1 " id="changeTimeText">
									<c:if test="${map['STORE_OPEN_TIME']!='' and map['STORE_CLOSE_TIME']!='' }">
										<time>${map['STORE_OPEN_TIME'] } ~ ${map['STORE_CLOSE_TIME'] }</time>
									</c:if>
									<c:if test="${map['STORE_OPEN_TIME']=='' and map['STORE_CLOSE_TIME']=='' }">
										<span>?????? ????????? ????????? ?????????</span>
									</c:if>
								</div>
							</div>
						</div>
					</div>
				</form>

				<form class="form-card form-card-active">
					<div>
						<div class="Card " id="changeTime" style="display:none; ">
							<div class="card-header">
								<h3>????????????</h3>
								<div class="card-menu " style="opacity: 1;">
									<button type="button" class="button small primary" name="timeChange">??????</button>
									<button type="button" class="button mr-1 small secondary btCancleChange" name="timeCancle">??????</button>
								</div>
							</div>
							
							<div class="form-group ">
								<div class="form-control-wrap">
									<div class="form-control ">
										<h5 class="form-label">??????</h5>
									</div>
								</div>
								<div class="card-columns ">
									<div class="form-control-wrap">
										<div class="form-control ">
											<h5 class="form-label form-sub-label">??????</h5>
											<select class="_31CECf9nJyK91ez9apcKQB" name="startHour">
												<option value="00" selected="selected">??? 12???</option>
												<option value="01">?????? 1???</option>
												<option value="02">?????? 2???</option>
												<option value="03">?????? 3???</option>
												<option value="04">?????? 4???</option>
												<option value="05">?????? 5???</option>
												<option value="06">?????? 6???</option>
												<option value="07">?????? 7???</option>
												<option value="08">?????? 8???</option>
												<option value="09">?????? 9???</option>
												<option value="10">?????? 10???</option>
												<option value="11">?????? 11???</option>
												<option value="12">??? 12???</option>
												<option value="13">?????? 1???</option>
												<option value="14">?????? 2???</option>
												<option value="15">?????? 3???</option>
												<option value="16">?????? 4???</option>
												<option value="17">?????? 5???</option>
												<option value="18">?????? 6???</option>
												<option value="19">?????? 7???</option>
												<option value="20">?????? 8???</option>
												<option value="21">?????? 9???</option>
												<option value="22">?????? 10???</option>
												<option value="23">?????? 11???</option>
											</select>
											<select	class="_1HdZOQKzdMFA822bBz8vnt" name="startMinute">
												<option value="00" selected="selected">0???</option>
												<option value="05">5???</option>
												<option value="10">10???</option>
												<option value="15">15???</option>
												<option value="20">20???</option>
												<option value="25">25???</option>
												<option value="30">30???</option>
												<option value="35">35???</option>
												<option value="40">40???</option>
												<option value="45">45???</option>
												<option value="50">50???</option>
												<option value="55">55???</option>
										   </select>
										</div>
									</div>
									<div class="form-control-wrap">
										<div class="form-control ">
											<h5 class="form-label form-sub-label">??????</h5>
											<select class="_31CECf9nJyK91ez9apcKQB" name="closeHour">
												<option	value="12" selected="selected">??? 12???</option>
												<option value="13">?????? 1???</option>
												<option value="14">?????? 2???</option>
												<option value="15">?????? 3???</option>
												<option value="16">?????? 4???</option>
												<option value="17">?????? 5???</option>
												<option value="18">?????? 6???</option>
												<option value="19">?????? 7???</option>
												<option value="20">?????? 8???</option>
												<option value="21">?????? 9???</option>
												<option value="22">?????? 10???</option>
												<option value="23">?????? 11???</option>
												<option value="24">??? 12??? (?????? ???)</option>
												<option value="25">?????? 1??? (?????? ???)</option>
												<option value="26">?????? 2??? (?????? ???)</option>
												<option value="27">?????? 3??? (?????? ???)</option>
												<option value="28">?????? 4??? (?????? ???)</option>
												<option value="29">?????? 5??? (?????? ???)</option>
												<option value="30">?????? 6??? (?????? ???)</option>
												<option value="31">?????? 7??? (?????? ???)</option>
												<option value="32">?????? 8??? (?????? ???)</option>
												<option value="33">?????? 9??? (?????? ???)</option>
												<option value="34">?????? 10??? (?????? ???)</option>
												<option value="35">?????? 11??? (?????? ???)</option>
											</select>
											<select	class="_1HdZOQKzdMFA822bBz8vnt" name="closeMinute">
												<option value="00" selected="selected">0???</option>
												<option value="05">5???</option>
												<option value="10">10???</option>
												<option value="15">15???</option>
												<option value="20">20???</option>
												<option value="25">25???</option>
												<option value="30">30???</option>
												<option value="35">35???</option>
												<option value="40">40???</option>
												<option value="45">45???</option>
												<option value="50">50???</option>
												<option value="55">55???</option>
											</select>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</form>
				<form class="form-card">
					<div>
						<div class="Card ">
							<div class="card-header">
								<h3>????????? ??????</h3>
								<div class="card-menu " style="opacity: 0.99;">
									<button type="button" class="button change-button medium text" name="btHoliday">
										<i class="fas fa-pencil-alt"></i> ??????
									</button>
								</div>
							</div>
							<div class="form-group no-divider">
								<div class="form-control-wrap form-control-inline">
									<div class="form-control ">
										<div class="inline-values flex-1 ">
											<span class="inline-value " id="holidayText">
												<c:if test="${ map['H_CATEGORY_NAME']!='??????'}">
													<span class="text" >${map['H_CATEGORY_NAME'] }??????</span>
												</c:if>
												<c:if test="${ map['H_CATEGORY_NAME']=='??????'}">
													<span class="text">${map['H_CATEGORY_NAME'] }</span>
												</c:if>
											</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</form>
					<form class="form-card">
					<div>
						<div class="Card " id="changeHoliday" style="display:none;">
							<div class="card-header">
								<h3>??? ??? ???</h3>
								<div class="card-menu " style="opacity: 1;">
									<button type="button" class="button small primary" id="holidayUpdate">??????</button>
									<button type="button" class="button mr-1 small secondary btCancleChange" name="holidayCancle">??????</button>
								</div>
							</div>
							<div class="form-group no-divider" style="min-height: auto;">
								<div class="form-control-wrap">
									<div class="form-control ">
										<select name="hCategoryNo">
											<option value="7" selected="selected">????????????</option>
											<option value="1">?????????</option>
											<option value="2">?????????</option>
											<option value="3">?????????</option>
											<option value="4">?????????</option>
											<option value="5">?????????</option>
											<option value="6">?????????</option>
											<option value="0">?????????</option>
										</select>
									</div>
								</div>
							</div>
						</div>
					</div>
				</form>
				<form class="form-card">
					<div>
						<div class="Card ">
							<div class="card-header">
								<h3>?????? ?????? ??????</h3>
								<div class="card-menu " style="opacity: 0.99;">
									<button type="button" class="button change-button medium text"  name="btMinPrice">
										<i class="fas fa-pencil-alt"></i> ??????
									</button>
								</div>
							</div>
							<div class="form-group no-divider">
								<div class="form-control-wrap form-control-inline">
									<div class="form-control ">
										<div class="inline-values flex-1 ">
											<span class="inline-value  spanMinPriceText" >
													
											</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</form>
					<form class="form-card">
					<div>
						<div class="Card " id="minPriceCard" style="display:none;">
							<div class="card-header">
								<h3>?????? ?????? ??????</h3>
								<div class="card-menu " style="opacity: 1;">
									<button type="button" class="button small primary" id="minPriceUpdate">??????</button>
									<button type="button" class="button mr-1 small secondary btCancleChange" name="minPriceCancle" >??????</button>
								</div>
							</div>
							<div class="form-group no-divider" style="min-height: auto;">
								<div class="form-control-wrap">
									<div class="form-control only-one-input justify-content-start">
										<div class="input-label-container" style="width: inherit;">
											<div class="input-container right">
												<input type="number" required="required" pattern="[0-9]" name="storeMinPrice" placeholder="????????? ??????" inputmode="numeric" value="">
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</form>
				<form class="form-card mt-4">
					<div>
						<div class="Card ">
							<div class="card-header">
								<h3>????????????</h3>
								<div class="card-menu " style="opacity: 0.99;">
									<button type="button" class="button change-button medium text" name="btStatus">
										<i class="fas fa-pencil-alt"></i> ??????
									</button>
								</div>
							</div>
							<div class="form-group ">
								<div class="form-control-wrap">
									<div class="form-control ">
										<div class="inline-values flex-1 " id="statusText">
											<span class="text">${map['S_STATUS_NAME'] }</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</form>
				<form class="form-card" id="statusCard"  style="display:none; ">
					<div>
						<div class="Card ">
							<div class="card-header">
								<h3>?????? ?????? ??????</h3>
								<div class="card-menu " style="opacity: 1;">
									<button type="button" class="button small primary" name="changeStatus">??????</button>
									<button type="button" class="button mr-1 small secondary btCancleChange" name="statusCancle">??????</button>
								</div>
							</div>
							<div class="form-group no-divider" style="min-height: auto;">
								<div class="form-control-wrap">
									<div class="form-control ">
										<select name="sStatusNo">
											<c:if test="${empty list }">
												<option value="1" selected="selected">????????? ????????????</option>
											</c:if>
											<c:if test="${!empty list }">
												<c:forEach var="map2" items="${list}">
													<c:if test="${map['S_STATUS_NO']==map2['S_STATUS_NO'] }">
														<option value="${map2['S_STATUS_NO']}" selected="selected">${map2['S_STATUS_NAME'] }</option>
													</c:if>
													<c:if test="${map['S_STATUS_NO']!=map2['S_STATUS_NO']  }">
														<option value="${map2['S_STATUS_NO']}" >${map2['S_STATUS_NAME'] }</option>
													</c:if>
												</c:forEach>
											</c:if>
										</select>
									</div>
								</div>
							</div>
						</div>
					</div>
				</form>
				
				
			</div>
		</div>
	</div>
	<div class="frame-promo">
		<div class="tip-container"></div>
	</div>
</div>
<br><br><br>

<%@include file="../../../ownerInc/jianSidebarBottom.jsp"%>
