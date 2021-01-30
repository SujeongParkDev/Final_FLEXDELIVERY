
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="../../../ownerInc/jianSidebarTop.jsp"%>

<style>
	input{
		border: 1px solid rgb(212,212,212);
		border-radius: 5px;
		height:35px;
	}

</style>

<script type="text/javascript">
			
			function goDetail(no){
				var windowW = 650;  // 창의 가로 길이
		        var windowH = 700;  // 창의 세로 길이
		        var left = Math.ceil((window.screen.width - windowW)/2);
		        var top = Math.ceil((window.screen.height - windowH)/2);
		        
		        var url="${pageContext.request.contextPath}/owner/menu2/foodmenu/menuDetail.do?menuNo="+no;
		        
				window.open(url,"메뉴 상세 정보","l top="+top+", left="+left+", height="+windowH+", width="+windowW,"scroll-x="+no);
				event.preventDefault();
			}
			
			$(function(){
				$('.btMainMenuChange').click(function(){
					
					var url='<c:url value="/owner/menu2/foodmenu/menuMain.do"/>';
					
					if($(this).attr('id')=='btNowMenu'){
						url='<c:url value="/owner/menu2/foodmenu/menuMain.do"/>';
					}else if($(this).attr('id')=='btMenuChange'){
						url='<c:url value="/owner/menu2/foodmenu/menuGroup.do"/>';				
					}else if($(this).attr('id')=='btOptionChange'){
						url='<c:url value="/owner/menu2/foodmenu/menuOption.do"/>';
					}else if($(this).attr('id')=='btMainMenu'){
						url='<c:url value="/owner/menu2/foodmenu/signatureMenu.do"/>';
					}
					
					location.href=url;
				});
				
			});  
		
			
			//메뉴 그룹을 클릭하면 등록 버튼과 메뉴 셀렉트가 보인다.
			 $(function(){
				$('.groupChoice').change(function(){
					
					$('#btOptionWrite').css('display','block');
					
					$.ajax({
						url:"<c:url value='/owner/menu2/foodmenu/selectAllByGroupNo.do'/>",
						data:"sMGroupNo=" + $(this).val(),
						dataType:"json",
						type:"GET",
						success:function(res){
							//alert(res);
							//alert(res.length);
							if(res.length>0){
								var str="";
									str+="<option value='0'>메뉴 선택</option><br>";
								$.each(res, function(idx, item){
									str+="<option value='"+item.menuNo+"' class='menuClick'>"+ item.menuName+"</option><br>";
								});
								
								$('#menuSelect').html(str);
							}
						},
						error:function(xhr, status, error){
							alert("error!! : " + error);
						}
					});
					
				});
				
			});
			 
			
			
			
			//메뉴를 클릭하면 옵션 테이블이 보인다.
		 	$(function(){
				$('.menuSelect').change(function(){
					
					
					$.ajax({
						url:"<c:url value='/owner/menu2/foodmenu/selectOptionByMenuNo.do'/>",
						data:"menuNo=" + $(this).val(),
						dataType:"json",
						type:"GET",
						success:function(res){
							//alert(res);
							//alert(res.length);
							if(res.length>0){
								var str="";
								$.each(res, function(idx, item){
									str+="<tr class='text-center'><br><td>"+item.oRankNo+"순위</td><br>";
									str+="<td class='text-bold-500'><strong>"+item.mOptionName+"</strong></td><br>";
									str+="<td>"+item.mOptionPrice+"원</td><br>";
									str+="<td class='p-0'><button class='btn btn-outline-info p-2 btmenu' value='"+item.mOptionNo+"' name='menuEdit' >수정</button>";
				                  	str+="<button class='btn btn-outline-dark p-2 btmenu' value='"+item.mOptionNo+"' name='menuDelete'>삭제</button><br></td>";	
									str+=" <td></td><br></tr>";
								});
								
								$('#optionTable').html(str);
							}else{
								var str="";
								str+="<tr class='text-center'><td colspan='5' style='font-size:15px;' >등록된 옵션이 없습니다</td><tr>"
									$('#optionTable').html(str);
							}
						},
						error:function(xhr, status, error){
							alert("error!! : " + error);
						}
					});
					
					
					
					
				});
				
			});
		 
			
			
			//메뉴 등록을 누르면 모달창이 뜬다.
		 	$(function(){
				$('#btOptionWrite').click(function(){
					if($('#menuGroupSelect').val()==0 || $('#menuSelect').val()==0){
						alert('유효하지 않은 선택입니다');

						event.preventDefault();
						return false;
					}else{
							$.ajax({
								url:"<c:url value='/owner/menu2/foodmenu/inputGroupNoMenuNoToOption.do'/>",
								data:"sMGroupNo=" + $('.groupChoice').val() +"&menuNo="+$('.menuSelect').val(), 
								dataType:"json",
								type:"GET",
								success:function(res){
									//alert(res);
									//alert(res.length);
									
									var str = "";
									str+="<label>그룹이름</label>&nbsp;";
									str+="<input type='hidden'name='sMGroupNo' value='"+res.sMGroupNo+"'>";
									str+="<input type='text' readonly='readonly' class='form-control text-right' name='sMGroupName' value='"+res.sMGroupName+"'>&nbsp;&nbsp;";
									str+="<label>메뉴 이름</label>&nbsp;";
									str+="<input type='hidden'name='menuNo' id='menuNo' value='"+res.menuNo+"'>";
									str+="<input type='text' readonly='readonly' class='form-control text-right' name='menuName' value='"+res.menuName+"'>";
									
									
									$('.groupMenuInput').html(str);
									
									 if(res.list.length>0){
										var str2="";
										$.each(res.list, function(idx, item){
											str2+="<option value='"+item.oRankNo+"'>"+item.oRankName+"</option><br>";
										});
										
										$('.menuOptionSelect').html(str2);
									} 
								},
								error:function(xhr, status, error){
									alert("error!! : " + error);
								}
							});
							event.preventDefault();
							
					}
				
					
					
				});
				
			});
		 	
		 	
		 	
		 
		///input 클릭시 유효성 검사 span 사라지게 하기
	 	$(function(){
			$('input[type=text]').click(function(){
				if($(this).prop('name')=='mOptionName'){
					$('#warningOptionName').html('');
					event.preventDefault();
				}else if($(this).prop('name')=='mOptionPrice'){
					$('#warningOptionPrice').html('');
					event.preventDefault();
				}
			});
			
		});
		 	 
		
		//input 에 값 입력시 중복 값 있는지 확인하기 1) input 값 change 될때 2)엔터 누를때
	 	$(function(){
			$('input[name=mOptionName]').change(function(){
			
				if($(this).prop('name')=='mOptionName'){
					$('#warningOptionName').html('');
					
					
					$.ajax({
						url:"<c:url value='/owner/menu2/foodmenu/checkOptionName.do'/>",
						data:"menuNo=" + $('#menuNo').val()+"&oRankNo="+$('#oRankNo').val()+"&mOptionName="+$('#mOptionName').val(),
						dataType:"json",
						type:"GET",
						success:function(res){
							//alert(res);
							if(res==true){
								$('#warningOptionName').html("<small>중복된 이름이 존재합니다. 다른 이름을 입력해 주세요</small>");
								$('input[name=mOptionName]').focus();
								event.preventDefault();
							}
						},
						error:function(xhr, status, error){
							alert("error!! : " + error);
						}
					});
					event.preventDefault();
					
				}else if($(this).prop('name')=='mOptionPrice'){
					$('#warningOptionPrice').html('');
					event.preventDefault();				
				}
			});
			
		});
		
		
		
		
		
		/*  //엔터 누를때 
		  $(function(){
				$('input[name=mOptionName]').keypress(function(event){
					if(event.key==="Enter"){
					
						$.ajax({
							url:"<c:url value='/owner/menu2/foodmenu/checkDupMenuName.do'/>",
							data:"menuName=" + $('#menuName').val(),
							dataType:"json",
							type:"GET",
							success:function(res){
								//alert(res);
								if(res==true){
									$('#warningOptionName').html("<small>중복된 이름이 존재합니다. 다른 이름을 입력해 주세요</small>");
									$('input[name=mOptionName]').focus();
									event.preventDefault();
									return false;
								}
							},
							error:function(xhr, status, error){
								alert("error!! : " + error);
							}
						});
					}
				
				});
				
			}); 
		 */
		 $(function(){
			  $('.submitWriteOption').click(function(){
				  
				  if($('#mOptionName').val().length<1){
						$('#warningOptionName').html('<small>이름을 입력해 주세요</small><br>');
						$('#mOptionName').focus();
						event.preventDefault();
						return false;
					}else if($('#mOptionPrice').val().length<1){
						$('#warningOptionPrice').html('<small>가격을 입력해 주세요</small><br>');
						$('#mOptionPrice').focus();
						event.preventDefault();
						return false;
					}
			  
				  
				  
				  
				  
				  $.ajax({
						url:"<c:url value='/owner/menu2/foodmenu/checkOptionName.do'/>",
						data:"menuNo=" + $('#menuNo').val()+"&oRankNo="+$('#oRankNo').val()+"&mOptionName="+$('#mOptionName').val(),
						dataType:"json",
						type:"GET",
						success:function(res){
							//alert(res);
							if(res==true){
								$('#warningOptionName').html("<small>중복된 이름이 존재합니다. 다른 이름을 입력해 주세요</small>");
								$('input[name=mOptionName]').focus();
								event.preventDefault();
								return false;
							}else{
								
								$('form[name=frm123]').submit();
							}
						},
						error:function(xhr, status, error){
							alert("error!! : " + error);
						}
					});
				
					
					event.preventDefault(); 
				});
		 	
		 });
		 	
		 
		 $(function(){
				//{"message":"등록 성공!","data":{"no":10,"name":"hong","content":"hi"}}
				$('form[name=frm123]').submit(function(){
					
					$.ajax({
						url:"<c:url value='/owner/menu2/foodmenu/insertOption.do'/>",
						type:"post",
						data:$(this).serializeArray(), 
						dataType:"json",
						success:function(res){
							//alert(res);
							if(res>0){
							
								$('#warningOptionName').html('성공');
							}
						},
						error:function(xhr, status, error){
							alert("error! : " + error);
						}				
					});
					event.preventDefault();
				});
	
			});
			
		 	
		 	
			
		</script>
		<!-- 메뉴 버튼 -->
		<br>
			 <div class="row mt-3">
			  		<div class="col-md-2 col-sm-12"></div>
			  		<div class="col-md-8 col-sm-12">
				  		 <div class="text-right">
		                	 <button id="btNowMenu" class="btn btn-primary btMainMenuChange" >현재메뉴</button>
		                	 <button id="btMenuChange" class="btn btn-primary btMainMenuChange" >메뉴편집</button>
		                	 <button id="btOptionChange" class="btn btn-primary btMainMenuChange " >옵션편집</button>
		                	 <button id="btMainMenu" class="btn btn-primary btMainMenuChange" >대표메뉴</button>
	                	 </div>
		            </div>
                    <div class="col-md-2 col-sm-12"></div>
			  </div>
	
		
			 
			 <br>
			 

		
	
		
			
		
		<!-- 셀렉 옵션 선택 내용 -->
		<div class="row" id="basic-table">
					  <div class="col-md-2 col-sm-12"></div>
					  <div class="col-12 col-md-8">
					    <div class="card" >
					      <br>
					      <!-- <div class="card-header">
					        <h4 class="card-title text-center" >메뉴</h4>
					      </div> -->
					      <div class="card-content">
					        <div class="card-body">
					          <p class="card-text text-center" style="font-size:20px;">메뉴옵션</p>
					          <p class="card-text text-center">메뉴 옵션 수정 및 삭제 및 등록 해주세요</p>
					          <br>
					          <br>
					          <div class="row">
						          <div class="col-md-3 col-12"></div>
								  <div class="col-md-4 col-sm-12">
								  		
										<select class="form-select groupChoice p-2 " name="menuGroup" id="menuGroupSelect" style="overflow : auto; ">
												<option class="m-3 text-center" style="font-size:17px;" selected value="0" >메뉴 그룹 선택</option>
												<c:if test="${!empty list }">
												  <c:forEach var="vo" items="${list }">
												  		<option value="${vo.sMGroupNo }" >${vo.sMGroupName }</option>
												  </c:forEach>
												</c:if>
										</select>
										<br>
								 	</div>
								 	<div class="col-md-4 col-sm-12">
								 		
										<select class="form-select menuSelect p-2" name="menu" id="menuSelect" style="overflow : auto; ">
												<option class="m-3 text-center" style="font-size:17px;" selected value="0" >메뉴 선택</option>
										</select>
										<br>
								 	</div>
							  </div>
					          <div class="table-responsive">
					            <table class="table">
					              <thead>
					                <tr class="text-center" style="font-size:13px;">
					                  <th style="width:22%;">순위</th>
					                  <th style="width:22%;">메뉴 옵션</th>
					                  <th style="width:22%;">가격</th>
					                  <th style="width:20%;">수정/삭제</th>
					                  <th style="width:14%;" class="pl-3">
					                  		<button class="btn btn-outline-primary p-2" data-toggle="modal" data-target="#inlineForm" 
					                  			id="btOptionWrite" style="display:none;">등록</button>
					                  </th>
					                </tr>
					              </thead>
					              <tbody id="optionTable">
					               
					              </tbody>
					            </table>
					          </div>
					        </div>
					      </div>
					    </div>
					  </div>
				   <div class="col-md-2 col-sm-12"></div>
			 </div> 
			 
			 
			 <!-- 등록 모달! -->
			 <div class="modal fade text-left" id="inlineForm" tabindex="-1" aria-labelledby="myModalLabel33" style="display: none;" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                            <h4 class="modal-title" id="myModalLabel33">옵션 등록</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x"><line x1="18" y1="6" x2="6" y2="18"></line><line x1="6" y1="6" x2="18" y2="18"></line></svg>
                            </button>
                            </div>
                            <form  name="frm123" >
	                            <div class="modal-body">
	                               	 <div class="form-group groupMenuInput">
	                                </div>
	                                <div class="form-group">
	                                	<label>옵션 순위 선택</label>
		                                <select class="form-select menuOptionSelect p-2" name="oRankNo" id="oRankNo" style="overflow : auto; text-align-last:center;">
										</select>
	                                </div>
	                                <label>옵션 이름<span style="color:red; margin-left:4px;"><b>*</b></span></label>
	                                 <div class="form-group" >
	                               		 <input type="text"  class="form-control text-right" id="mOptionName" name="mOptionName"  style="width:100%;">
	                                </div>
	                                <div style="text-align: right;">
		                    	  		<span id="warningOptionName" style="color:red; "></span>
		                    	    </div>
		                    	    <label>옵션  가격<span style="color:red; margin-left:4px;"><b>*</b></span></label>
	                                 <div class="form-group" >
	                               		 <input type="text"  class="form-control text-right" id="mOptionPrice" name="mOptionPrice"  style="width:100%;">
	                                </div>
	                                <div style="text-align: right;">
		                    	  		<span id="warningOptionPrice" style="color:red; "></span>
		                    	    </div>
	                            </div>
	                            <div class="modal-footer">
	                                <button type="button" class="btn btn-light-secondary submitWriteOption">  
	                                	<i class="bx bx-x d-block d-sm-none "></i>
	                                	<span class="d-none d-sm-block">등록</span>
	                                </button>
	                                <button type="button" class="btn btn-primary ml-1" data-dismiss="modal">
	                               		<i class="bx bx-check d-block d-sm-none"></i>
	                                	<span class="d-none d-sm-block">취소</span>
	                                </button>
	                            </div>
                            </form>
                        </div>
                        </div>
                    </div>
				   	<br>
		<br>
		<br>
				   
 <%@include file="../../../ownerInc/jianSidebarBottom.jsp"%>

	