<%-- 
    Document   : tab-login
    Created on : 29 Mar, 2015, 2:03:36 AM
    Author     : Abhishek Dey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">



					<div class="tab-pane" id="tab-login">
					
                                         <form method="post" action="Login">
  						<div class="form-group">
  						<h6>Login</h6>
   						 <label for="email">Email address</label>
 						   <input type="text" class="form-control" id="email" name="email" placeholder="example@domain.com">
 						 </div>
					     <div class="form-group">
   						 <label for="pswd">Password</label>
   						 <input type="password" class="form-control" id="pswd" name="pswd" placeholder="Password">
  						 </div>

 					<div class="text-center">
                                             <input type="submit" value="Login" name="sub1">
 					 <a href="forgotpassword.jsp">Forgot Password ?</a>
 					 <a href="signup.jsp">Don't Have an Account? Click Here To Sign-up</a>
 					 </div>
					</form>
						</div>

