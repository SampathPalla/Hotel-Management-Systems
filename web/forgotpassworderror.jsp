<%-- 
    Document   : forgotpassworderror
    Created on : 21 Apr, 2015, 11:03:28 AM
    Author     : VAIO
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
                                             <center><font color="blue">Your Security Answer Did Not Match Our Database!</font></center>
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