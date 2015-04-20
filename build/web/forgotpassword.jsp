<%-- 
    Document   : forgotpassword
    Created on : 17 Apr, 2015, 5:02:50 PM
    Author     : Abhishek Dey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>

<%@ include file="head.jsp" %>

<%@ include file="header1.jsp" %>
<%@ include file="slider.jsp" %>
<%@ include file="tabs1.jsp" %>
		
					<div class="tab-pane" id="tab-welcome">

<%@ include file="tab-welcome.jsp" %>
						</div>

<%@ include file="tab-reservation.jsp" %>

					<div class="tab-pane active" id="tab-login">
					
					<form method="post" action="RetrievePassword">
  						<div class="form-group">
  						<h6> Let Us Help Retrieving Your Password: </h6>
   						 <label for="loginid">Enter Your Username</label>
 						   <input type="text" name="loginid" class="form-control" id="loginid" placeholder="Username">
 						 </div>
                                                 
 					<div class="text-center">
 					 <button type="submit" class="btn btn-primary">Submit</button>
 					 </div>
					</form>




						</div>


<%@ include file="tab-signup.jsp" %>
<%@ include file="tab-feedback.jsp" %>
<%@ include file="footer1.jsp" %>
