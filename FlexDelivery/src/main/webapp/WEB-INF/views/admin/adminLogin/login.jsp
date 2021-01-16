<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../adminInc/top.jsp" %>

    
     <!-- Reply Form -->
                        <form action="#" method="post">
                            <div class="row">
                                <div class="col-6 col-md-6">
                                    <div class="group">
                                        <input type="text" name="adminId" id="adminId" required>
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>id</label>
                                    </div>
                                </div>
                                <div class="col-6 col-md-6">
                                    <div class="group">
                                        <input type="text" name="adminPwd" id="adminPwd" required>
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>pwd</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="group">
                                        <input type="text" name="subject" id="subject" required>
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>Subject</label>
                                    </div>
                                </div>
                                
                                <div class="col-12">
                                    <button type="submit" class="btn original-btn">Login</button>
                                </div>
                            </div>
                        </form>
                        
                        
<%@ include file="../../adminInc/bottom.jsp" %>
                        