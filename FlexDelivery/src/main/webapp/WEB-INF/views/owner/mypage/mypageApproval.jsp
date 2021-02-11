<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../ownerInc/top.jsp" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>




<script type="text/javascript">
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


 
<div class="row" style="margin-bottom:130px;">
	<div class="col-12 col-md-3"></div>
	<div class="col-12 col-md-6 text-center" >
	
	 <br>
		<div class="row mb-5 mt-3" style="border: 2px solid black; ">
			<br><br>
			<!-- 헤드 시작 -->
			<div class="col-12 col-md-2 pt-5"></div>
			<div class="col-12 col-md-8 text-center pt-5" >
				 <h3>승인 현황 및 내 정보</h3>
			</div>
			<div class="col-12 col-md-2 pt-5"></div>
				<br><br><Br>
			<!-- 헤드 시작 -->
				<br><br>
			
			<div class="col-12 text-center mt-4 mb-5"  >
				<div id="boxesBG" >
					<div id="boxes" >
						<div class="btColor "style="--color: #e91e63; color:white; font-size:24px; display:none;"></div>
						<div class="btColor mypage" style="--color: #2196f3; color:white; font-size:24px;" title="myInfo">내정보</div>
					    <div class="btColor mypage" style="--color: #4caf50; color:white; font-size:24px;" title="myRegister"data-target="#info">사업자<br>등록증</div>
					    <div class="btColor mypage" style="--color: #ff9800; color:white; font-size:24px;" title="myStore" data-target="#info">점포</div>
					</div>
				</div>
			</div>
			
		</div> 
	</div>
	<div class="col-12 col-md-3"></div>

  



	<div class="col-12 col-md-3"></div>
	<div class="col-12 col-md-6 text-center p-0" >

				<div class="card" style="display: block;" id="info">
                    <div class="card-content">
                        <div class="card-body">
                            <h4 class="card-title" id="title">내정보</h4>
                            <div class="card-text" id="content">
                                <table>
                                	<tr>
                                		<td><span class='ml-4' style='float: left;'>회원 아이디</span><span class='mr-4' style='float: right;'>owner10</span><hr></td>
                                	</tr>
                                	<tr>
                                		<td><span class='ml-4' style='float: left;'>회원 이름</span><span class='mr-4' style='float: right;'>김지연</span><hr></td>
                                	</tr>
                                	<tr>
                                		<td><span class='ml-4' style='float: left;'>회원 전화번호</span><span class='mr-4' style='float: right;'>010-2524-3131</span><hr></td>
                                	</tr>
                                	
                                
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer d-flex justify-content-center" style="background-color:white;">
                       
                        <button class="btn btn-light-primary" style="background-color:rgb(182,73,197); color:white;">확인</button>
                    </div>
                </div>
			</div>
	<div class="col-12 col-md-3"></div>

</div>	  

<%@ include file="../../ownerInc/bottom.jsp" %>