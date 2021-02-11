<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../ownerInc/top.jsp" %>

<link rel="stylesheet" href="https://unpkg.com/aos@2.3.1/dist/aos.css">

<script type="text/javascript">


	
	$(function(){
		$('#withdrawAtag').click(function(){
		  
		   location.href="<c:url value='/owner/mypage/mypageDelete.do'/>";
		});
	});
	
	
	$(function(){
		$('.mypage').click(function(){
			var url="";
			if($(this).attr('title')=='edit'){
				url="<c:url value='/owner/register/registerEdit.do'/>";
			}else if($(this).attr('title')=='agree'){
				url="<c:url value='/owner/mypage/mypageApproval.do'/>";
			}
			location.href=url;
			
		});
	});
	 
	
	  
	$(function(){
		var boxes = document.querySelectorAll('#boxes > div');
		  [].forEach.call(boxes, box => {
		    box.addEventListener('mousemove', e => {
		      document.body.style.setProperty(
		        '--bg-color',
		        box.style.getPropertyValue('--color')
		      );

		      var size = parseInt(getComputedStyle(box).width);
		      
		      // scaling
		      var x = size * .3 * .7 + .7 * e.offsetX;
		      var y = size * .3 * .7 + .7 * e.offsetY;
		      
		      box.style.setProperty('--x', x);
		      box.style.setProperty('--y', y);
		      box.style.setProperty('--size', size);
		    });
		  });
	});
	
	
		
	
	
	 
	
</script>
<style>
 /*  	button.mypage{
		color:white;
		font-size:20px;
		background-color: rgb(223,108,220);
	}
	
	a.mypageAtag{
		text-decoration: none;
		color:black;
	}   
	 */
#boxesBG { 
  height: 100%; 
  margin: 0;
}

#boxesBG, #boxes div.btColor { 
  display: flex;
  align-items: center; 
  justify-content: center;
}

#boxesBG:after {
  z-index: -1;
  content: '';
  position: absolute; 
 /*  top: 50;  */
/*   left: 0;  */
  width: 100%;
  height: 100%;
  transition: all .5s ease;
/*   background: var(--bg-color, #f44336); */
  opacity: .1;
}

#boxes {
  counter-reset: number;
  display: grid;
  grid-template-columns: repeat(3, 1fr);
}

@media (max-width: 320px) {
  #boxes {
    grid-template-columns: repeat(2, 1fr);
  }
}

#boxes div.btColor {
  counter-increment: number;
  width: 10vw;
  height: 10vw;
  min-width: 5em;
  min-height: 5em;
  transition: .5s all ease;
  background: var(--color, #aaa);
  border: 0 solid transparent;
  box-sizing: border-box;
  border-radius: 50%;
  margin: .5em;
  opacity: .7;
  --dx: calc(var(--size) - var(--x));
  --dy: calc(var(--size) - var(--y));
}

#boxesBG:not([style]) #boxes div.btColor:first-child {
  --x: 150;
  --y: 160;
  --size: 300;
}

#boxesBG:not([style]) #boxes div.btColor:first-child,
#boxes div.btColor:hover {
  opacity: 1;
  cursor: pointer;
  border: calc(2px + .85vw) solid rgba(255, 255, 255, .5);
  transition:
    .5s background-color ease,
    .2s border ease;

  border-radius:
    calc(var(--x) / var(--size) * 100%) 
    calc(var(--dx) / var(--size) * 100%)
    calc(var(--dx) / var(--size) * 100%) 
    calc(var(--x) / var(--size) * 100%) / 
    calc(var(--y) / var(--size) * 100%) 
    calc(var(--y) / var(--size) * 100%) 
    calc(var(--dy) / var(--size) * 100%) 
    calc(var(--dy) / var(--size) * 100%) 
}

#boxesBG:not([style]) #boxes div.btColor:first-child:after,
#boxes div.btColor:after {
  /*  content: counter(number);  */
  color: rgba(255, 255, 255, 0);
  font-size: calc(1vw + 1.2em);
  font-weight: 200;
  transition: all .2s ease;
  transition-delay: .1s;
  transform: translate3d(0, -.5em, 0);
}

#boxesBG:not([style]) #boxes div.btColor:first-child:after,
#boxes div.btColor:hover:after {
  color: rgba(255, 255, 255, .7);
  transform: translate3d(0, 0, 0);
}	
	

</style>

 
<div class="row">
	
			



</div>	  
       


 
 
<div class="row" style="margin-bottom:100px;">
	<div class="col-12 col-md-3"></div>
	<div class="col-12 col-md-6 text-center" >
	
	 <br>
		<div class="row mb-5 mt-3" id="mypageDiv" style="border: 2px solid black; background-color: white;" data-aos="zoom-in">
			<br><br>
			<!-- 헤드 시작 -->
			<div class="col-12 col-md-2 pt-5"></div>
			<div class="col-12 col-md-8 text-center pt-5" >
				 <h3>마 이 페 이 지</h3>
			</div>
			<div class="col-12 col-md-2 pt-5"></div>
				<br><br><Br>
			<!-- 헤드 시작 -->
			<div class="col-11 text-right mt-4 mb-4" >
				 <h5 style="display: inline;">[${ownerName}]</h5><span><small>&nbsp;사장님 반갑습니다</small></span>
			</div>
			<div class="col-12 col-md-1"></div>
				<br><br>
			
			<div class="col-12 text-center mt-4" style="margin-bottom:100px;" >
				<div id="boxesBG" >
					<div id="boxes" >
						<div class="btColor "style="--color: #e91e63; color:white; font-size:24px; display:none;">정보<br>수정</div>
						<div class="btColor mypage" style="--color: #e91e63; color:white; font-size:24px;" title="edit">정보<br>수정</div>
					    <div class="btColor mypage" style="--color: #9c27b0; color:white; font-size:24px;" title="agree">승인<br>현황</div>
					    <div class="btColor mypageAtag"  id="withdrawAtag" style="--color: #ff9800; color:white; font-size:24px;">회원<br>탈퇴</div>
					</div>
				</div>
			</div>
				
		</div> 
	</div>
	<div class="col-12 col-md-3"></div>

</div>	  
       
       
       <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
			<script>
				AOS.init();
			</script>
      
<%@ include file="../../ownerInc/bottom.jsp" %>