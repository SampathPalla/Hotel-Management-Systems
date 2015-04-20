<%-- 
    Document   : signup
    Created on : 17 Apr, 2015, 4:25:10 PM
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
<%@ include file="tab-login.jsp" %>

					<div class="tab-pane active" id="tab-signup">
					
					<form method="post" action="SignUp">
  						<div class="form-group">
  						<h6>Create Your Account</h6>
   						 <label for="loginid">Username</label>
 						   <input type="text" name="loginid" class="form-control" id="loginid" placeholder="Username">
 						 </div>
					     <div class="form-group">
   						 <label for="pswd">Password</label>
   						 <input type="password" class="form-control" name="pswd" id="pswd" placeholder="Password">
  						 </div>
  					
  						 <div class="form-group">
   						 <label for="question">Security Question</label>
   						 <input type="text" class="form-control" id="question" name="question" placeholder="Please Enter A Security Question">
  						 </div>
  						 <div class="form-group">
   						 <label for="answer">Security Answer</label>
   						 <input type="text" class="form-control" id="answer"name="answer" placeholder="Please Enter Your Security Answer">
  						 </div>
  						
 					<div class="text-center">
 					 <button type="submit" class="btn btn-primary">Submit</button>
 					 </div>
					</form>




						</div>

<%@ include file="tab-feedback.jsp" %>
<%@ include file="footer1.jsp" %>
