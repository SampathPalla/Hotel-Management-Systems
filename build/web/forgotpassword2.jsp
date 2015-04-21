<%-- 
    Document   : forgotpassword
    Created on : 17 Apr, 2015, 5:02:50 PM
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
					

					<form method="post" action="RetrievePassword2">
  						<div class="form-group">
  						<h6>If You Input Correct Security Answer Then Your Password Will Be Updated To The New Password</h6>
   						 <label for="loginid">Username</label>
 						   <input type="text" name="loginid" class="form-control" id="loginid" placeholder="Username">
 						
 						 </div>
					    
  						
  						 <div class="form-group">
   						 <label for="question">Security Question</label>
   						  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                                    ${question}
                                                </div>
  						 <div class="form-group">
   						 <label for="answer">Security Answer</label>
   						 <input type="text" class="form-control" id="answer"name="answer" placeholder="Please Enter Your Security Answer">
  						 </div>
                                                   <div class="form-group">
   						 <label for="pswd">New Password</label>
   						 <input type="password" class="form-control" name="pswd" id="pswd" placeholder="New Password">
  						 </div>
  						
 					<div class="text-center">
 					 <button type="submit" class="btn btn-primary">Submit</button>
 					 </div>
					</form>
</div>




<%@ include file="tab-signup.jsp" %>
<%@ include file="tab-feedback.jsp" %>
<%@ include file="footer1.jsp" %>