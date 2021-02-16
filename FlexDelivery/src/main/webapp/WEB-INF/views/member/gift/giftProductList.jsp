<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript" src="<c:url value='/resources/memberResources/js/jquery-3.5.1.min.js'/>"></script>
<script type="text/javascript">

	function categoryClick(no){
		var data="gCategoryNo="+no;
		$.ajax({
			url:"<c:url value='/member/gift/giftProductAjax.do'/>",
			type:"get",
			data:data,
			success:function(map){
				
				if(map.list.length==0){
					var str="<div class='p-3 rounded shadow-sm bg-white' style='text-align:center'>";
					str+="<img src='<c:url value='/resources/imgs/noListDefault.png'/>' class='img-fluid' style='inline-size:45em;'>";
					str+="</div>"
					
					$('#home').html(str);
					event.preventDefault();
				}else{
					var name="";
					if(map.name!=null){
						name=map.name;
					}
					var str="<h5 class='mb-1'>"+name+" ("+map.count+"개)</h5>";
					str+="<p>특별한 날,특별한 누군가를 위해 FLEX-DELIVERY만의 상품권을 선물하세요</p>";
					str+="<div class='row'>";
					for(var i=0;i<map.list.length;i++){
						str+="<div class='col-md-3 col-6 pb-3'>";
						str+="<div class='list-card bg-white h-100 rounded overflow-hidden position-relative shadow-sm'>";
						str+="<div class='list-card-image'>";
						str+="<div class='member-plan position-absolute'><span class='badge badge-success'>"+map.list[i].gCategoryName+"</span></div>";
						str+="<a href='#' data-toggle='modal' data-target='#giftModal' onclick='modalOn("+map.list[i].gProductNo+")'><img alt='#' src='<c:url value='/resources/imgs/GiftProductImages/"+map.list[i].gProductFilename+"'/>' class='img-fluid item-img w-100'></a></div>";
						str+="<div class='p-3 position-relative'>";
						str+="<div class='list-card-body'>";
						str+="<span class='h5 mb-2 text-end'>"+map.list[i].gProductName+"</span></div>";
						str+="<div class='list-card-badge'><small>5,000원 부터~</small></div></div></div></div>";
					}
					
					$('#home').html(str);
					event.preventDefault();
				}
				
			},error:function(error){
				alert("error"+error);
			}
		})
	};
	
	function modalOn(no) {
		$('#gProductNo').val(no);
	}
</script>
<c:if test="${empty list}">
	<div class='p-3 rounded shadow-sm bg-white' style='text-align:center'>
		<img src='<c:url value='/resources/imgs/noListDefault.png'/>' class='img-fluid' style='inline-size:45em;'>
	</div>
</c:if>
<c:if test="${!empty list}"> 
		<h5 class="mb-1">전체 (${count}개)</h5>
		<p>특별한 날,특별한 누군가를 위해 FLEX-DELIVERY만의 상품권을 선물하세요</p>
		<div class="row">
		<c:forEach var="vo" items="${list}">
		    <div class="col-md-3 col-6 pb-3">
		        <div class="list-card bg-white h-100 rounded overflow-hidden position-relative shadow-sm">
		            <div class="list-card-image">
		                <div class="member-plan position-absolute"><span class="badge badge-success">${vo.gCategoryName}</span></div>
		                <a href="#" data-toggle="modal" data-target="#giftModal" onclick="modalOn(${vo.gProductNo})">
		                    <img alt="#" src="<c:url value='/resources/imgs/GiftProductImages/${vo.gProductFilename}'/>" class="img-fluid item-img w-100">
		                </a>
		            </div>
		            <div class="p-3 position-relative">
		                <div class="list-card-body">
		                    <span class="h5 mb-2 text-end">${vo.gProductName}</span>
		                </div>
		                <div class="list-card-badge">
		                     <small>5,000원 부터~</small>
		                </div>
		            </div>
		        </div>
		    </div>
		</c:forEach>
	</div>
</c:if>


