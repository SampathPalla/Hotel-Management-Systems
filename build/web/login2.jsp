<%-- 
    Document   : login2
    Created on : 17 Apr, 2015, 6:02:01 PM
    Author     : Abhishek Dey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<%@ include file="head.jsp" %>

<%@ include file="header1.jsp" %>
<%@ include file="slider.jsp" %>

<%@ include file="tabs1.jsp" %>
<%@ include file="tab-reservation.jsp" %>


					<div class="tab-pane active" id="tab-login">
					
                                         <form method="post" action="Login">
  						<div class="form-group">
                                                     <center>	<h6>Password Successfully Updated</h6></center>
                                                     
                                                 <h6>Login</h6>
   						 <label for="email">Email address</label>
 						   <input type="text" class="form-control" id="email" name="email" placeholder="example@domain.com">
 						 </div>
					     <div class="form-group">
   						 <label for="pswd">Password</label>
   						 <input type="password" class="form-control" id="pswd" name="pswd" placeholder="Password">
  						 </div>

 					<div class="text-center">
 				<!--	 <button type="submit" class="btn btn-primary">Submit</button> -->
                                 
                                 <br>
                                             <input type="submit" value="Login" name="sub1">
 					 <a href="forgotpassword.jsp">Forgot Password ?</a>
 					 <a href="signup.jsp">Don't Have an Account? Click Here To Sign-up</a>
 					 </div>
					</form>
						</div>


<%@ include file="tab-signup.jsp" %>
<%@ include file="tab-feedback.jsp" %>
<%@ include file="footer1.jsp" %>
