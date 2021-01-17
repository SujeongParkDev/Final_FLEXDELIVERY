<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../adminInc/loginTop.jsp" %>

    
<!-- Admin Login Form start -->
   <form action="#" method="post">
       <div class="row">
 	      <div class="col-lg-3 col-md-3 align-self-center">
 	      
	           <div>
	               <div class="group">
	                   <input type="text" name="adminId" id="adminId" required>
	                   <span class="highlight"></span>
	                   <span class="bar"></span>
	                   <label>id</label>
	               </div>
	           </div>
	           
	           <div>
	               <div class="group">
	                   <input type="text" name="adminPwd" id="adminPwd" required>
	                   <span class="highlight"></span>
	                   <span class="bar"></span>
	                   <label>pwd</label>
	               </div>
	           </div>

	           
	           <div class="col-12">
	               <button type="submit" class="btn original-btn">로그인</button>
	           </div>
           </div>
       </div>
   </form>
<!-- Admin Login Form end -->
   
                        
<%@ include file="../../adminInc/bottom.jsp" %>
                        